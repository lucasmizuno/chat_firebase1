import 'package:chat_firebase/screen/bolha_mensagem.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
      .collection('messages')
      .orderBy('createdAt', descending: true)
      .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        final documents = snapshot.data.docs;

        return ListView.builder(
          reverse: true,
          itemCount: documents.length,
          itemBuilder: (ctx, i) => BolhaMensagem(
            documents[i]['msg'],
          ),
        );
      });
  }
}