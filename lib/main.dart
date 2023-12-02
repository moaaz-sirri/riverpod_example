import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_mastery_app/src/screens/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Mastery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
} 
































// ConsumerWidget context, watch
//watch(nameProvider) 
//watch(ageProvider).state

// Consumer(builder: (context, watch, child)=> Text()),

//Provider 
//StateProvider
//FutureProvider
//StreamProvider
//compainded two provider 
//compaining provider 
//many provider without effect on ur app performance 
//ChangeNotifierProvider
//jsonplaceholder.typicode.com

//cach for result ,, auto dispose

//reach to provider using context in ChangeNotifierProvider (this one is the best practice)

//logic one layer 
//presentatiion one layer 
//resourse and preformace 
