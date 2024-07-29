import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/gps_tracker_model.dart';

Future<GpsTracker> fetchDeviceLocation(int userId, String imei, String username, String password) async {
  final response = await http.post(
    Uri.parse('https://client.letstracknepal.com/api/GetDeviceLocation'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Basic ${base64Encode(utf8.encode('$username:$password'))}',
    },
    body: jsonEncode(<String, dynamic>{
      'UserId': userId,
      'IMEI': imei,
    }),
  );

  if (response.statusCode == 200) {
    return GpsTracker.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load GPS tracker');
  }
}
