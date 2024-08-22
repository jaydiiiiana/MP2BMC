import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello BMC Flutter",
      home: Scaffold(
        appBar: AppBar(title: Text("Hello BMC Flutter"),
        backgroundColor: Colors.deepPurple,
        ),
        body: Builder(builder:(context)=> Center(
            child: Column(children: [
              Text('Hello Flutter',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[800]),
              ),
              Text('Discover the Flutter',
              style: TextStyle(fontSize: 20, color: Colors.deepPurple),

              ),

                  Image.network('https://th.bing.com/th/id/OIP.CP-mKlMUxtVrkJeaTasw4AHaEK?w=300&h=180&c=7&r=0&o=5&pid=1.7',
                    height: 350,
                  ),
              ElevatedButton(
                child: Text('Contact Us'),
                onPressed: ()=> contactUS(context),
              )


              

            ]

        )))));
  }
}

void contactUS(BuildContext context){
  showDialog(context: context,
    builder: (BuildContext){
    return AlertDialog(
      title: Text('Contact Us'),
      content: Text('mail us at grc@gmail.com'),
      actions: <Widget>[
        TextButton(
        child: Text('Close'),
            onPressed: () => Navigator.of(context).pop(),

    )
      ],
    );
    }
  );
}
