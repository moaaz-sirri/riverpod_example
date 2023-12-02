import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_mastery_app/src/models/user_model.dart';
import 'package:riverpod_mastery_app/src/providers/stream_provider.dart';

class StreamProviderExamplePage extends ConsumerWidget {
  const StreamProviderExamplePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final stream = ref.watch(streamDataProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Stream Provider Example')),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Center(
          child: stream.when(
              data: (QuerySnapshot value) {
                return ListView.builder(
                    itemCount: value.docs.length,
                    itemBuilder: (context, i) {
                      UserModel user = UserModel.fromJson(
                          value.docs[i].data() as Map<String, dynamic>);
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              user.name,
                              style: const TextStyle(fontSize: 30),
                            ),
                            Text(
                              user.mobile,
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black54),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      );
                    });
              },
              error: (error, stack) => const Text(
                    'Failed Loading Data',
                    style: TextStyle(fontSize: 35, color: Colors.red),
                  ),
              loading: () => const CircularProgressIndicator()),
        ),
      ),
    );
  }
}
