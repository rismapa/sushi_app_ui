import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app_ui/components/button_widget.dart';
import 'package:sushi_app_ui/components/food_tile.dart';
import 'package:sushi_app_ui/main.dart';
import 'package:sushi_app_ui/models/food.dart';
import 'package:sushi_app_ui/models/shop.dart';
import 'package:sushi_app_ui/screen/detail_screen.dart';
import 'package:sushi_app_ui/themes/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        title: Text(
          "SushiMen",
          style: GoogleFonts.dmSerifDisplay(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // promo banner
              Container(
                padding: const EdgeInsets.all(20),
                width: size.width,
                height: size.height * .20,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Get 32% Promo",
                          style: GoogleFonts.dmSerifDisplay(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        ButtonWidget(
                          txt: "Reedem",
                          onTap: () {},
                        )
                      ],
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return Image.asset(
                          "assets/images/sushi2.png",
                          fit: BoxFit.contain,
                          height: constraints.maxHeight * .9,
                        );
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              // search bar
              TextField(
                decoration: InputDecoration(
                  hintText: "Search ...",
                  hintStyle: TextStyle(color: Colors.grey[400], fontSize: 1),
                  suffixIcon: Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              // menu list
              Text(
                "Food Menu",
                style: GoogleFonts.dmSerifDisplay(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: size.height * .25,
                child: ListView.builder(
                  itemCount: foods.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FoodTile(
                        size: size,
                        food: foods[index],
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailScreen(food: foods[index]),
                            )));
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              // popular food
              Text(
                "Popular Food",
                style: GoogleFonts.dmSerifDisplay(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: primaryColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/sushi2.png",
                          height: size.height * .08,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sushi Roll ",
                              style: GoogleFonts.dmSerifDisplay(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                            const Text(
                              "\$19.00",
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.favorite_border,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
