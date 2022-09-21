class Change {

  final String MemberNumber;
  final String NewPassword;

  const Change({
    required this.MemberNumber,
    required this.NewPassword,

  });

  factory Change.fromJson(Map<String, dynamic> Json) {
    return Change(
      MemberNumber: Json['MemberNumber'],
      NewPassword: Json['NewPassword'],


    );
  }
}