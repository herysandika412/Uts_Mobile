import 'package:flutter_uts/detailpembayaran.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uts/bottom_bar.dart';
import 'package:flutter_uts/main.dart';
import 'package:flutter_uts/profil.dart';
import 'package:flutter_uts/tab1.dart';
import 'package:flutter_uts/tab2.dart';

class detailjam extends StatelessWidget {
  final assetPath, clockprice, clockname;

  detailjam({this.assetPath, this.clockprice, this.clockname});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Pasar Laptop',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_box, color: Colors.blueAccent),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profile())
              );
            },//Bagian Ikon tentang Pembuat

          ),
        ],
      ),

      body: ListView(
          children: [
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.only(left: 90.0),
              child: Text(
                  'Jenis Laptop',
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)
              ),
            ),
            SizedBox(height: 15.0),
            Hero(
                tag: assetPath,
                child: Image.asset(assetPath,
                    height: 150.0,
                    width: 100.0,
                    fit: BoxFit.contain
                )
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(clockprice,
                  style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text(clockname,
                  style: TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 24.0)),
            ),
            SizedBox(height: 20.0),

            SizedBox(height: 20.0),
            Center(

                child: Container(
                    width: MediaQuery.of(context).size.width - 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.black
                    ),
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => InputData())
                          );
                        },

                        child: Center(
                          child: Text('Tansaksi',
                            style: TextStyle(
                                fontFamily: 'Varela',
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.red
                            ),

                          ),
                        )
                    )
                )
            )
          ]
      ),


      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MyApp())
        );},
        backgroundColor: Colors.red,
        child: Icon(Icons.home),

      ),

    );
  }
}