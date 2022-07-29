import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/shared/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 120,
          width: 120,
          padding: const EdgeInsets.only(right: 50),
          decoration: const BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(250),
            ),
          ),
          child: const Icon(
            Icons.menu_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
        Container(
          width: 35,
          height: 35,
          margin: const EdgeInsets.only(right: 16),
          decoration: const BoxDecoration(
            color: primaryColor,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
