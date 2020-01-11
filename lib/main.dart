import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask me anything',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Ask me anything'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var ballvalue=1;

  

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(

              height: 250,
              width: 250,

              child:

              InkWell(
                child: Image.asset('image/ball$ballvalue.png'),
                onTap: (){
                  setState(() {
                    ballvalue=ballvalue+1;
                    if(ballvalue == 6){
                      ballvalue=1;
                    }
                  });

                },
              ),
            ),

            
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
