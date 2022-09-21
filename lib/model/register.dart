class Register {

  final String? MemberName;
  final String? MemberNumber;
  final String? EmailAddress;
  final String? MobileNumber;
  final String? Remarks;
  final String Message;
  const Register({
    required this.MemberName,
    required this.MemberNumber,
    required this.EmailAddress,
    required this.MobileNumber,
    required this.Remarks,
    required this.Message,
    
  });

  factory Register.fromJson(Map<String, dynamic> Json) {
    return Register(
      MemberName: Json['MemberName'],
      MemberNumber: Json['MemberNumber'],
      EmailAddress: Json['EmailAddress'],
      MobileNumber: Json['MobileNumber'],
      Remarks: Json['Remarks'],
      Message: Json['Message'],

    );
  }
}