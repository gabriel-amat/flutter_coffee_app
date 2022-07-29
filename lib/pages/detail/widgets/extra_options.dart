import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/model/coffe_extra_mode.dart';
import 'package:flutter_coffe_shop/shared/constants.dart';

class ExtraOptions extends StatelessWidget {
  final List<CoffeExtraModel> extras;

  const ExtraOptions({Key? key, required this.extras}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Add extra",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 100,
            child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: extras.length,
              itemBuilder: (_, i) {
                return SizedBox(
                  width: 120,
                  child: Card(
                    elevation: 5,
                    clipBehavior: Clip.none,
                    color: secondaryColor.withOpacity(0.8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: -20,
                          left: 0,
                          right: 0,
                          child: Image.network(
                            extras[i].imageUrl,
                            height: 60,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "${extras[i].name}\n\$${extras[i].value}",
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.add_circle_outline_rounded,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
