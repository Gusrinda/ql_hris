class AddCheckInOutModel {
  String? imagePath;
  String? address;
  bool? isOnSite;
  String? latitude;
  String? longitude;

  AddCheckInOutModel({
    this.imagePath,
    this.address,
    this.isOnSite,
    this.latitude,
    this.longitude,
  });

  AddCheckInOutModel copyWith({
    String? imagePath,
    String? address,
    bool? isOnSite,
    String? latitude,
    String? longitude,
  }) {
    return AddCheckInOutModel(
      imagePath: imagePath ?? this.imagePath,
      address: address ?? this.address,
      isOnSite: isOnSite ?? this.isOnSite,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}
