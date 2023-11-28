import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            PaymentMethodsListView(),
            SizedBox(
              height: 16,
            ),
            CustomCreditCard(),
          ],
        ),
      ),
    );
  }
}
