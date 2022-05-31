import 'package:appcv/Home/home.dart';
import 'package:appcv/profile/profile.dart';
import 'package:appcv/transactions/transactions.dart';
import 'package:appcv/upload/Upload.dart';
import 'package:appcv/wallet/wallet.dart';
import 'package:appcv/wallet/walletbell.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const WalletBell(),
    const Transactions(),
    const profile(),
    const Upload(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(13),
          height: 90,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            border: Border.all(color: Colors.white, width: 2),
            // boxShadow: const [
            //   BoxShadow(
            //     color: Colors.grey,
            //     blurRadius: 10,
            //     offset: Offset(
            //       1,
            //       1,
            //     ),
            //   ),
            // ],
          ),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: const Color(0xffE5E5E5),
                selectedItemColor: Colors.black,
                iconSize: 20,
                currentIndex: currentIndex,
                onTap: (index) => setState(() => currentIndex = index),
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.list_alt_sharp),
                    label: 'Wallet',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.swap_vert),
                    label: 'Transactions',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_sharp),
                    label: 'Profile',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.upload_file_outlined),
                    label: ('Upload'),
                  ),
                ],
                unselectedItemColor: Colors.grey,
              ),
            ),
          ),
        ),
      );
}
