
var ros = new ROSLIB.Ros();
var rosbridgePort = "9090";
var rosbridgeHost = document.location.hostname;
var serverURL = "ws://" + rosbridgeHost + ":" + rosbridgePort;
var param_ns = '/robot_gui';

function init_ros() {
    ros.connect(serverURL);
}

ros.on('error', function (error) {
    console.log(error);
  });

  ros.on('connection', function () {
    console.log('连接成功');
  });

  ros.on('close', function () {
    console.log('连接失败');
  });

//   发送消息
function pubChatter(rate) {
    var message = document.getElementById('chatterMessage');

    var chatter = new ROSLIB.Topic({
    	ros : ros,
    	name : '/chatter',
    	messageType : 'std_msgs/String',
    	throttle_rate: 1
    });

    var msg = new ROSLIB.Message({
    	data : message.value
    });

    chatter.publish(msg);
}

function refreshPublishers() {
    var pubChatterOn = $("#pubChatterButton").jqxToggleButton('toggled');
    if (pubChatterOn) pubChatter();

    pubCmdVel();
}