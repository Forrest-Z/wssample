# point has no Header

int32 lock_down_index
int32 pt_index

float64 x
float64 y 
float64 z

float64 roll
float64 pitch
float64 yaw
float64 kalman_yawrate

float64 kalman_vx
float64 acceleration

# teledrive, share gear, xbr
float64 steer
float64 throttle_percentage
float64 xbr
int8 gear

uint8 left_light
uint8 right_light
#uint8 emergency_light
uint8 air_beep

float64 time_to_last_point
float64 current_lat_error
float64 current_lng_error
bool flag_lock_down_index_offload