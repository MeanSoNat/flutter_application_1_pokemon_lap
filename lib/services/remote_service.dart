import 'package:flutter_application_1/models/people.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<People?> getpeople() async {
    var url = "https://swapi.dev/api/people/";
    var client = http.Client();
    var uri = Uri.parse(url);

    var res = await client.get(uri);
    if (res.statusCode == 200) {
      var json = res.body;
      return peopleFromJson(json);
    }
  }
}
