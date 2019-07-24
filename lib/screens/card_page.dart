import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CreditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Accounts',
            style: TextStyle(color: Colors.black54),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.assessment,
                color: Colors.black54,
              ),
            )
          ],
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'My card',
                style: TextStyle(fontSize: 20.0, color: Colors.black54),
              ),
              cardPanel(),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Credit Rating',
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
              ),
              creditRating(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Expenditure Breakdown',
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
              ),
              Row(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 80.0,
                    width: 160.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0.1,
                              offset: Offset(0.1, 0.05),
                              color: Colors.black12),
                        ],
                        color: Colors.white),
                    child: Row(
                      children: <Widget>[
                        CircularPercentIndicator(
                          radius: 60.0,
                          percent: 0.4,
                          progressColor: Colors.purpleAccent,
                          backgroundColor: Colors.white,
                          circularStrokeCap: CircularStrokeCap.round,
                          center:  Text('40%',
                  style: TextStyle(fontSize: 15.0, color: Colors.lightBlue)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text('Shopping',
                  style: TextStyle(fontSize: 15.0, color: Colors.lightBlue)),
                        ),
                      ],
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    height: 80.0,
                    width: 160.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 0.1,
                              offset: Offset(0.1, 0.05),
                              color: Colors.black12),
                        ],
                        color: Colors.white),
                    child: Row(
                      children: <Widget>[
                        CircularPercentIndicator(
                          radius: 60.0,
                          percent: 0.1,
                          progressColor: Colors.redAccent,
                          backgroundColor: Colors.white,
                          circularStrokeCap: CircularStrokeCap.round,
                          center:  Text('10%',
                  style: TextStyle(fontSize: 15.0, color: Colors.lightBlue)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text('Transport',
                  style: TextStyle(fontSize: 15.0, color: Colors.lightBlue)),
                        ),
                      ],
                    ),
                  ),
                )
              ])
            ],
          ),
        ));
  }

  Padding creditRating() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('£50,000',
                  style: TextStyle(fontSize: 24.0, color: Colors.lightBlue)),
              Text('available balance',
                  style: TextStyle(fontSize: 14.0, color: Colors.black45)),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text('08/20',
                    style: TextStyle(fontSize: 20.0, color: Colors.lightBlue)),
              ),
              Text('Valid Until',
                  style: TextStyle(fontSize: 14.0, color: Colors.black45))
            ],
          ),
          percentOne(),
        ],
      ),
    );
  }

  Container cardPanel() {
    return Container(
      height: 150.0,
      margin: EdgeInsets.symmetric(vertical: 32.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 100.0,
            height: 150.0,
            child: Image.asset('assets/Images/mastercard.png'),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text('Master Card debit card',
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
                Text('3567 **** **** 9875',
                    style: TextStyle(fontSize: 18.0, color: Colors.white))
              ],
            ),
            margin: EdgeInsets.fromLTRB(32.0, 52.0, 0, 0),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            (BoxShadow(
                blurRadius: 5, offset: Offset(0.3, 0.1), color: Colors.black26))
          ],
          color: Colors.lightBlueAccent),
    );
  }

  CircularPercentIndicator percentOne() {
    return CircularPercentIndicator(
      radius: 150.0,
      percent: 0.6,
      progressColor: Colors.lightBlue,
      center: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Text(
          '60%',
          style: TextStyle(fontSize: 30.0, color: Colors.lightBlue),
        ),
      ),
      backgroundColor: Colors.white,
      circularStrokeCap: CircularStrokeCap.round,
    );
  }
}
