import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mastery_app/src/providers/change_notifier_provider.dart';



class ChangeNotifierProviderExampleScreen extends ConsumerWidget {
  const ChangeNotifierProviderExampleScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final counterChange = ref.watch(counterNotifier);
    return Scaffold(
      appBar: AppBar(title: const Text('Change Notifier Provider Example')),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Text(
            counterChange.counter.toString(),
            style: const TextStyle(fontSize: 80),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  counterChange.decrease();
                },
                child: const Text(
                  "-",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  counterChange.increase();
                },
                child: const Text(
                  '+',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
