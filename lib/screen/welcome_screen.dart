import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app_ui/components/button_widget.dart';
import 'package:sushi_app_ui/screen/home_screen.dart';
import 'package:sushi_app_ui/themes/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image
            Padding(
              padding: const EdgeInsets.all(50),
              child: Image.asset(
                "assets/images/sushi.png",
                height: size.height * .3,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            // title
            Text(
              "THE TEST OF\nJAPANESE FOOD",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 44, color: Colors.white),
            ),

            // subtitle
            Text(
              "Feel the test of the most popular Japanese food from anywhere and anytime.",
              style: TextStyle(color: Colors.grey[200], fontSize: 16),
            ),

            const SizedBox(
              height: 25,
            ),

            // button
            ButtonWidget(
              txt: "Get Started",
              onTap: () =>
                  Navigator.pushReplacementNamed(context, "/homescreen"),
            ),
          ],
        ),
      ),
    );
  }
}
