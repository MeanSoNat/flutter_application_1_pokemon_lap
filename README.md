# USE STARWAR APIs
## Sources
- API: https://swapi.dev/api/people
- jsonModel: https://app.quicktype.io/

## Steps
<ol>
    <li>Install extension ThunderClient Vscode</li>
    <li>copy API link and paste ThunderClient method: <b>GET</b> and send.</li>
    <li>Open <a href='https://app.quicktype.io'>QuickType</a></li>
    <li>select language : <b>Dart</b></li>
    <li>Paste response from ThunderClient</li>
    <li>Click checked Null safety</li>
    <li>click copy code</li>
</ol>

## Create Models
<ol>
    <li>Create folder <b>models</b> in <b>lib</b> folder</li>
    <li>Create file in folder Models name <b>people.dart</b></li>
    <li>paste code</li>
</ol>

## Create Views
<ol>
    <li>Create folder <b>views</b> in <b>lib</b> folder</li>
    <li>Create file in folder <b>views</b> Homepage.dart</li>
    <li>Use key type : stful -> Enter</li>
    <li>Type Class name HomePage</li>
    <li>Back to main.dart</li>
    <li>import path file Homepage.dart</li>
    <li>Change home class to HomePage() Class</li>
</ol>

## HomePage.dart Section

```Dart
class _HomePageState extends State<HomePage> {
  List<People>? people;
  var isLoaing = false;

  @override
  void initState() {
    super.initState();
    // fetch data from api

    getData();
  }

  getData() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            child: Text('$index'),
          );
        },
      ),
    );
  }
}

```
## Install dependencies
```Dart
    flutter pub add http
```
## Service
<ol>
    <li>Create remote_service.dart</li>
</ol>

```Dart
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
```