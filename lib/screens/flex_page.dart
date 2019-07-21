import 'package:flutter/material.dart';
import '../screens/card_page.dart';
import './insurance.dart';
import './card_page.dart';

final double opacity = 70;



class FlexPage extends StatelessWidget {
  const FlexPage({Key key}) : super(key: key);
 

 

  @override
  Widget build(BuildContext context) {
     
    return    Scaffold(
        
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: Text('Income',style: TextStyle(color: Colors.black54),),
          actions: <Widget>[Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.adjust, color: Colors.black),
          )],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 60.0, 16.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: <Widget>[
              totalIncome(),
              earnings(),
              thirdRow(),
              new ColorBoxes()
            ],
          ),
        ),
      );
   
  }

  Row thirdRow() => Row(
        children: <Widget>[
          Text(
            'Fund Management',
            style: TextStyle(fontSize: 20.0),
          ),
          new More()
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      );

  Widget totalIncome() {
    return Column(
      children: <Widget>[
        Align(
          child: Text(
            '42383',
            style: TextStyle(fontSize: 48.0),
          ),
          alignment: Alignment.center,
        ),
        Align(
          child: Text(
            'Total Income',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
          alignment: Alignment.center,
        )
      ],
    );
  }
}

class More extends StatelessWidget {
  const More({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CreditPage()));},
      child: Text(
        'more',
        style: TextStyle(fontSize: 16.0, color: Colors.grey),
      ),
    );
  }
}

class ColorBoxes extends StatelessWidget {
  const ColorBoxes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[               
                                  
                  
                   GestureDetector(
                     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>  Insurance()));},
                     child: Container(
                      height: 115.0,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          gradient: LinearGradient(colors: [Color.fromRGBO(117, 255, 250, 1), Color.fromRGBO(45, 185, 250, opacity)], ),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [BoxShadow(blurRadius: 5, offset: Offset(0.3,0.1), color: Colors.black26)]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('Insurance', style: TextStyle(fontSize: 24.0,color: Colors.white),),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  '3.60%',
                                  style: TextStyle(fontSize: 32.0,color: Colors.white),
                                ),
                                Text('Interest Rate', style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ),
                          Text('+320', style: TextStyle(fontSize: 24.0,color: Colors.white),)
                        ],
                      ),
                  ),
                   ),
                
                Container(
                  height: 115.0,
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(colors: [Color.fromRGBO(115, 250, 205, 1), Color.fromRGBO(125, 255, 140, opacity)]),
                      boxShadow: [BoxShadow(blurRadius: 5, offset: Offset(0.3,0.1), color: Colors.black26)]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Educate', style: TextStyle(fontSize: 24.0,color: Colors.white),),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '40.60%',
                              style: TextStyle(fontSize: 32.0,color: Colors.white),
                            ),
                            Text('Interest Rate', style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      Text('-450', style: TextStyle(fontSize: 24.0,color: Colors.white),)
                    ],
                  ),
                ),
                Container(
                  height: 115.0,
                  
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [BoxShadow(blurRadius: 5, offset: Offset(0.3,0.1), color: Colors.black26)],
                      gradient: LinearGradient(colors: [Color.fromRGBO(242, 151, 94, 1), Color.fromRGBO(248, 255, 41, opacity)]),
                      ),
                      
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Platform', style: TextStyle(fontSize: 24.0,color: Colors.white),),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '7.60%',
                              style: TextStyle(fontSize: 32.0,color: Colors.white),
                            ),
                            Text('Interest Rate', style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      Text('+12', style: TextStyle(fontSize: 24.0,color: Colors.white),)
                    ],
                  ),
                )
              ],
            ),
          );
  }
}

Widget earnings() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(32.0, 58.0, 32.0, 52.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              '+188',
              style: TextStyle(fontSize: 32.0),
            ),
            Text('Yesterdays Earning', style: TextStyle(color: Colors.grey),),
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              '3.60%',
              style: TextStyle(fontSize: 32.0),
            ),
            Text('Interest Rate', style: TextStyle(color: Colors.grey),),
          ],
        ),
      ],
    ),
  );
}




