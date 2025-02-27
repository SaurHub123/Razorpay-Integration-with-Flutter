import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorpayPaymentScreen extends StatefulWidget {
  @override
  _RazorpayPaymentScreenState createState() => _RazorpayPaymentScreenState();
}

class _RazorpayPaymentScreenState extends State<RazorpayPaymentScreen> {
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    _razorpay.clear(); 
    super.dispose();
  }

  void openCheckout() {
    var options = {
        "key":"rzp_test_YouRraZorPayKey",
         "order_id": "order_Q0pfdXdiC0eaiG",
        "amount": 10000,
        "name": "SELECT-SPORTS",
        "description": "Payment for Slot #b9fe83b2-fa0c-430f-8093-8e68a3b87912",
        "prefill": {
            "contact": "8923456783",
            "email": "Saurabh@user.com"
        },
        "external": {
            "wallets": [
                "paytm"
            ]
        }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Payment Successful: ${response.paymentId}")),
    );

    print("Payment Successfull");
    print(response.data);
    print(response.orderId);
    print(response.paymentId);
    print(response.signature);

  }

  void _handlePaymentError(PaymentFailureResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Payment Failed: ${response.message}")),
    );
    print("Payment Got Error");
    print(response);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text("External Wallet Selected: ${response.walletName}")),
    );
        print("Payment in External wallet");
    print(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Razorpay Payment')),
      body: Center(
        child: ElevatedButton(
          onPressed: openCheckout,
          child: Text('Pay Now'),
        ),
      ),
    );
  }
}
