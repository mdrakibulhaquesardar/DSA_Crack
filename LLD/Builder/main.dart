class ComputerBuilder {
  final String _cpu;
  final int _ram;
  final int _storage;

  String? _gpu;
  bool? _wifi;
  bool? _bluetooth;

  ComputerBuilder(this._cpu, this._ram, this._storage);

  ComputerBuilder setGpu(String gpu) {
    _gpu = gpu;
    return this;
  }

  ComputerBuilder enableWifi() {
    _wifi = true;
    return this;
  }

  ComputerBuilder enableBluetooth() {
    _bluetooth = true;
    return this;
  }

  Computer build() {
    return Computer(
      _cpu,
      _ram,
      _storage,
      gpu: _gpu,
      wifi: _wifi,
      bluetooth: _bluetooth,
    );
  }
}

class Computer {
  final String cpu;
  final int ram;
  final int storage;

  final String? gpu;
  final bool? wifi;
  final bool? bluetooth;

  Computer(
    this.cpu,
    this.ram,
    this.storage, {
    this.gpu,
    this.wifi,
    this.bluetooth,
  });
}

void main() {
  Computer computer = ComputerBuilder('I7', 5, 3).setGpu('RTX').build();
  print(computer.gpu);
}
