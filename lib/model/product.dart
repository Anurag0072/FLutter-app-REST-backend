class Product {
  String id;
  String cityname;
  String country;
  String image;
  String noofaffilation;
  String clubname;
  String location;
  String Contactno;

  Product({
    required this.id,
    required this.cityname,
    required this.country,
    required this.image,
    required this.noofaffilation,
    required this.clubname,
    required this.location,
    required this.Contactno,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        cityname: json['city name'],
        country: json['country'],
        image: json['image'],
        noofaffilation: json['no of affilation'],
        clubname: json['club name'],
        location: json['location'],
        Contactno: json['Contact no']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;

    data['city name'] = this.cityname;
    data['country'] = this.country;
    data['image'] = this.image;
    data['no of affilation'] = this.noofaffilation;
    data['club name'] = this.clubname;
    data['location'] = this.location;

    data['Contact no'] = this.Contactno;
    return data;
  }
}
