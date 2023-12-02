import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mastery_app/src/providers/counter_provider.dart';

/* this example to learn: 
 * how to define my state provider
 * the different between Consumer and ConsumerWidget 
 * the different between provider and state provider
 * how to reach to data in my state provider
 * how to change the state in my state provider
 * the different between read and watch 
 * //read: Reads a provider without listening to it.
 * //watch: Returns the value exposed by a provider and rebuild the widget when that value changes.
 */

//ConsumerWidget
class StateProviderExamplePage extends ConsumerWidget {
  const StateProviderExamplePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    print("build whole screen");
    return Scaffold(
      appBar: AppBar(title: const Text('State Provider Example')),
      body: Center(
        child: Text(
          ref.watch(counterProvider).toString(),
          style: const TextStyle(fontSize: 80),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.add, color: Colors.purple),
      ),
    );
  }
}

// //Consumer
// class StateProviderExamplePage extends StatelessWidget {
//   const StateProviderExamplePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     print("build whole screen");
//     return Scaffold(
//       appBar: AppBar(title: const Text('State Provider Example')),
//       body: Center(
//         child: Consumer(builder: (context, ref, child) {
//           print("build text widget only");
//           return Text(
//             ref.watch(counterProvider).toString(),
//             style: const TextStyle(fontSize: 80),
//           );
//         }),
//       ),
//       floatingActionButton: Consumer(builder: (context, ref, child) {
//         return FloatingActionButton(
//           onPressed: () {
//             ref.read(counterProvider.notifier).state++;
//           },
//           child: const Icon(Icons.add, color: Colors.purple),
//         );
//       }),
//     );
//   }
// }
