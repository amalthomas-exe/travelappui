import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/widgets/app_large_text.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0.w,
              right: 0.h,
              child: Container(
                width: double.maxFinite,
                height: 350.h,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('img/mountain.jpeg'),
                  fit: BoxFit.cover)
                ),
              ),
            ),
            Positioned(
              left: 20.w,
              top: 70.h,
              child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.menu),color: Colors.white,),
              ],
            )),
            Positioned(
              top:320.h,
              child: Container(
                
                width: MediaQuery.of(context).size.width,
                height: 500.h,
                decoration: BoxDecoration(
                   color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30.r),topRight: Radius.circular(30.r))
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(text: "Yosemite"),
                        AppLargeText(text: "\$250")
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        )),
    );
  }
}