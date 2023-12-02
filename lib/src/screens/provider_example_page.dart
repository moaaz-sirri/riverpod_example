import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mastery_app/src/providers/normal_provider.dart';

/* this example to learn: 
 * how to define my provider
 * what is consumer widget 
 * how to reach to data in my provider
 */
class ProviderExamplePage extends ConsumerWidget {
  const ProviderExamplePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Example')),
      body: Center(
        child: Text(
          ref.watch(textProvider),
          style: const TextStyle(fontSize: 45),
        ),
      ),
    );
  }
}
