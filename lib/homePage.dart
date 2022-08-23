import 'package:dicoding_submission/juiceWidget.dart';
import 'package:dicoding_submission/model/juiceModel.dart';
import 'package:dicoding_submission/tema.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, right: defaultMargin, left: defaultMargin),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Morning,\nJohn Doe",
                    style: blackTextStyle.copyWith(
                      fontSize: 30,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Jakarta - Indonesia",
                    style: TextStyle(color: Color(0xffffb703)),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/profile.png"),
                ),
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
      );
    }

    Widget banner() {
      return Container(
        width: 200,
        height: 230,
        padding: EdgeInsets.all(defaultMargin),
        margin: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img5.png"),
          ),
          boxShadow: [
            BoxShadow(
              color: primaryColor.withOpacity(0.5),
              blurRadius: 30,
              offset: Offset(0, 20),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                      Text(
                        "John Doe",
                        style: whiteTextStyle.copyWith(
                          fontSize: 25,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  "Premium Member",
                  style: whiteTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Total Balance",
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            Text(
              "IDR 900.000.000",
              style: whiteTextStyle.copyWith(
                fontSize: 30,
                fontWeight: semiBold,
              ),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      );
    }

    Widget juice() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(
                    "Orange Juice",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "Avocado Juice",
                    style: blackTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "Mango Juice",
                    style: blackTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "Strobery Juice",
                    style: blackTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),

            //juice card
            JuiceWidget(
              nameJuice: "Orange Juice 1",
              price: "IDR 13.000",
              imgUrl: "assets/img6.jpg",
              rating: 1.9,
            ),
            SizedBox(
              height: 2,
            ),

            // 2
            JuiceWidget(
              nameJuice: "Orange Juice 2",
              price: "IDR 10.000",
              imgUrl: "assets/img7.jpg",
              rating: 3.0,
            ),
            SizedBox(
              height: 2,
            ),

            // 3
            JuiceWidget(
              nameJuice: "Orange Juice 3",
              price: "IDR 15.000",
              imgUrl: "assets/img8.jpg",
              rating: 4.9,
            ),
            SizedBox(
              height: 2,
            ),

            // 4
            JuiceWidget(
              nameJuice: "Orange Juice 1",
              price: "IDR 19.000",
              imgUrl: "assets/img9.jpg",
              rating: 3.9,
            ),
            SizedBox(
              height: 2,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [header(), banner(), juice()],
      ),
      // body: ListView.builder(itemBuilder: ((context, index) {
      //   final DataJus juice = listDataJus[index];
      //   return InkWell(
      //     onTap: () {},
      //   );
      // })),
    );
  }
}
