import 'package:flutter/cupertino.dart';

class CustomInfoWindow extends StatelessWidget {
  final String vehicleNo;
  final String speed;
  final String driverName;

  CustomInfoWindow({
    required this.vehicleNo,
    required this.speed,
    required this.driverName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Vehicle No: $vehicleNo',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text('Speed: $speed km/h'),
          SizedBox(height: 4),
          Text('Driver: $driverName'),
        ],
      ),
    );
  }
}
