import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/model/coffe_model.dart';
import 'package:flutter_coffe_shop/pages/detail/detail_page.dart';
import 'package:flutter_coffe_shop/shared/constants.dart';
import 'package:simple_shadow/simple_shadow.dart';

class ListWidget extends StatelessWidget {
  final List<CoffeModel> coffes;

  const ListWidget({
    Key? key,
    required this.coffes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: coffes.length,
        clipBehavior: Clip.none,
        itemBuilder: (_, i) {
          var tag = "image$i";
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => DetailPage(
                        coffe: coffes[i],
                        tag: tag,
                      )),
                ),
              );
            },
            child: Hero(
              tag: tag,
              child: Material(
                type: MaterialType.transparency,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 180,
                        width: 200,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Positioned(
                        top: -30,
                        left: 60,
                        right: 0,
                        child: SimpleShadow(
                          opacity: 0.8,
                          color: Colors.black,
                          offset: const Offset(5, 5),
                          sigma: 10,
                          child: Image.asset(
                            "assets/images/coffe.png",
                            height: 115,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        right: 8,
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    coffes[i].name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 18,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        coffes[i].rating.toString(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$${coffes[i].value.toStringAsFixed(2)}",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.transparent,
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
