import 'package:dicoding_submission/detailPage.dart';
import 'package:dicoding_submission/tema.dart';
import 'package:flutter/material.dart';

class JuiceWidget extends StatelessWidget {
  final String nameJuice;
  final String price;
  final String imgUrl;
  final double rating;

  const JuiceWidget(
      {Key? key,
      required this.nameJuice,
      required this.price,
      required this.imgUrl,
      this.rating = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return DetailPage();
          }),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 18),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xfff8f9fa),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imgUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameJuice,
                    style: blackTextStyle.copyWith(
                      fontSize: 25,
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    price,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: regular,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(right: 2),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/rating.png'),
                    ),
                  ),
                ),
                Text(
                  rating.toString(),
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
