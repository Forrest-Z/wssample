// 设置rosbridge和mjpegPort服务器端口
var rosbridgePort = "9090";
var mjpegPort = "8080";

// 获取当前主机名
thisHostName = document.location.hostname;

// 相应地设置rosbridge和mjpegPort服务器主机名
var rosbridgeHost = thisHostName;
var mjpegHost = thisHostName;

// 建立rosbride服务器的websocket URL
var serverURL = "ws://" + rosbridgeHost + ":" + rosbridgePort;

// 稍后将定义的mjpeg客户机对象
var mjpegViewer;

// 默认视频主题（可以在rosbridge启动文件中设置）
var videoTopic = "/camera/rgb/image_raw";

// mjpeg 视频质量
var videoQuality = 50;

// 包含此脚本参数的ROS命名空间
var param_ns = '/robot_gui';

// Get the current window width and height
// 获取窗口宽高
var windowWidth = this.window.innerWidth;
var windowHeight = this.window.innerHeight;

// 设置视频窗口的宽高
// var videoWidth = Math.round(windowWidth / 2.0);
var videoWidth = Math.round(800);
var videoHeight = Math.round(videoWidth * 240 / 320);

//The main ROS object
var ros = new ROSLIB.Ros();

// Connect to ROS
// 连接ros
function init_ros() {
	// server websocket URL
	ros.connect(serverURL);
}

// 发生错误打印错误
ros.on('error', function(error) {
	console.log("Rosbridge Error: " + error);
});

// 连接完成,执行
ros.on('connection', function() {
	console.log('Rosbridge connected.');

	// Create a Param object for the video topic
	var videoTopicParam = new ROSLIB.Param({
		ros : ros,
		name : param_ns + '/videoTopic'
	});

	videoTopicParam.get(function(value) {
	    if (value != null) {
		videoTopic = value;
	    }
		
	    // Create the video viewer
	    if (!mjpegViewer) {
		mjpegViewer = new MJPEGCANVAS.Viewer({
		    divID : 'videoCanvas',
		    host : mjpegHost,
		    port : mjpegPort,
		    width : videoWidth,
		    height : videoHeight,
		    quality : videoQuality,
		    topic : videoTopic
		});
	    }
	});

});

// // gear
// var oligay = { gear: 0 };
//     // 临时保存
//     var temGear = oligay.watchValue;

//     Object.defineProperty(oligay, 'gear', {
//       get: function () {
//         return gear;
//       },
//       set: function (value) {
//         gear = value;
//         if (temGear != gear) {
//           temGear = gear;
//           console.log("档位发生变化:" + gear);
//           if (gear == -1) {
//             console.log("正在倒车");
//           } else {
//             console.log("未倒车");
//           }
//         }
//       }
// 	});
	
// 	var listener = new ROSLIB.Topic({
// 		ros: ros,
// 		name: '/oligay/chassis/rx/state_highspeed',
// 	  });
// 	  let gearP = document.getElementById("gear");
// 	  // function listen() {
// 	  listener.subscribe(function (message) {
// 		oligay.gear = message.gear
// 		gearP.innerHTML = message.gear
// 	  });