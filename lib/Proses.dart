import 'package:flutter_uts/detailpembayaran.dart';
import 'package:flutter_uts/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 110,left: 5,right: 10),
                child:
                Image.asset('assets/2994367789.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:50),
                child: Text(
                  'Terimakasih',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 0,
                    color: Colors.black,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:100),
                child: Text(
                  'Telah melakuakn pembelian',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 0.2,
                    height: 1,
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),

              Container(
                margin: EdgeInsets.only(left: 50,right: 50,bottom: 20,top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child:
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      color: Colors.red,

                      child: Text(
                        'Kembali Ke Home',
                        style:
                        TextStyle(color:Colors.white,fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      );
  }
}