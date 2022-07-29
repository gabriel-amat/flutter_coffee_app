import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/shared/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const CircleAvatar(
            radius: 18,
            backgroundColor: primaryColor,
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
        const CircleAvatar(
          radius: 18,
          backgroundColor: primaryColor,
          child: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: 18,
          ),
        )
      ],
    );
  }
}
