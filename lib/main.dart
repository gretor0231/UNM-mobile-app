import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      )
    );
  }
}


class LoginPage extends StatefulWidget{
  @override
  State createState() => new LoginPageState();

}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState(){
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync:  this,
        duration: new Duration(milliseconds: 300)

    );
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.easeOut
    );
    _iconAnimation.addListener(() => this.setState((){}));
    _iconAnimationController.forward();

  }



  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
        body: new Stack(
          fit: StackFit.expand,
            children: <Widget>[
              new Image(
                  image: new AssetImage("assets/UNM.jpg"),
                  fit: BoxFit.cover,
                  color: Colors.black54,
                  colorBlendMode: BlendMode.darken,
              ),
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Image(
                    image: new AssetImage("assets/loboicon.png"),

                  ),
                  new Form(
                    child: new Theme(
                      data: new ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.teal,
                        inputDecorationTheme: new InputDecorationTheme(
                          labelStyle: new TextStyle(
                            color: Colors.teal, fontSize: 20.0
                          )
                        )
                      ),

                      child: new Container(
                        padding: const EdgeInsets.all(40.0),
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.center,

                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Entet Email Address",
                            ),
                            keyboardType: TextInputType.emailAddress,

                          ),

                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText: "Entet Password",
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,

                          ),
                          new Padding(
                              padding: const EdgeInsets.only(top: 15.0),

                          ),
                          new MaterialButton(
                            height: 40.0,
                            minWidth: 120.0,
                            color: Colors.teal,
                            textColor: Colors.white,
                            child: new Text("Login"),
                            onPressed: () => {},
                            splashColor: Colors.redAccent,

                          )


                        ],//
                  ),
                      ),
                    ),

                  )

                ],

              )
            ],

        ),
    );

  }

}
