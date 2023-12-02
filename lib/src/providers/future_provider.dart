import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mastery_app/src/models/photo_model.dart';

// final dateProvider = FutureProvider.autoDispose<String>((ref) => fetchData());
// final dateProvider = FutureProvider.autoDispose<String>((ref) => fetchData());
final dateProvider =
    FutureProvider.autoDispose<List<PhotoModel>>((ref) => fetchData());

// Future<String> fetchData() async {
//   await Future.delayed(const Duration(seconds: 3));
//   // throw Exception();
//   return 'Hello Riverpod!';
// }

Future<List<PhotoModel>> fetchData() async {
  var response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  var data = jsonDecode(response.body);
  List<PhotoModel> listDataModel = [];
  for (int i = 0; i < data.length; i++) {
    listDataModel.add(PhotoModel.fromJson(data[i]));
  }
  return listDataModel;
}
