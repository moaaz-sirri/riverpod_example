import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mastery_app/src/models/photo_model.dart';
import 'package:riverpod_mastery_app/src/providers/future_provider.dart';

//fetch text example
// class FutureProviderExampleScreen extends ConsumerWidget {
//   const FutureProviderExampleScreen({super.key});

//   @override
//   Widget build(BuildContext context, ref) {
//     final data = ref.watch(dateProvider);
//     return Scaffold(
//       appBar: AppBar(title: const Text('Future Provider Example')),
//       body: Center(
//         child: data.when(
//             data: (String value) => Text(
//                   value,
//                   style: const TextStyle(fontSize: 35),
//                 ),
//             error: (error, stack) => const Text(
//                   'Failed Loading Data',
//                   style: TextStyle(fontSize: 35, color: Colors.red),
//                 ),
//             loading: () => const CircularProgressIndicator()),
//       ),
//     );
//   }
// }

//Fetch all photo example
class FutureProviderExampleScreen extends ConsumerWidget {
  const FutureProviderExampleScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(dateProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Future Provider Example')),
      body: Center(
        child: data.when(
            data: (List<PhotoModel> value) =>
                ListView.builder(itemBuilder: (context, i) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CachedNetworkImage(
                          imageUrl: value[i].url,
                          width: 150,
                          height: 150,
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            value[i].title,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
            error: (error, stack) => const Text(
                  'Failed Loading Data',
                  style: TextStyle(fontSize: 35, color: Colors.red),
                ),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
