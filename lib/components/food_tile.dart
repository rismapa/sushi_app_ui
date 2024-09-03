import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app_ui/models/food.dart';
import 'package:sushi_app_ui/themes/colors.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final VoidCallback onTap;

  const FoodTile({
    super.key,
    required this.size,
    required this.food,
    required this.onTap,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        height: size.height * .25,
        width: size.width * .4,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: primaryColor)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              food.imagePath,
              fit: BoxFit.contain,
              height: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              food.name,
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 15, fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "\$${food.price}",
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.yellow[600],
                    ),
                    Text(
                      "${food.rating}",
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
