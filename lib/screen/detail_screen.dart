import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app_ui/components/button_widget.dart';
import 'package:sushi_app_ui/models/food.dart';
import 'package:sushi_app_ui/themes/colors.dart';

class DetailScreen extends StatefulWidget {
  final Food food;

  const DetailScreen({super.key, required this.food});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int quantityProduct = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[900],
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      widget.food.imagePath,
                      height: size.height * .3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.yellow[600],
                        ),
                        Text(
                          "${widget.food.rating}",
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      widget.food.name,
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  // menu list
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Descriprion :",
                          style: GoogleFonts.dmSerifDisplay(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Salmon Sushi is one of the most popular types of sushi around the world. It features a slice of fresh, tender salmon placed atop seasoned sushi rice. The delicate flavor of the salmon pairs perfectly with the slightly tangy rice, creating a harmonious blend of taste and texture. Often enjoyed with a touch of soy sauce and wasabi, Salmon Sushi is a favorite for both sushi enthusiasts and newcomers alike, offering a simple yet exquisite dining experience.",
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 25,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
          SizedBox(
            height: size.height * .23,
            child: Container(
              padding: const EdgeInsets.all(20),
              height: size.height * .18,
              decoration: BoxDecoration(color: primaryColor),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${widget.food.price}",
                        style: GoogleFonts.dmSerifDisplay(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: secondaryColor),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (quantityProduct > 0) {
                                      quantityProduct--;
                                    }
                                  });
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            width: 40,
                            child: Center(
                              child: Text(
                                quantityProduct.toString(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: secondaryColor),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    quantityProduct++;
                                  });
                                },
                                icon: const Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ButtonWidget(
                    txt: "Add to Chart",
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
