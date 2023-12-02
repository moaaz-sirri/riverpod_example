import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

CollectionReference usersData = FirebaseFirestore.instance.collection('users');



final streamDataProvider =
    StreamProvider.autoDispose<QuerySnapshot>((ref) => usersData.snapshots());
