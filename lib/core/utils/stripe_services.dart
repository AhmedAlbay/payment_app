

import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/utils/api_key.dart';
import 'package:payment_app/core/utils/api_service.dart';
import 'package:payment_app/features/checkout/data/model/payment_intent_input_model.dart';
import 'package:payment_app/features/checkout/data/model/payment_intent_model/payment_intent_model.dart';

class StripeServices {
  final ApiServices apiServices = ApiServices();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiServices.post(
      url: 'https://api.stripe.com/v1/payment_intents',
      body: paymentIntentInputModel.toJson(),
      contentType: Headers.formUrlEncodedContentType,
      token: ApiKey.secretKey,
    );
    var paymentInputModel = PaymentIntentModel.fromJson(response.data);
    return paymentInputModel;
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
   await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: paymentIntentClientSecret,
      merchantDisplayName: 'Ahmed',
    ));
  }

  Future displayPaymentSheet() async {
   await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentInputModel = await createPaymentIntent(paymentIntentInputModel);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentInputModel.clientSecret!);
    await displayPaymentSheet();
  }
}
