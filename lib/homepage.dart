import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tesla_app/helper/common.dart';
import 'package:tesla_app/helper/gear2.dart';
import 'package:tesla_app/helper/location.dart';

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  double a = 0.5;
  double margin = 20;
  String itd = "assets/ddd.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Color.fromARGB(204, 43, 43, 43),
      //   onPressed: () {},
      //   child: Icon(Icons.drive_eta_rounded),
      // ),
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: Container(
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FloatingActionButton.small(
                              backgroundColor:
                                  Color.fromARGB(29, 158, 158, 158),
                              onPressed: () {},
                              child: Icon(Icons.now_widgets_rounded),
                            ),
                          ],
                        ),
                        Expanded(
                          child: RotationTransition(
                            child: Image(image: AssetImage(itd)),
                            turns: Tween(begin: 0.0, end: 0.25)
                                .animate(_animationController),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Tesla Model S",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )
                      ],
                    )),
                decoration: BoxDecoration(
                  gradient: RadialGradient(colors: [
                    Color.fromARGB(96, 0, 10, 44),
                    Color.fromARGB(72, 0, 2, 15),
                    Colors.black,
                    Color.fromARGB(72, 0, 2, 15),
                    Colors.black
                  ]),
                  // backgroundBlendMode: BlendMode(),
                  // image: DecorationImage(
                  //   fit: BoxFit.fitWidth,
                  //   image: AssetImage(itd),
                  // ),
                )),
          ),
          GestureDetector(
            onVerticalDragStart: (detail) => setState(() {
              _animationController.forward();
              a = 0.6;
              margin = 8;
            }),
            child: Container(
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: margin),
                child: Container(
                  // margin: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * a,
                  decoration: BoxDecoration(
                      color: Color(0xCE222222),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        TabBar(
                          indicatorColor: Colors.redAccent,
                          tabs: [
                            Tab(icon: Icon(Icons.graphic_eq)),
                            Tab(icon: Icon(Icons.miscellaneous_services_sharp)),
                            Tab(
                              icon: Icon(Icons.location_on),
                            )
                          ],
                        ),
                        Container(
                            decoration: BoxDecoration(color: Colors.black54),
                            height: MediaQuery.of(context).size.height * a - 48,
                            child: TabBarView(children: [
                              CommonPart(
                                height: a,
                              ),
                              Gear(),
                              Location()
                            ]))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
