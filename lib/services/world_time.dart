import 'package:http/http.dart';
import "dart:convert";
import 'package:intl/intl.dart';

class WorldTime {
  String location; // Location name
  String time; // Time in that location
  String flag; // Url to an asset flag icon
  String url; //

  WorldTime({ this.location, this.flag, this.url });

  Future<void> getTime() async {
    try {
      Response response = await get("http://worldtimeapi.org/api/timezone/$url");
      Map data = jsonDecode(response.body);
//    print(data);
//     get properties from data
      String dateTime = data["datetime"];
      String offset = data["utc_offset"].substring(0, 3);
//    create dateTime object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
//  Convert time back to string
      time = DateFormat.jm().format(now);
    }
    catch(e) {
      print("Error: $e");
      time = "Could not load time data...";
    }
  }
}
