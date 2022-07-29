import 'package:flutter/cupertino.dart';
import 'package:flutter_coffe_shop/model/coffe_extra_mode.dart';
import 'package:flutter_coffe_shop/model/coffe_model.dart';

const String introductionImage =
    "https://c0.wallpaperflare.com/preview/484/859/724/cup-coffee-mug-bokeh.jpg";

const String detailBackGround =
    "https://cdn.pixabay.com/photo/2021/07/01/23/42/wallpaper-6380532_1280.jpg";

const primaryColor = Color(0xFF263F2E);
const secondaryColor = Color(0xFFFDCC7F);

List<CoffeExtraModel> extraList = [
  CoffeExtraModel(
    name: "Chocolate",
    imageUrl: "https://www.pngmart.com/files/3/Chocolate-Bar-PNG-Transparent-Image.png",
    value: "15",
  ),
  CoffeExtraModel(
    name: "Honey",
    imageUrl: "https://cdn.picpng.com/honey/pattern-honey-27104.png",
    value: "15",
  ),
  CoffeExtraModel(
    name: "Cinnamon",
    imageUrl: "https://assets.mockup.graphics/assets/png/IMG_7406.png",
    value: "15",
  )
];

List<CoffeModel> coffeModelsTest = [
  CoffeModel(
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    value: 15,
    rating: 4.5,
    name: "Capuccino",
  ),
  CoffeModel(
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    value: 15,
    rating: 4,
    name: "Capuccino",
  ),
  CoffeModel(
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    value: 15,
    rating: 3,
    name: "Capuccino",
  ),
  CoffeModel(
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    value: 15,
    rating: 1,
    name: "Capuccino",
  ),
];

List<CoffeModel> specialOffersList = [
  CoffeModel(
    description: "Capuccino accompanied by two croissants and two cookies",
    value: 15,
    rating: 4.6,
    name: "Capuccino",
  ),
  CoffeModel(
    description: "Capuccino accompanied by two croissants and two cookies",
    value: 15,
    rating: 4.6,
    name: "Capuccino",
  ),
  CoffeModel(
    description: "Capuccino accompanied by two croissants and two cookies",
    value: 15,
    rating: 4.6,
    name: "Capuccino",
  ),
  CoffeModel(
    description: "Capuccino accompanied by two croissants and two cookies",
    value: 15,
    rating: 4.6,
    name: "Capuccino",
  ),
];
