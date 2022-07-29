import 'package:flutter/material.dart';
import 'package:flutter_coffe_shop/pages/home/home_page.dart';
import 'package:flutter_coffe_shop/shared/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            introductionImage,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FaIcon(
                  FontAwesomeIcons.mugHot,
                  color: secondaryColor,
                  size: 45,
                ),
                SizedBox(width: 16),
                Text(
                  "Star Coffee",
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(bottom: 22),
                decoration: const BoxDecoration(
                  color: secondaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
