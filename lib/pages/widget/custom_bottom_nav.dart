import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

class CustomBottomNavigation extends StatelessWidget {
  final bool isSelected;
  final String imageUrl;

  const CustomBottomNavigation({
    Key? key,
    required this.imageUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 10),
              width: 90,
              height: 40,
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
