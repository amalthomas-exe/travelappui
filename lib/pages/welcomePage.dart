import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/app_large_text.dart';
import 'package:weatherapp/widgets/app_text.dart';
import 'package:weatherapp/widgets/button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["welcome-one.png", "welcome-three.png", "welcome-two.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("img/" + images[index]))),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.red)),
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                        text: "Trips",
                        size: 40,
                      ),
                      AppText(text: "Mountain", size: 30),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 250,
                        child: AppText(
                          text:
                              "Mountain hikes give you an incredible sense of freedom along with endurance.",
                          size: 15,
                          color: Color.fromARGB(117, 0, 0, 0),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Button(
                        width: 120,
                      )
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots){
                      return Container(
                        width: 8,
                        margin: EdgeInsets.only(top: 6),
                        height: (index==indexDots)?25:8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: (index==indexDots)?Color(0xFF5d69b3):Color.fromARGB(120, 93, 105, 179)
                        ),
                      );
                    }),
                  )
                ]),
              ),
            );
          }),
    );
  }
}
