#include <algorithm>
#include <deque>
#include <iostream>
#include <numeric>
#include <ros/ros.h>

using namespace std;

class Kalman {
  public:
    Kalman();

    // meaFilterValue: measured signal value,  refFilterValue: Reference signal
    // value.
    float getFilterValue(float refFilterValue, float meaFilterValue,
                         float dq_value);

    // Used to set FilterValue, this should be set as the starting FilterValue.
    void setFilterValue(float FilterValue);

    // Return the unbiased rate.
    float getUnbiasedRate();

    /* These are used to tune the Kalman filter */
    void setQFilter(float Q_FilterValue);

    /**
     * setQbias(float Q_bias)
     * Raise this to follow input more closely,
     * lower this to smooth result of kalman filter.
     */
    void setQbias(float Q_bias);
    void setRmeasure(float R_measure);

    float getQFilterValue();
    float getQbias();
    float getRmeasure();

  private:
    /* Kalman filter variables */
    // Process noise variance
    float Q_FilterValue;

    // Process noise variance for the gyro bias
    float Q_bias;
    // Measurement noise variance - this is actually the variance of the
    // measurement noise
    float R_measure;

    // The FilterValue calculated by the Kalman filter - part of the 2x1 state
    // vector
    float FilterValue;

    // The gyro bias calculated by the Kalman filter - part of the 2x1 state
    // vector
    float bias;

    // Unbiased rate calculated from the rate and the calculated bias - you have
    // to call getFilterValue to update the rate
    float rate;

    // Error covariance matrix - This is a 2x2 matrix
    float P[2][2];

    float PP;
    deque<float> q1;
};

Kalman::Kalman() {
    Q_FilterValue = 1.001f;
    Q_bias = 0.003f;
    R_measure = 0.1f;
    // float R_measure;

    // Reset the filtervalue
    FilterValue = 0.0f;
    // Reset the bias
    bias = 0.0f;

    // Since we assume that the bias is 0 and we know the starting FilterValue
    // (use setFilterValue()), the error covariance matrix is set like so
    P[0][0] = 0.0f;
    P[0][1] = 0.0f;
    P[1][0] = 0.0f;
    P[1][1] = 0.0f;
};

float Kalman::getFilterValue(float refFilterValue, float meaFilterValue,
                             float dq_value) {

    q1.push_front(dq_value);

    if (q1.size() > 20) {
        q1.pop_back();
    }

    double q_n = q1.size();
    // cout << "q_n : " << q_n << endl;
    float sum = std::accumulate(std::begin(q1), std::end(q1), 0);
    // cout << "sum-----------" << sum << endl;
    // caculate the mean of 10 num
    float mean = sum / q_n;
    float accum = 0.0;

    std::for_each(q1.begin(), q1.end(), [&](const float val1) {
        accum += (val1 - mean) * (val1 - mean);
    });

    // cout << "accum: -------" << accum << endl;
    PP = (accum / q_n); // P
    // cout << "P: " << PP << endl;

    // Discrete Kalman filter time update equations - Time Update ("Predict")
    // Update xhat - Project the state ahead
    /* Step 1 */
    rate = meaFilterValue - bias;
    FilterValue = rate;

    // Update estimation error covariance - Project the error covariance ahead
    /* Step 2 */
    P[0][0] += PP + Q_FilterValue;
    // P[0][1] = P[0][1];
    // P[1][0] = P[1][0];
    // P[1][1] += Q_bias;

    // Discrete Kalman filter measurement update equations - Measurement Update
    // ("Correct") Calculate Kalman gain - Compute the Kalman gain
    /* Step 4 */
    float S = P[0][0] + R_measure; // Estimat error

    /* Step 5 */
    float K[2]; // Kalman gain - This is a  2x1 vector
    K[0] = P[0][0] / S;
    // K[1] = P[1][0] / S;
    // cout << "k_gain : " << K[0] << endl;

    // Calculate yawrate and bias - Update estimate with measurement zk
    /* Step 3 */
    float y = refFilterValue - FilterValue; // FilterValue difference

    /* Step 6 */
    FilterValue += K[0] * y;
    // bias += K[1] * y;

    // Calculate estimation error covariance - Update the error covariance
    /* Step 7 */
    float P00_temp = P[0][0];
    // float P01_temp = P[0][1];

    P[0][0] -= K[0] * P00_temp;
    // P[0][1] -= K[0] * P01_temp;
    // P[1][0] -= K[1] * P00_temp;
    // P[1][1] -= K[1] * P01_temp;

    return FilterValue;
};

void Kalman::setFilterValue(float FilterValue) {
    this->FilterValue = FilterValue;
};
float Kalman::getUnbiasedRate() { return this->rate; };

/* These are used to tune the Kalman filter */
void Kalman::setQFilter(float Q_FilterValue) {
    this->Q_FilterValue = Q_FilterValue;
};
void Kalman::setQbias(float Q_bias) { this->Q_bias = Q_bias; };
void Kalman::setRmeasure(float R_measure) { this->R_measure = R_measure; };

float Kalman::getQFilterValue() { return this->Q_FilterValue; };
float Kalman::getQbias() { return this->Q_bias; };
float Kalman::getRmeasure() { return this->R_measure; };