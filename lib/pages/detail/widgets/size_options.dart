import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/shared/constants.dart';

class SizeOptions extends StatefulWidget {
  final Function(double) onSizeTaped;

  const SizeOptions({
    Key? key,
    required this.onSizeTaped,
  }) : super(key: key);

  @override
  State<SizeOptions> createState() => _SizeOptionsState();
}

class _SizeOptionsState extends State<SizeOptions> {
  int sizeOption = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
            setState(() => sizeOption = 0);
            widget.onSizeTaped(170);
          },
          child: Container(
            decoration: BoxDecoration(
              color: sizeOption == 0
                  ? primaryColor
                  : secondaryColor.withOpacity(0.8),
              border: sizeOption == 0
                  ? Border.all(color: secondaryColor, width: 2)
                  : null,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 8,
            ),
            child: const Text(
              "Small",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() => sizeOption = 1);
            widget.onSizeTaped(200);
          },
          child: Container(
            decoration: BoxDecoration(
              color: sizeOption == 1
                  ? primaryColor
                  : secondaryColor.withOpacity(0.8),
              border: sizeOption == 1
                  ? Border.all(color: secondaryColor, width: 2)
                  : null,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 8,
            ),
            child: const Text(
              "Medium",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() => sizeOption = 2);
            widget.onSizeTaped(250);
          },
          child: Container(
            decoration: BoxDecoration(
              color: sizeOption == 2
                  ? primaryColor
                  : secondaryColor.withOpacity(0.8),
              border: sizeOption == 2
                  ? Border.all(color: secondaryColor, width: 2)
                  : null,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 8,
            ),
            child: const Text(
              "Large",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
