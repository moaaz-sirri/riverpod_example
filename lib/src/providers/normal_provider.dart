import 'package:flutter_riverpod/flutter_riverpod.dart';

final textProvider = Provider<String>((ref) => 'Hello Riverpod!');

// final textProvider = Provider<String>((ref) {
//   return 'Hello Riverpod!';
// });
