import 'package:dicoding_submission/singUpScreen.dart';
import 'package:dicoding_submission/tema.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 320,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Choose the\nDrink You Love",
              style: blackTextStyle.copyWith(
                fontSize: 30,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Explore our new tosty drinks",
              style: blackTextStyle.copyWith(fontWeight: regular),
            ),
            // SizedBox(
            //   height: 50,
            // ),
            Container(
              width: 250,
              height: 50,
              margin: EdgeInsets.only(top: 50, bottom: 30),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpPage();
                  }));
                },
                style: TextButton.styleFrom(
                    backgroundColor: blackColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    )),
                child: Text(
                  "Get Started",
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: medium,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
