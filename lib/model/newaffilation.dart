class AffilationNew {

  //final int? MemberId ;
  final String cityname;
  final String clubname;
  final String Address;
  final String contactno;
  final String website;
  final String Mail;

  const AffilationNew({
    required this.cityname,
    required this.clubname,
    required this.Address,
    required this.contactno,
    required this.Mail,
    required this.website,


  });

  factory AffilationNew.fromJson(Map<String, dynamic> json) {
    return AffilationNew(
      cityname: json['cityname'],
      clubname: json['clubname'],
      Address: json['Address'],
      contactno: json['contactno'],
      Mail: json['Mail'],
      website: json['website'],


    );
  }
}