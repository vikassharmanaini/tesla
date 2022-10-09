import 'package:flutter/material.dart';
// import 'package:';

class CommonPart extends StatefulWidget {
  const CommonPart({super.key, required this.height});
  final double height;
  @override
  State<CommonPart> createState() => _CommonPartState(height);
}

class _CommonPartState extends State<CommonPart> {
  final double height;
  final List<Added> _list = [
    Added(Icons.miscellaneous_services, "Engine", "ON"),
    Added(Icons.thermostat_auto, "Temperature", "25℃"),
    Added(Icons.ac_unit, "A.C.", "OFF"),
    Added(Icons.battery_charging_full, "Bettery", "89%"),
    Added(Icons.mode_of_travel_rounded, "Traveled", "40302 KM"),
    Added(Icons.face, "A.I.", "OK")
  ];
  _CommonPartState(this.height);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
                vertical: 2),
            child: Card(
              child: ListTile(
                onTap: (() => Navigator.pop(context)),
                leading: Card(
                  shadowColor: Colors.white,
                  child: Image(
                      image: AssetImage(
                          "assets/image_processing20201023-845-1km5g0i-removebg-preview.png")),
                ),
                // horizontalTitleGap: 40,
                title: Text("START"),
                trailing: Padding(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.airline_seat_recline_extra_outlined),
                  ),
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 1,
          ),
          Expanded(
              child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, mainAxisSpacing: 20),
                  itemBuilder: (context, index) => Card(
                      color: Color.fromARGB(59, 54, 54, 54),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(_list[index].a),
                          // AnimatedIcon(icon: AnimatedIcons.add_event, progress: Animation()),
                          Text(_list[index].field),
                          Text(_list[index].status)
                        ],
                      )))),
        ],
      ),
    );
  }
}

class Added {
  final IconData a;
  final String field;
  final String status;

  Added(this.a, this.field, this.status);
}
