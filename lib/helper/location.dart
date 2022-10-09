import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  final List<_net> a = [
    _net(Icons.wb_cloudy, "Weather", "All Clear"),
    _net(Icons.water_drop, "Humidity", "57%"),
    _net(Icons.air, "A.Q.I.", "Moderate"),
    _net(Icons.thermostat_outlined, "Temperature", "33℃"),
    _net(Icons.emergency_share_outlined, "Connection", "ON"),
    _net(Icons.schedule, "Schedule", "4 item")
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Container(
              width: double.infinity,
              height: 60,
              child: Card(
                  child: ListTile(
                leading: Icon(Icons.location_on),
                title: Text("On Location"),
              )),
            ),
          ),
          Expanded(
              child: GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 1),
            itemBuilder: (context, index) => Card(
              // surfaceTintColor: Colors.amber,
              color: Color.fromARGB(59, 54, 54, 54),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(a[index].ic),
                  Text(
                    a[index].field,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    a[index].value,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class _net {
  final IconData ic;
  final String field;
  final String value;

  _net(this.ic, this.field, this.value);
}
