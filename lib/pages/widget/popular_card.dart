import 'package:flutter/material.dart';
import 'package:food_app/pages/detail_page.dart';
import '../../shared/theme.dart';

class PopularPage extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String desc;
  final String harga;
  const PopularPage({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.desc,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        height: 120,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(top: 25, bottom: 25, left: 25),
        decoration: BoxDecoration(
          color: kGreyColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 68,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 18,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    desc,
                    style: greytTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    harga,
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 36,
              margin: EdgeInsets.only(left: 55),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image(
                  image: AssetImage('assets/plus.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
