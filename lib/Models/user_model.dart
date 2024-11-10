class UserModel {
  final String title;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  //kkkkllll
  //djgdhfhgdfghdfgh
  final String picture;
//second
  UserModel({
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.picture,
  });

  // Factory constructor to create a UserModel from JSON
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      title: json['name']['title'] as String,
      firstName: json['name']['first'] as String,
      lastName: json['name']['last'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      picture: json['picture']['medium'] as String,
    );
  }

  // Static method to handle a list of users from JSON
  static List<UserModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((userJson) => UserModel.fromJson(userJson)).toList();
  }
}