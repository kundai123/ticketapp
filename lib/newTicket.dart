import 'package:flutter/material.dart';
import 'dart:html';
import 'package:flutter/material.dart';

class MainNewTicket extends StatefulWidget {
  @override
  NewTicket createState() => NewTicket();
}

class NewTicket extends State<MainNewTicket> {
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainNewTicket()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Submitted"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: 'First Name'),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Surname'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Company Name'),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Branch Name'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Email Adress'),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: 'City'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Request'),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Urgent Level'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration:
                          InputDecoration(labelText: 'Problem Description'),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Grade'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                child: MaterialButton(
                  onPressed: () {
                    showAlertDialog(context);
                  },
                  height: 50,
                  minWidth: 100,
                  color: Colors.blue,
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
