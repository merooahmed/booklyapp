import 'package:booklyapp/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/Features/Home/presentation/views/widgets/custom_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(right: 20, left: 20, top: 16, bottom: 20),
      child: Column(
        children: [CustomAppBar(), CustomListView()],
      ),
    );
  }
}
