import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ButtonAction extends StatelessWidget {
  const ButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 58),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 60,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16)))),
                  onPressed: () {},
                  child: Text(
                    '19.99 €',
                    style: Styles.textStyle20.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  )),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 60,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xffEF8363),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16)))),
                  onPressed: () {},
                  child: Text(
                    'Free preview',
                    style: Styles.textStyle20.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
