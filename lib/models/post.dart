import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String postId;
  final String username;
  final datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  Post({
    required this.description,
    required this.uid,
    required this.postId,
    required this.username,
    required this.datePublished,
    required this.postUrl,
    required this.profImage,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        "description": description,
        "username": username,
        "uid": uid,
        "postId": postId,
        "datePublished": datePublished,
        "profImage": profImage,
        "likes": likes,
        "postUrl": postUrl,
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Post(
        username: snapshot['username'],
        uid: snapshot['uid'],
        profImage: snapshot['profImage'],
        datePublished: snapshot['datePublished'],
        postId: snapshot['postId'],
        description: snapshot['description'],
        postUrl: snapshot['postUrl'],
        likes: snapshot['likes']);
  }
}
