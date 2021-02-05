import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  Payment({Key key}) : super(key: key);
  static const route = '/payment';
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
        backgroundColor: Colors.purple[700],
        title: Center(
          child: Text(
            "Payment Card",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
      // body
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height / 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  // width: MediaQuery.of(context).size.width / 1,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Card Name",
                      labelText: "Card Name",
                      labelStyle: TextStyle(color: Colors.purple),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      icon: Icon(
                        Icons.person,
                        color: Colors.grey,
                        size: 60,
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                // card number
                Container(
                  margin: EdgeInsets.all(20),
                  // width: MediaQuery.of(context).size.width / 1,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Number",
                      labelText: "Number",
                      labelStyle: TextStyle(color: Colors.purple),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      icon: Image(
                        image: AssetImage('asset/master.png'),
                        fit: BoxFit.fill,
                        width: 60,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                // cvv
                Container(
                  margin: EdgeInsets.all(20),
                  // width: MediaQuery.of(context).size.width / 1,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "CVV",
                      labelText: "CVV",
                      labelStyle: TextStyle(color: Colors.purple),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      icon: Icon(
                        Icons.credit_card_rounded,
                        color: Colors.grey,
                        size: 60,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                // expiry date
                Container(
                  margin: EdgeInsets.all(20),
                  // width: MediaQuery.of(context).size.width / 1,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "10/20",
                      labelText: "Expiry Date",
                      labelStyle: TextStyle(color: Colors.purple),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      icon: Icon(
                        Icons.date_range_sharp,
                        color: Colors.grey,
                        size: 60,
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:40, left: 110, right:110),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: FlatButton(
                    onPressed: (){},
                    child: Center(
                      child: Text('Pay', 
                      style: TextStyle(
                        color: Colors.white),
                      )
                    ),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
