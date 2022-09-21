
class Post {

  //final int? MemberId ;
  final String clubname;
  final String Address;
  final String cityname;
  final String contactno;
  final String website;
  final String Mail;

  const Post({
    required this.clubname,
    required this.Address,
    required this.cityname,
    required this.contactno,
    required this.Mail,
    required this.website,


  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      clubname: json['clubname'],
      Address: json['Address'],
      cityname: json['cityname'],
      contactno: json['contactno'],
      Mail: json['Mail'],
      website: json['website'],


    );
  }
}