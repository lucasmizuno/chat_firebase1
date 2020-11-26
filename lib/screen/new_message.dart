import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NewMessage extends StatefulWidget {
@override
_NewMessageState createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  String _enteredMessage ='';

void _sendMessage() {
  FocusScope.of(context).unfocus();
  FirebaseFirestore.instance.collection('mensagens').add({
    'msg': _enteredMessage,
    'createdAt': Timestamp.now(),
  });
}

@override
Widget build(BuildContext context)  {
  return Container(
    child: Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(labelText: 'Enviar Mensagem'),
            onChanged: (value) {
              setState(() {
                _enteredMessage = value;
              });
            },
          ),
        ),
        IconButton(
        icon: Icon(Icons.send),
        onPressed: _enteredMessage.trim().isEmpty ? null: _sendMessage,
        ),
      ],
    ));
}
}
   