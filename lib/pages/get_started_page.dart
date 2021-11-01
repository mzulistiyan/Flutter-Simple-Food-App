import 'package:flutter/material.dart';
import 'package:food_app/pages/detail_page.dart';
import 'package:food_app/pages/widget/custom_bottom_nav.dart';
import 'package:food_app/pages/widget/popular_card.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 40,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/menu1.png'),
                ),
              ),
            ),
            Container(
              width: 40,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/menu2.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        margin: EdgeInsets.only(top: 21, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: kGreyColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/search.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: whiteTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Search your favorite food',
                          hintStyle: greytTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget category() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fast Food',
                    style: greenTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 2,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(defaultRadius)),
                  ),
                ],
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                'Desert',
                style: greytTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                'Drinks',
                style: greytTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                'Snacks',
                style: greytTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularFood() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Food',
              style: blackTextStyle.copyWith(
                fontSize: 30,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            PopularPage(
              imageUrl: 'assets/pizza1.png',
              name: 'Pizza',
              desc: 'Delicious food 2020',
              harga: 'IDR 49.999',
            ),
            PopularPage(
              imageUrl: 'assets/burger2.png',
              name: 'Hamburger',
              desc: 'Delicious food 2020',
              harga: 'IDR 59.999',
            ),
            PopularPage(
              imageUrl: 'assets/hotdog1.png',
              name: 'Double Hot Dog',
              desc: 'Delicious food 2020',
              harga: 'IDR 34.999',
            ),
          ],
        ),
      );
    }

    Widget customBottomNav() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 21),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: kGreyColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/icon_home.png',
                width: 24,
                height: 24,
                color: kPrimaryColor,
              ),
              Image.asset(
                'assets/icon_notif.png',
                width: 24,
                height: 24,
                color: kPrimaryColor,
              ),
              Image.asset(
                'assets/icon_profile.png',
                width: 24,
                height: 24,
                color: kPrimaryColor,
              ),
              Image.asset(
                'assets/love_icon.png',
                width: 24,
                height: 24,
                color: kPrimaryColor,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          ListView(
            children: [
              header(),
              search(),
              category(),
              popularFood(),
            ],
          ),
          customBottomNav(),
        ],
      ),
    );
  }
}
