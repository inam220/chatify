import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'message_bubble.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    }
        final chatDocs = snapshot.data?.docs;
        print(chatDocs?.length);
        return ListView.builder(
          reverse: true,
          itemCount: chatDocs?.length ?? 0,
          itemBuilder: (context, index) {
            return MessageBubble(
              message: chatDocs?[index]['text'],
              isMe: chatDocs?[index]['userId'] ==
                  FirebaseAuth.instance.currentUser?.uid,
              key: ValueKey(chatDocs?[index].id),
              userName: chatDocs?[index]['userName'],
              userImage: chatDocs?[index]['userImage'],
            );
          },
        );
  }
        final chatDocs = snapshot.data?.docs;
        print(chatDocs?.length);
        return ListView.builder(
          reverse: true,
          itemCount: chatDocs?.length ?? 0,
          itemBuilder: (context, index) {
            return MessageBubble(
              message: chatDocs?[index]['text'],
              isMe: chatDocs?[index]['userId'] ==
                  FirebaseAuth.instance.currentUser?.uid,
              key: ValueKey(chatDocs?[index].id),
              userName: chatDocs?[index]['userName'],
              userImage: chatDocs?[index]['userImage'],
            );
          },
        );}
        final chatDocs = snapshot.data?.docs;
        print(chatDocs?.length);
        return ListView.builder(
          reverse: true,
          itemCount: chatDocs?.length ?? 0,
          itemBuilder: (context, index) {
            return MessageBubble(
              message: chatDocs?[index]['text'],
              isMe: chatDocs?[index]['userId'] ==
                  FirebaseAuth.instance.currentUser?.uid,
              key: ValueKey(chatDocs?[index].id),
              userName: chatDocs?[index]['userName'],
              userImage: chatDocs?[index]['userImage'],
            );
          },
        );
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance
           
          .orderBy('createdAt', descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final chatDocs = snapshot.data?.docs;
        print(chatDocs?.length);
        return ListView.builder(
          reverse: true,
          itemCount: chatDocs?.length ?? 0,
          itemBuilder: (context, index) {
            return MessageBubble(
              message: chatDocs?[index]['text'],
              isMe: chatDocs?[index]['userId'] ==
                  FirebaseAuth.instance.currentUser?.uid,
              key: ValueKey(chatDocs?[index].id),
                itemBuilder: (context, index) {
            return MessageBubble(
              message: chatDocs?[index]['text'],
              isMe: chatDocs?[index]['userId'] ==
                  FirebaseAuth.instance.currentUser?.uid,
              key: ValueKey(chatDocs?[index].id),
              userName: chatDocs?[index]['userName'],
              userImage: chatDocs?[index]['userImage'],
            );
          },
        );
              itemBuilder: (context, index) {
            return MessageBubble(
              message: chatDocs?[index]['text'],
              isMe: chatDocs?[index]['userId'] ==
                  FirebaseAuth.instance.currentUser?.uid,
              key: ValueKey(chatDocs?[index].id),
      },
    );
  }
}
