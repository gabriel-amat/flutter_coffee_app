import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/model/coffe_model.dart';
import 'package:flutter_coffe_shop/pages/detail/widgets/button_widget.dart';
import 'package:flutter_coffe_shop/pages/detail/widgets/custom_app_bar.dart';
import 'package:flutter_coffe_shop/pages/detail/widgets/description_widget.dart';
import 'package:flutter_coffe_shop/pages/detail/widgets/extra_options.dart';
import 'package:flutter_coffe_shop/pages/detail/widgets/size_options.dart';
import 'package:flutter_coffe_shop/shared/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:simple_shadow/simple_shadow.dart';

class DetailPage extends StatefulWidget {
  final String tag;
  final CoffeModel coffe;

  const DetailPage({
    Key? key,
    required this.tag,
    required this.coffe,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double mugSize = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.darken,
            ),
            image: const NetworkImage(detailBackGround),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const CustomAppBar(),
                    Hero(
                      tag: widget.tag,
                      child: SimpleShadow(
                        opacity: 0.8,
                        color: Colors.black,
                        offset: const Offset(5, 5),
                        sigma: 10,
                        child: Image.asset(
                          "assets/images/coffe.png",
                          height: mugSize,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizeOptions(
                      onSizeTaped: (double size) {
                        setState(() => mugSize = size);
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: ListView(
                    children: [
                      Container(
                        width: 100,
                        height: 2,
                        margin: const EdgeInsets.symmetric(horizontal: 100),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.coffe.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  RatingBar(
                                    ignoreGestures: true,
                                    itemSize: 25,
                                    initialRating: widget.coffe.rating,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    ratingWidget: RatingWidget(
                                      full: const Icon(
                                        Icons.star_rate_rounded,
                                        color: secondaryColor,
                                      ),
                                      half: const Icon(
                                        Icons.star_half_rounded,
                                        color: secondaryColor,
                                      ),
                                      empty: const Icon(
                                        Icons.star_border_rounded,
                                        color: secondaryColor,
                                      ),
                                    ),
                                    itemPadding:
                                        const EdgeInsets.only(right: 4.0),
                                    onRatingUpdate: (_) {},
                                  ),
                                  Text(
                                    "${widget.coffe.rating} (200 reviews)",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: secondaryColor,
                          ),
                        ],
                      ),
                      DescriptionWidget(text: widget.coffe.description),
                      ExtraOptions(extras: extraList),
                      const SizedBox(height: 22),
                      ButtonWidget(coffe: widget.coffe),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
