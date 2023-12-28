class AddCheckInOutModel {
  String? imagePath;
  String? address;
  bool? isOnSite;
  String? latitude;
  String? longitude;
  String? catatan;

  AddCheckInOutModel({
    this.imagePath,
    this.address,
    this.isOnSite,
    this.latitude,
    this.longitude,
    this.catatan
  });

  AddCheckInOutModel copyWith({
    String? imagePath,
    String? address,
    bool? isOnSite,
    String? latitude,
    String? longitude,
    String? catatan
  }) {
    return AddCheckInOutModel(
      imagePath: imagePath ?? this.imagePath,
      address: address ?? this.address,
      isOnSite: isOnSite ?? this.isOnSite,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      catatan: catatan ?? this.catatan
    );
  }
}
