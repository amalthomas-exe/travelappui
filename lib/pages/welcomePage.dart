import 'package:flutter/material.dart';
import 'package:weatherapp/widgets/app_large_text.dart';
import 'package:weatherapp/widgets/app_text.dart';
import 'package:weatherapp/widgets/button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["welcome-one.png", "welcome-three.png", "welcome-two.png"];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(height);
    print(width);
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
                // decoration:
                //     BoxDecoration(border: Border.all(color: Colors.red)),
                margin: EdgeInsets.only(top: 150.h, left: 20.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(
                        text: "Trips",
                        size: 40.sp,
                      ),
                      AppText(text: "Mountain", size: 30.sp),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        width: 250.w,
                        child: AppText(
                          text:
                              "Mountain hikes give you an incredible sense of freedom along with endurance.",
                          size: 15,
                          color: Color.fromARGB(117, 0, 0, 0),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Button(
                        width: 120.w,
                      )
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots){
                      return Container(
                        width: 8.w,
                        margin: EdgeInsets.only(top: 6.h),
                        height: (index==indexDots)?25.h:8.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
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
