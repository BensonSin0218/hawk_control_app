enum Socket {
  twoWayCommunication(port: 1234),
  testing(port: 4321);

  const Socket({required this.port});

  final int port;

  String getURL(String ipAddress) => 'http://$ipAddress:$port';
}
