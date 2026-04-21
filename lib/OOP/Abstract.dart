abstract class SmartDevice {
  void turnoff();
  void turnon();
}

class SmartPhone extends SmartDevice {
  @override
  void turnon() {
    print('Smart phone ON');
  }

  @override
  void turnoff() {
    print('Smart phone off');
  }
}

class laptop extends SmartDevice {
  @override
  void turnon() {
    print('MY laptop is on');
  }

  @override
  void turnoff() {
    print('my laptop is off now');
  }
}

void main() {
  SmartPhone phone = SmartPhone();
  laptop laptop1 = laptop();

  phone.turnon();
  phone.turnoff();

  laptop1.turnon();
  laptop1.turnoff();
}
