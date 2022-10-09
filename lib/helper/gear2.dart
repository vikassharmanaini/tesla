import 'package:flutter/material.dart';

class Gear extends StatefulWidget {
  const Gear({super.key});

  @override
  State<Gear> createState() => _GearState();
}

class _GearState extends State<Gear> {
  List<_at> at = [
    _at("assets/tesla-model-s-engine-removebg-preview.png", "Engine",
        "▸ Last Service March 10,2020 \n▸ Working Condition : good \n▸ Temprature : 33℃"),
    _at("assets/tesla-model-s-engine-removebg-preview.png", "Engine",
        "▸ Last Service March 10,2020 \n▸ Working Condition : good \n▸ Temprature : 33℃"),
    _at("assets/tesla-model-s-engine-removebg-preview.png", "Engine",
        "▸ Last Service March 10,2020 \n▸ Working Condition : good \n▸ Temprature : 33℃"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.all(5),
                child: Card(
                  color: Color.fromARGB(59, 54, 54, 54),
                  child: ListTile(
                    leading: Card(
                      shadowColor: Color(0x50FFFFFF),
                      elevation: 5,
                      child: Card(
                        color: Color(0x499E9E9E),
                        child: Image.asset(
                         "assets/tesla-model-s-engine-removebg-preview.png",
                          filterQuality: FilterQuality.medium,
                        ),
                      ),
                    ),
                    title: Text(at[index].title),
                    subtitle: Text(at[index].description),
                  ),
                ))),
      ),
    );
  }
}

class _at {
  final String img;
  final String title;
  final String description;

  _at(this.img, this.title, this.description);
}
