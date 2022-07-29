import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        suffixIconConstraints: const BoxConstraints(
          maxHeight: 30,
          maxWidth: 30,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Image.asset("assets/icons/filter.png", color: Colors.grey,),
        ),
        filled: true,
        fillColor: Colors.grey[300],
        hintText: "Find your coffe...",
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
