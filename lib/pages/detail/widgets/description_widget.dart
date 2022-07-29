import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/shared/constants.dart';

class DescriptionWidget extends StatefulWidget {
  final String text;

  const DescriptionWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  bool isReadMore = true;

  Widget buildButton() {
    return InkWell(
      onTap: () {
        setState(() => isReadMore = !isReadMore);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: secondaryColor, width: 1),
        ),
        padding: const EdgeInsets.all(5),
        child: Text(
          isReadMore ? "Read Less" : "Read More",
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget buildText() {
    final maxLines = isReadMore ? null : 2;
    final overFlow = isReadMore ? TextOverflow.visible : TextOverflow.ellipsis;
    return Text(
      widget.text,
      maxLines: maxLines,
      overflow: overFlow,
      textAlign: TextAlign.left,
      style: const TextStyle(
        wordSpacing: 3,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildText(),
          const SizedBox(height: 5),
          Align(
            alignment: Alignment.centerRight,
            child: buildButton(),
          ),
        ],
      ),
    );
  }
}
