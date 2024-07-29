class GpsTracker {
  GpsTracker({
    required this.result,
    required this.details,
  });

  final Result? result;
  final List<Detail> details;

  factory GpsTracker.fromJson(Map<String, dynamic> json) {
    return GpsTracker(
      result: json["result"] == null ? null : Result.fromJson(json["result"]),
      details: json["Details"] == null
          ? []
          : List<Detail>.from(json["Details"]!.map((x) => Detail.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "result": result?.toJson(),
    "Details": details.map((x) => x.toJson()).toList(),
  };

  @override
  String toString() {
    return "$result, $details, ";
  }
}

class Detail {
  Detail({
    required this.locationTime,
    required this.unixTime,
    required this.unixTimeInMiliSecond,
    required this.latitude,
    required this.longitude,
    required this.speed,
    required this.batteryPercent,
    required this.isIgnitionOn,
    required this.fuelcut,
    required this.mileage,
    required this.imei,
    required this.gprsConnected,
    required this.weakGps,
    required this.aircondition,
    required this.alarm,
    required this.vehicleNo,
    required this.clientName,
    required this.ignitionChangeTime,
    required this.odoMeter,
    required this.location,
    required this.direction,
    required this.deviceStatus,
    required this.fuelPer,
    required this.temperature,
  });

  final DateTime? locationTime;
  final int? unixTime;
  final int? unixTimeInMiliSecond;
  final String? latitude;
  final String? longitude;
  final int? speed;
  final int? batteryPercent;
  final bool? isIgnitionOn;
  final bool? fuelcut;
  final int? mileage;
  final String? imei;
  final bool? gprsConnected;
  final bool? weakGps;
  final bool? aircondition;
  final String? alarm;
  final String? vehicleNo;
  final String? clientName;
  final DateTime? ignitionChangeTime;
  final int? odoMeter;
  final String? location;
  final int? direction;
  final String? deviceStatus;
  final int? fuelPer;
  final String? temperature;

  factory Detail.fromJson(Map<String, dynamic> json) {
    return Detail(
      locationTime: DateTime.tryParse(json["LocationTime"] ?? ""),
      unixTime: json["UnixTime"],
      unixTimeInMiliSecond: json["UnixTimeInMiliSecond"],
      latitude: json["Latitude"],
      longitude: json["longitude"],
      speed: json["Speed"],
      batteryPercent: json["BatteryPercent"],
      isIgnitionOn: json["IsIgnitionOn"],
      fuelcut: json["Fuelcut"],
      mileage: json["Mileage"],
      imei: json["IMEI"],
      gprsConnected: json["GPRSConnected"],
      weakGps: json["WeakGPS"],
      aircondition: json["Aircondition"],
      alarm: json["Alarm"],
      vehicleNo: json["VehicleNo"],
      clientName: json["ClientName"],
      ignitionChangeTime: DateTime.tryParse(json["IgnitionChangeTime"] ?? ""),
      odoMeter: json["OdoMeter"],
      location: json["Location"],
      direction: json["Direction"],
      deviceStatus: json["DeviceStatus"],
      fuelPer: json["fuelPer"],
      temperature: json["temperature"],
    );
  }

  Map<String, dynamic> toJson() => {
    "LocationTime": locationTime?.toIso8601String(),
    "UnixTime": unixTime,
    "UnixTimeInMiliSecond": unixTimeInMiliSecond,
    "Latitude": latitude,
    "longitude": longitude,
    "Speed": speed,
    "BatteryPercent": batteryPercent,
    "IsIgnitionOn": isIgnitionOn,
    "Fuelcut": fuelcut,
    "Mileage": mileage,
    "IMEI": imei,
    "GPRSConnected": gprsConnected,
    "WeakGPS": weakGps,
    "Aircondition": aircondition,
    "Alarm": alarm,
    "VehicleNo": vehicleNo,
    "ClientName": clientName,
    "IgnitionChangeTime": ignitionChangeTime?.toIso8601String(),
    "OdoMeter": odoMeter,
    "Location": location,
    "Direction": direction,
    "DeviceStatus": deviceStatus,
    "fuelPer": fuelPer,
    "temperature": temperature,
  };

  @override
  String toString() {
    return "$locationTime, $unixTime, $unixTimeInMiliSecond, $latitude, $longitude, $speed, $batteryPercent, $isIgnitionOn, $fuelcut, $mileage, $imei, $gprsConnected, $weakGps, $aircondition, $alarm, $vehicleNo, $clientName, $ignitionChangeTime, $odoMeter, $location, $direction, $deviceStatus, $fuelPer, $temperature, ";
  }
}

class Result {
  Result({
    required this.code,
    required this.msg,
  });

  final int? code;
  final String? msg;

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      code: json["code"],
      msg: json["msg"],
    );
  }

  Map<String, dynamic> toJson() => {
    "code": code,
    "msg": msg,
  };

  @override
  String toString() {
    return "$code, $msg";
  }
}
