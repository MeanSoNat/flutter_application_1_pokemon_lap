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
    <h4>HomePage.dart Section</h4>
<ol>
    <li>In tag <strong>body</strong> use ListView.builder</li>
        
    body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            child: Text('$index'),
          );
        },
    ),

    <li>Install dependencies</li>
    ```
    flutter pub add http
    ```
</ol>
</ol>

