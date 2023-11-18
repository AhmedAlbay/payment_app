
  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/utils/styles.dart';

AppBar buildAppBar({required String title }) {
    return AppBar(
      leading: Center(child: SvgPicture.asset("assets/images/Arrow 1.svg")),
      centerTitle: true,
      elevation: 0,

      backgroundColor: Colors.transparent,
      title:  Text(title,
          textAlign: TextAlign.center, style: Styles.style25),
    );
  }