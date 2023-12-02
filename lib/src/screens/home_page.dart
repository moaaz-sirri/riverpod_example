import 'package:riverpod_mastery_app/src/screens/change_notifier_provider_example_screen.dart';
import 'package:riverpod_mastery_app/src/screens/future_provider_example_screen.dart';
import 'package:riverpod_mastery_app/src/screens/stream_provider_example_page.dart';
import 'package:riverpod_mastery_app/src/screens/state_provider_example_page.dart';
import 'package:riverpod_mastery_app/src/screens/provider_example_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Riverpod Mastery App',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
              fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SvgPicture.asset(
            'assets/logo.svg',
            width: 120,
            height: 120,
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProviderExamplePage())),
            child: const Text(
              'Provider ex.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const StateProviderExamplePage())),
            child: const Text(
              'State Provider ex.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FutureProviderExampleScreen())),
            child: const Text(
              'Future Provider ex.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const StreamProviderExamplePage())),
            child: const Text(
              'Stream Provider ex.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const ChangeNotifierProviderExampleScreen())),
            child: const Text(
              'Change Notifier Provider ex.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
