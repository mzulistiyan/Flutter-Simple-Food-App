import 'package:flutter/material.dart';
import 'package:food_app/pages/get_started_page.dart';
import '../../shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GetStartedPage(),
                  ),
                );
              },
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Icon_left_outline.png'),
                  ),
                ),
              ),
            ),
            Container(
              width: 24,
              height: 15,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Vector.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Steak House',
              style: blackTextStyle.copyWith(
                fontSize: 30,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'Our very own! Smashed \nbeef burgers',
              style: greytTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Image.asset(
                'assets/burger1.png',
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Size : ',
              style: blackTextStyle.copyWith(fontWeight: medium),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(210),
                  ),
                  child: Center(
                    child: Text(
                      'S',
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: kGreyColor,
                    borderRadius: BorderRadius.circular(210),
                  ),
                  child: Center(
                    child: Text(
                      'M',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: kGreyColor,
                    borderRadius: BorderRadius.circular(210),
                  ),
                  child: Center(
                    child: Text(
                      'L',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Quantity : ',
              style: blackTextStyle.copyWith(fontWeight: medium),
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: kGreyColor,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('assets/min.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  '2',
                  style: blackTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                ),
                SizedBox(
                  width: 16,
                ),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: kGreyColor,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage('assets/plus.png'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget price() {
      return Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: greytTextStyle,
                ),
                SizedBox(
                  height: 9,
                ),
                Text(
                  'IDR 49.999',
                  style: blackTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Love.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Cart.png'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          header(),
          content(),
          price(),
        ],
      ),
    );
  }
}
