import 'package:flutter/material.dart';
import 'package:weatherapp/main.dart';
import 'package:weatherapp/widgets/app_large_text.dart';
import 'package:weatherapp/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    "balloning.png": "Balloning",
    "hiking.png": "Hiking",
    "kayaking.png": "Kayaking",
    "snorkling.png": "Snorkling"
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(children: [
        Container(
          padding: const EdgeInsets.only(top: 50, left: 20),
          //decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.black,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.5)),
                      )
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [AppLargeText(text: "Discover")],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                      labelPadding: const EdgeInsets.only(right: 20),
                      controller: _tabController,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black.withOpacity(0.5),
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: CircleTabIndicator(
                          color: Color(0xFF5d69b3), radius: 4),
                      tabs: [
                        Tab(
                          text: "Places",
                        ),
                        Tab(
                          text: "Inspiration",
                        ),
                        Tab(
                          text: "Emotions",
                        )
                      ]),
                ),
              ),
              Container(
                height: 350,
                width: double.maxFinite,
                child: TabBarView(controller: _tabController, children: [
                  ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 15, top: 10),
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("img/mountain.jpeg"),
                                fit: BoxFit.cover),
                          ),
                        );
                      }),
                  Text("There"),
                  Text("bye")
                ]),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppLargeText(
                      text: "Explore more",
                      size: 20,
                    ),
                    AppText(
                      text: "See all",
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 120,
                width: double.maxFinite,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        child: Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(87, 158, 158, 158),
                                  image: DecorationImage(
                                      image: AssetImage("img/"+images.keys.elementAt(index)),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                                child: AppText(
                              text: images.values.elementAt(index),
                              color: Color.fromARGB(136, 78, 75, 75)
                                  .withOpacity(0.5),
                            ))
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
