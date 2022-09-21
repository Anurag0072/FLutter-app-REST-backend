class pdf {


  final String? MemberNumber;
  final int year;
  final int month;


  const pdf({

    required this.MemberNumber,
    required this.year,
    required this.month,


  });

  factory pdf.fromJson(Map<String, dynamic> json) {
    return pdf(

      MemberNumber: json['MemberNumber'],
      year: json['year'],
      month: json['month'],

    );
  }
}