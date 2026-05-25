class MobilePhone {
  final String Brand;
  final String Model;
  final int basePrice;

  final int? ram;

  final int? storage;

  final int? cameraMP;

  final bool? has5G;

  final bool? hasWirelessCharging;

  final String? color;

  MobilePhone(
    this.Brand,
    this.Model,
    this.basePrice, {
    this.ram,
    this.storage,
    this.cameraMP,
    this.has5G,
    this.hasWirelessCharging,
    this.color,
  });
}

class MobilePhoneBuilder {
  final String Brand;
  final String Model;
  final int basePrice;

  int? _ram;

  int? _storage;

  int? _cameraMP;

  bool? _has5G;

  bool? _hasWirelessCharging;

  String? _color;

  MobilePhoneBuilder(this.Brand, this.Model, this.basePrice);

  MobilePhoneBuilder setRamSize(int ram) {
    _ram = ram;
    return this;
  }

  MobilePhoneBuilder setStorage(int storage) {
    _storage = storage;
    return this;
  }

  MobilePhone build() {
    return MobilePhone(Brand, Model, basePrice,
        ram: _ram,
        storage: _storage,
        cameraMP: _cameraMP,
        color: _color,
        has5G: _has5G,
        hasWirelessCharging: _hasWirelessCharging);
  }
}

void main() {
  MobilePhone Xaomi_note_11 =  MobilePhoneBuilder("Xaomi", 'Note 11', 52000).setRamSize(500).build();
  print(Xaomi_note_11);
}
