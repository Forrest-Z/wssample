//#ifndef KAERMAN_H_
//#define KAERMAN_H_
#include <deque>
#include <iostream>
#include <numeric>
#include <ros/ros.h>

using namespace std;

// 1-D filter information structure
typedef struct {
    double filterValue; // Filter value at k-1 time
    double kalmanGain;
    double A; // x(n)=A*x(n-1)+u(n),u(n)~N(0,Q)
    double H; // z(n)=H*x(n)+w(n),w(n)~N(0,R)
    double Q; // Predict the variance of the process noise deviation
    double R; // Measurement noise deviation
    double P; // Estimated error covariance
} KalmanInfo;

void Init_KalmanInfo(KalmanInfo *info, double Q, double R) {

    info->A = 1;
    info->H = 1;
    info->P = 10;
    info->Q = Q;
    info->R = R;
    info->filterValue = 0;
}
double KalmanFilter(KalmanInfo *kalmanInfo, double lastMeasurement) {
    /*
    //caculate dynamic R
    deque<double> q1;
    for(int i=0; i<20000; i++){
        q1.push_back(lastMeasurement);
    }
    for(deque<double>::iterator it = q1.begin(); it !=q1.end();it++)
    {
        cout << "Q::"<<*it<<endl;
    }
    //q1.push_back(kalmanInfo->filterValue);
    double q_n = q1.size();
    //cout << "q_n: " << q_n << endl;
    if(q_n >= 20000)
    {
        q1.push_back(lastMeasurement);
        q1.pop_front();
    }

    double sum = accumulate(std::begin(q1), std::end(q1), 0);
    cout << "sum-----------" << sum << endl;
    double mean = sum / q_n; // caculate the mean of 10 num
    double accum = 0.0;
    std::for_each (std::begin(q1), std::end(q1), [&](const double d){
        accum += (d-mean)*(d-mean);
    });
    cout << "accum: -------" << accum << endl;
    kalmanInfo->R = (accum / q_n); // R variance
    cout << "R: " << kalmanInfo->R << endl;
    */

    // Predict the value of the next moment
    // The prior estimate of x is given by the posterior estimate
    // at the previous time point and the input information
    double predictValue = kalmanInfo->A * kalmanInfo->filterValue;

    // Covariance
    // Calculate the prior mean square error
    kalmanInfo->P =
        kalmanInfo->A * kalmanInfo->A * kalmanInfo->P + kalmanInfo->Q;

    // Record the last actual value
    double preValue = kalmanInfo->filterValue;

    // Kg(k)= P(k|k-1) H’ / (H P(k|k-1) H’ + R)
    kalmanInfo->kalmanGain =
        kalmanInfo->P * kalmanInfo->H /
        (kalmanInfo->P * kalmanInfo->H * kalmanInfo->H + kalmanInfo->R);

    // Correct the result, calculate the filter value
    kalmanInfo->filterValue = predictValue + (lastMeasurement - predictValue) *
                                                 kalmanInfo->kalmanGain;

    // Update posterior estimate
    // Calculate the posterior mean square error
    // P[n|n]=(1-K[n]*H)*P[n|n-1]
    kalmanInfo->P =
        (1 - kalmanInfo->kalmanGain * kalmanInfo->H) * kalmanInfo->P;

    return kalmanInfo->filterValue;
}
//#endif
