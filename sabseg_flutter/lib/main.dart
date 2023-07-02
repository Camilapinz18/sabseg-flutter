import 'package:flutter/material.dart';
import 'package:sabseg_flutter/profile_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.purple),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.purple),
      themeMode: ThemeMode.light,
      home: RootPage(),
    );
  }
}

//Este widget se usa para cosas que requieran cambio de estado
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [HomePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Old Skull Productions'),
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('pressed');
          },
          child: const Icon(Icons.add)),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.punch_clock), label: 'Time')
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
