import 'package:flutter_uts/Proses.dart';
import 'package:flutter_uts/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_uts/detailbarang.dart';

class InputData extends StatefulWidget {
  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {

  String nama='';
  String alamat='';
  int jumlah=0;
  int No=0;
  final focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              Container(
                margin: EdgeInsets.only(top:25,left: 0),
                alignment: Alignment.center,
                child: Text(
                  'Masukan Data',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Pengiriman',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //Input Nama
              Container(
                padding: EdgeInsets.only(top: 30),
                margin: EdgeInsets.only(left: 45),
                child: Text(
                  'Nama',
                  style: TextStyle(
                    height: 0,
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 0,left: 20,right: 20),
                  padding: EdgeInsets.all(10),
                  // color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          onChanged: (txt) {
                            setState(() {
                              nama=txt;
                            });
                          },
                          textCapitalization: TextCapitalization.sentences,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize:14,
                          ),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top:20,bottom:20,left: 30),
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                  borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none
                                  )
                              ),

                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Nama'
                          ),
                        ),
                      ),
                    ],
                  )),

              //Input Alamat
              Container(
                padding: EdgeInsets.only(top: 30),
                margin: EdgeInsets.only(left: 45),
                child: Text(
                  'Alamat',
                  style: TextStyle(
                    height: 0,
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 0,left: 20,right: 20),
                  padding: EdgeInsets.all(10),
                  // color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          onChanged: (txt) {
                            setState(() {
                              alamat=txt;
                            });
                          },
                          textCapitalization: TextCapitalization.sentences,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize:14,
                          ),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top:20,bottom:20,left: 30),
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                  borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none
                                  )
                              ),

                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Alamat Tinggal'
                          ),
                        ),
                      ),
                    ],
                  )),

              //Input Jumlah
              Container(
                padding: EdgeInsets.only(top: 30),
                margin: EdgeInsets.only(left: 45),
                child: Text(
                  'Jumlah Barang',
                  style: TextStyle(
                    height: 0,
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 0,left: 20,right: 20),
                  padding: EdgeInsets.all(10),
                  // color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          onChanged: (txt) {
                            setState(() {
                              jumlah=int.parse(txt);
                            });
                          },
                          textCapitalization: TextCapitalization.sentences,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize:14,
                          ),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top:20,bottom:20,left: 30),
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                  borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none
                                  )
                              ),

                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Jumlah Barang'
                          ),
                        ),
                      ),
                    ],
                  )),

              //Input No Hape
              Container(
                padding: EdgeInsets.only(top: 30),
                margin: EdgeInsets.only(left: 45),
                child: Text(
                  'No Handphone',
                  style: TextStyle(
                    height: 0,
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 0,left: 20,right: 20),
                  padding: EdgeInsets.all(10),
                  // color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          onChanged: (txt) {
                            setState(() {
                              No=int.parse(txt);
                            });
                          },
                          textCapitalization: TextCapitalization.sentences,
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize:14,
                          ),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top:20,bottom:20,left: 30),
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                  borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none
                                  )
                              ),

                              fillColor: Colors.white,
                              filled: true,
                              hintText: '+62XXXX'
                          ),
                        ),
                      ),
                    ],
                  )),

              Container(
                //height: double.infinity,
                margin: EdgeInsets.only(left: 50,right: 50,bottom: 20,top: 30),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Landing()),
                    );
                  },
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  color: Colors.red,
                  textColor: Colors.black,
                  child: Text(
                    'Kirim',
                    style:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                ),
              ),
            ],
          ),
        ),
      );
  }
}

