import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/model/coffe_model.dart';
import 'package:flutter_coffe_shop/shared/constants.dart';

class ButtonWidget extends StatelessWidget {

  final CoffeModel coffe;

  const ButtonWidget({Key? key, required this.coffe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Price", 
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Text("R\$${coffe.value.toStringAsFixed(2)}", 
              style: const TextStyle(
                fontSize: 20,
                color: secondaryColor,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.shopping_bag_rounded),
                SizedBox(width: 16),
                Text("Buy Now", 
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}