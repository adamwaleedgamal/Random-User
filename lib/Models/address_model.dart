class AddressModel {
  final String street;
  final String city;
  final String state;
  final String country;
  final String postcode;

  AddressModel({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      street: '${json['street']['number']} ${json['street']['name']}',
      city: json['city'],
      state: json['state'],
      country: json['country'],
      postcode: json['postcode'],
    );
  }
}