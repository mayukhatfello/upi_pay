import 'package:decimal/decimal.dart';
import 'package:upi_pay/src/applications.dart';

class TransactionDetails {
  static const String _currency = 'INR';
  static const int _maxAmount = 100000;

  final UpiApplication upiApplication;
  final String? deepLinkUrl;

  TransactionDetails( {
    required this.upiApplication,
    required String this.deepLinkUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      'app': upiApplication.toString(),
      'deepLinkUrl': deepLinkUrl
    };
  }
}

bool _checkIfUpiAddressIsValid(String upiAddress) {
  return upiAddress.split('@').length == 2;
}
