import 'dart:core';

bool isIPAddress(String input) {
  var bytes = input.split('.');

  if (bytes.length != 4) return false;

  for (var byte in bytes) {
    int b = int.parse(byte);
    if (b < 0 || b > 255) return false;
  }

  return true;
}
