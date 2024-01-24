import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchFieldText extends StatelessWidget {
  const CustomSearchFieldText({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: Styles.textStyle18,
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            suffixIcon: Opacity(
              opacity: .8,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 22,
              ),
            )));
  }
}
