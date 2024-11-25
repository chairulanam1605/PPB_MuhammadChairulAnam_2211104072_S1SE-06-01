class Mahasiswa {
  int? id;
  String name;
  String nim;
  String address;
  String hobby;

  Mahasiswa(
      {this.id,
      required this.name,
      required this.nim,
      required this.address,
      required this.hobby});

  // Konversi dari Map ke Object Mahasiswa
  factory Mahasiswa.fromMap(Map<String, dynamic> map) {
    return Mahasiswa(
      id: map['id'],
      name: map['name'],
      nim: map['nim'],
      address: map['address'],
      hobby: map['hobby'],
    );
  }

  // Konversi dari Object Mahasiswa ke Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'nim': nim,
      'address': address,
      'hobby': hobby,
    };
  }
}
