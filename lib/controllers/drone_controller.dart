import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socket_io_client/socket_io_client.dart' as SocketIO;

class DroneController extends GetxController {
  late SocketIO.Socket socket;

  RxString ipAddress = ''.obs;

  void connectToDrone() {
    debugPrint(ipAddress.value);

    socket = SocketIO.io('http://${ipAddress.value}:1234',
        SocketIO.OptionBuilder().setTransports(['websocket']).build());
    socket.onConnect((_) {
      debugPrint('Connected!');

      socket.emit('subscribe', {'topic': 'talker'});
    });
    socket.onDisconnect((_) => debugPrint('Disconnected!'));
    socket.on('talker', (data) => debugPrint('talker'));
  }
}
