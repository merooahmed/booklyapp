import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMsg});
  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return  Center(child: Text(errorMsg,style: Styles.textStyle18,));
  }
}
