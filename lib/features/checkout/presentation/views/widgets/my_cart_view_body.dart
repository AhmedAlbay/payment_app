import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/widgets/order_info_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Image.asset("assets/images/basket_image.png"),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(title: "Order Subtotal", value: r'42.97$'),
          const SizedBox(
            height: 5,
          ),
          const OrderInfoItem(title: "Discount", value: r'0$'),
          const SizedBox(
            height: 5,
          ),
          const OrderInfoItem(title: "Shipping", value: r'8$'),
          const SizedBox(
            height: 17,
          ),
        ],
      ),
    );
  }
}
