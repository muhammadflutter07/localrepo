class SmartDevice {
  final String _deviceId;
  bool _isOn = false;

  SmartDevice(this._deviceId);

  void turnOn() {
    _isOn = true;
    print('Device $_deviceId is on');
  }

  void turnOff() {
    _isOn = false;
    print('Device $_deviceId is OFF');
  }

  bool get isOn => _isOn;
  String get deviceId => _deviceId;

  void connectdevice(SmartDevice device) {
    if (this._isOn && device._isOn) {
      print('$_deviceId connected to ${device._deviceId}');
    } else {
      print('Connection failed (both device must be on)');
    }
  }
}

class SmartPhone extends SmartDevice {
  int _batterylevel = 100;

  SmartPhone(String deviceId) : super(deviceId);

  void charge(int amount) {
    _batterylevel += amount;

    if (_batterylevel > 100) {
      _batterylevel = 100;
    }
    print('Battery charged $_batterylevel%');
  }

  void useApp(String Appname) {
    if (_batterylevel < 10) {
      print('cannot use $Appname. battery too low ($Appname%)');
      return;
    }
    _batterylevel -= 10;
    print('using $Appname | Battery $_batterylevel%');
  }

  int get Batterylevel => _batterylevel;
}

class smartwatch extends SmartDevice {
  int _stepcount = 0;

  smartwatch(String deviceId) : super(deviceId);

  void walk(int steps) {
    if (steps > 0) {
      _stepcount += steps;
      print('steps added: $steps | total: $_stepcount');
    }
  }

  void resetsteps() {
    _stepcount = 0;
    print('steps reset');
  }

  int get count => _stepcount;
}

void main() {
  SmartPhone phone = SmartPhone('phone 1');
  smartwatch watch = smartwatch('watch 1');

  phone.turnOn();
  phone.turnOff();

  phone.useApp('youtube');
  phone.useApp('Instagram');

  watch.walk(1200);
  watch.walk(800);

  phone.connectdevice(watch);

  watch.resetsteps();
}
