
class TransactionHistory {

  final String ReferenceNo ;
  final String Amount;
  final String TransactionDate;
  final String TransactionStatus;
  final String TransactionId;

  final String ReceiptNo;
  final bool Status ;
  final String TransactionDescription;


   TransactionHistory({
    required this.ReferenceNo,
    required this.Amount,
    required this.TransactionDate,
    required this.TransactionStatus,
    required this.TransactionId,

    required this.ReceiptNo,
    required this.Status,
    required this.TransactionDescription,

  });

  factory TransactionHistory.fromJson(Map<String, dynamic> json) {
    return TransactionHistory(
      ReferenceNo: json['ReferenceNo'],
      Amount: json['Amount'],
      TransactionDate: json['TransactionDate'],
      TransactionStatus: json['TransactionStatus'],
      TransactionId: json['TransactionId'],

      ReceiptNo: json['ReceiptNo'],
      Status: json['Status'],
      TransactionDescription: json['TransactionDescription'],


    );
  }
}