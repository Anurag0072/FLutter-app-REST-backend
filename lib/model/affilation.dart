
class Affilation {


  final String cityname;
  final String clubname;
  final String Address;
  final String contactno;
  final String website;
  final String Mail;

  const Affilation({
    required this.cityname,
    required this.clubname,
    required this.Address,
    required this.contactno,
    required this.Mail,
    required this.website,


  });

  factory Affilation.fromJson(Map<String, dynamic> json) {
    return Affilation(
      cityname: json['cityname'],
      clubname: json['clubname'],
      Address: json['Address'],
      contactno: json['contactno'],
      Mail: json['Mail'],
      website: json['website'],


    );
  }
}