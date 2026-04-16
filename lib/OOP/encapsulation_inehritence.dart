class SmartDevice {
  final String _deviceId;
  bool _isOn = SmartDevice(this._deviceId);

  void turnOn() {
    _isOn = true;
    print('Device $_deviceId is on');
  }

  void turnOff() {
    _isOn = false;
    print('Device $_deviceId is OFF');
  }
}
