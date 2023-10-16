enum RTSPStream {
  color(path: 'streaming/color'),
  depth(path: 'streaming/depth');

  const RTSPStream({required this.path});

  static int port = 8554;
  final String path;

  String get getPath => '$port/$path';
  String getURL(String ipAddress) => 'rtsp://$ipAddress:$port/$path';
}
