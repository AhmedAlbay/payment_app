import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          decoration: ShapeDecoration(
            color: const Color(0xFFD9D9D9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.sizeOf(context).height * .2 + 20,
          right: 16 + 20,
          left: 16 + 20,
          child: Row(
            children: List.generate(
                25,
                (index) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Container(
                          color: const Color(0xFFB7B7B7),
                          height: 2,
                        ),
                      ),
                    )),
          ),
        ),
        Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            )),
        Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            )),
        const Positioned(
          top: -50,
          left: 0,
          right: 0,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xFFD9D9D9),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xff34A853),
              child: Icon(
                Icons.check,
                size: 50,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
