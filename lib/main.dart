import 'package:flutter/material.dart';
import 'StoryBrain.dart';

void main() => runApp(MyApp());

storyBrain s=storyBrain();




class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/pbc.jpg'),
              //fit:BoxFit.cover,
            ),
          ),


          padding: EdgeInsets.symmetric(vertical:50.0,horizontal: 15.0),
          constraints: BoxConstraints.expand(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 12,
                  child: Center(
                    child: Text(
                      s.getstory(),
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child:Visibility (
                    visible: s.buttonShouldBeVisible(),
                    child: FlatButton(
                      onPressed: (){
                       // s.nextStory(1);
                      setState(() {
                        s.nextStory(1);
                      });
                      },
                      color: Colors.deepOrange,
                      child: Text(
                        s.getchoice1(),
                        style: TextStyle(
                          fontSize: 20.0,
                          color:Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  flex: 3,
                  child: Visibility(
                    visible: s.buttonShouldBeVisible(),
                    child: FlatButton(
                      onPressed: (){

                        //s.nextStory(2);
                        setState(() {
                          s.nextStory(2);
                        });
                      },
                      color: Colors.indigo,
                      child: Text(

                        s.getchoice2(),
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),


        ),
      ),

    );
  }
}




