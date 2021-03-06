import 'package:bytebank2/screens/contact_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text(
                'Joao',
                style: TextStyle(fontSize: 24.0),
              ),
              subtitle: Text(
                '0000',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ContactForm())).then((newContact) => debugPrint(newContact.toString()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
