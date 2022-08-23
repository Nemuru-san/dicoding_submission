import 'package:dicoding_submission/homePage.dart';
import 'package:dicoding_submission/tema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          "Welcome Back,\nWe Ready to Serve You",
          style: blackTextStyle.copyWith(fontSize: 28, fontWeight: semiBold),
        ),
      );
    }

    Widget email() {
      return Container(
        margin: EdgeInsets.only(top: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email",
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: primaryColor,
              decoration: InputDecoration(
                  hintText: "Email Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  )),
            )
          ],
        ),
      );
    }

    Widget username() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email",
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              cursorColor: primaryColor,
              decoration: InputDecoration(
                  hintText: "John Doe",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  )),
            )
          ],
        ),
      );
    }

    Widget password() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password",
              style: blackTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  )),
            )
          ],
        ),
      );
    }

    Widget signIn() {
      return Container(
        width: 250,
        height: 50,
        margin: EdgeInsets.only(top: 50, bottom: 30),
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomePage();
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
      );
    }

    // tanpa bgImg
    // return Scaffold(
    //   backgroundColor: whiteColor,
    //   body: SafeArea(
    //     child: ListView(
    //       padding: EdgeInsets.symmetric(horizontal: defaultMargin),
    //       children: [title(), email(), password(), signIn()],
    //     ),
    //   ),
    // );

    // dengan bgImg didalam nya
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img3.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [title(), email(), username(), password(), signIn()],
          ),
        ),
      ),
    );
  }
}
