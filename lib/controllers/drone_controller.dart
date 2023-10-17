import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:get/get.dart';
import 'package:hawk_control_app/classes/drone.dart';
import 'package:hawk_control_app/data/enums/rtsp_stream.dart';
import 'package:hawk_control_app/data/enums/socket.dart';
import 'package:socket_io_client/socket_io_client.dart' as SocketIO;

class DroneController extends GetxController {
  late SocketIO.Socket socket;
  late VlcPlayerController vlcPlayerController;

  RxString ipAddress = ''.obs;
  Rx<Drone> drone = Drone().obs;

  @override
  void dispose() async {
    await vlcPlayerController.stopRendererScanning();
    await vlcPlayerController.dispose();

    super.dispose();
  }

  void connectToDrone() {
    _connectSocket();
    _connectRTSPStream();
  }

  void _connectSocket() {
    socket = SocketIO.io(Socket.twoWayCommunication.getURL(ipAddress.value),
        SocketIO.OptionBuilder().setTransports(['websocket']).build());

    socket.onConnect((_) => drone.update((val) => val?.connected = true));

    socket.onDisconnect((_) => drone.update((val) => val?.connected = false));
  }

  void _connectRTSPStream() {
    vlcPlayerController = VlcPlayerController.network(
        RTSPStream.color.getURL(ipAddress.value),
        autoPlay: true);
  }
}
