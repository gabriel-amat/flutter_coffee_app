import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/shared/constants.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BottomCarousel extends StatefulWidget {
  const BottomCarousel({Key? key}) : super(key: key);

  @override
  State<BottomCarousel> createState() => _BottomCarouselState();
}

class _BottomCarouselState extends State<BottomCarousel> {
  final controller = CarouselController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Special for you",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: CarouselSlider(
            carouselController: controller,
            options: CarouselOptions(
              aspectRatio: 16 / 7,
              viewportFraction: 0.8,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              padEnds: false,
              clipBehavior: Clip.none,
              onPageChanged: (index, reason) {
                setState(() => currentPage = index);
              },
            ),
            items: specialOffersList.map((e) {
              return Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: secondaryColor, width: 3),
                  borderRadius: BorderRadius.circular(15),
                  color: primaryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SimpleShadow(
                          opacity: 0.6,
                          color: Colors.grey,
                          offset: const Offset(2, 2),
                          sigma: 7,
                          child: Image.asset(
                            "assets/images/coffe.png",
                            height: 80,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        const SizedBox(width: 8),
                        SizedBox(
                          width: 120,
                          child: Text(
                            e.description,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 18,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              e.rating.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  "For only",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text(
                                      "\$25",
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "\$20",
                                      style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: specialOffersList.asMap().entries.map((entry) {
            return Container(
              width: currentPage == entry.key ? 30 : 12,
              height: 10,
              margin: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 4,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor.withOpacity(
                  currentPage == entry.key ? 0.9 : 0.4,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
