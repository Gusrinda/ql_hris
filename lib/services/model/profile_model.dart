class ProfileModel {
  String? imagePath;
  String? email;
  String? employeeId;
  String? name;
  String? phoneNumber;
  ProfileModel({
    this.imagePath,
    this.email,
    this.employeeId,
    this.name,
    this.phoneNumber,
  });

  factory ProfileModel.fromMap(Map<String, dynamic> json) => ProfileModel(
        imagePath: json["image_path"],
        email: json["email"],
        employeeId: json["employee_id"],
        name: json["name"],
        phoneNumber: json["phone_num"],
      );
}
