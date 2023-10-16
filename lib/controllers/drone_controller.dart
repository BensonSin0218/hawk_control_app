import 'package:flutter/material.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:get/get.dart';
import 'package:hawk_control_app/data/enums/rtsp_stream.dart';
import 'package:socket_io_client/socket_io_client.dart' as SocketIO;

class DroneController extends GetxController {
  late SocketIO.Socket socket;
  late VlcPlayerController vlcPlayerController;

  RxString ipAddress = ''.obs;

  @override
  void dispose() async {
    await vlcPlayerController.stopRendererScanning();
    await vlcPlayerController.dispose();

    super.dispose();
  }

  void connectToDrone() {
    debugPrint('Connection to ${ipAddress.value}');

    _connectSocket();
    _connectRTSPStream();
  }

  void _connectSocket() {
    socket = SocketIO.io('http://${ipAddress.value}:1234',
        SocketIO.OptionBuilder().setTransports(['websocket']).build());
    socket.onConnect((_) {
      debugPrint('Connected!');

      socket.emit('subscribe', {'topic': 'talker'});
    });
    socket.onDisconnect((_) => debugPrint('Disconnected!'));
    socket.on('talker', (data) => debugPrint('talker'));
  }

  void _connectRTSPStream() {
    vlcPlayerController = VlcPlayerController.network(
        RTSPStream.color.getURL(ipAddress.value),
        autoPlay: true);
  }
}
