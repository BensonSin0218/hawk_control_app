import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as SocketIO;

// TODO
class ROSSocket {
  String ipAddress;
  int port = 1234;
  late SocketIO.Socket socket;
  bool connected = false;
  Map<String, dynamic> data = {};

  ROSSocket(this.ipAddress) {
    _connectSocket();
  }

  ROSSocket.withOtherPort(this.ipAddress, this.port) {
    _connectSocket();
  }

  void _connectSocket() {
    socket = SocketIO.io('http://$ipAddress:$port',
        SocketIO.OptionBuilder().setTransports(['websocket']).build());

    socket.onConnect((_) {
      debugPrint('Connected to $ipAddress');

      connected = true;
    });
    socket.onDisconnect((_) {
      debugPrint('Disconnected from $ipAddress');

      connected = false;
    });
  }

  bool get isConnected => connected;

  void subscribe(String topic) {}
  void unsubscribe(String topic) {}

  void emit(String topic, dynamic data) {}

  void callService(String service, dynamic request, Function callback) {}

  void dispose() => socket.dispose();
}
