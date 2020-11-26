import 'package:chat_firebase/screen/messages.dart';
import 'package:chat_firebase/screen/new_message.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(child: Messages()),
            NewMessage(),
          ],
        ),
      ),
    );
  }
}



















    /* Scaffold(
        body: StreamBuilder(
          stream:
          FirebaseFirestore.instance
          .collection('mensagens')
          .orderBy('createdAt', descending: true)
          .snapshots(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            final documents = snapshot.data.docs;

            return ListView.builder(
              itemCount: documents.length,
              itemBuilder: (ctx, i) => Container(
                padding: EdgeInsets.all(8),
                child: Text(documents[i]['msg']),
              ),
            );
          }),

         /* TextField(
            decoration: InputDecoration(
              labelText: 'Enviar Mensagem...'),
              onChanged: (value){
              setState((){
                _enteredMessage = value;
              });
              
              },
            ) */ 


      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),
        onPressed:() {
          FirebaseFirestore.instance.collection('mensagens').add({
            'msg': 'Adicionando pelo App',
            'createAt': Timestamp.now(),
          });
        },
      ),
    );
  }
}
 */