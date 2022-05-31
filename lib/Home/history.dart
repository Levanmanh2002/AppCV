import 'package:appcv/Login_Register/login.dart';
import 'package:appcv/Login_Register/login_register.dart';
import 'package:appcv/upload/Upload.dart';
import 'package:appcv/width/done.dart';
import 'package:appcv/width/fai.dart';
import 'package:appcv/width/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<String> _history = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const ImageIcon(AssetImage('asset/icon/next.png'),
              color: Colors.blue),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Upload(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginRegister(),
                ),
              );
            },
            icon: const Icon(
              Icons.person,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff002fff),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Jone Doe',
                      labelStyle: TextStyle(
                        color: Color(0xff3491DB),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextFormField(
                      decoration: const InputDecoration(
                    labelText: 'Jone Doe',
                    labelStyle: TextStyle(
                      color: Color(0xff3491DB),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  TextFormField(
                      decoration: const InputDecoration(
                    labelText: 'Jone Doe',
                    labelStyle: TextStyle(
                      color: Color(0xff3491DB),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  TextFormField(
                      decoration: const InputDecoration(
                    labelText: 'Jone Doe',
                    labelStyle: TextStyle(
                      color: Color(0xff3491DB),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  TextFormField(
                      decoration: const InputDecoration(
                    labelText: 'Jone Doe',
                    labelStyle: TextStyle(
                      color: Color(0xff3491DB),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HistoryPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: const Size(134, 52),
                    side: const BorderSide(
                      color: Color(0xff3491DB),
                      width: 3,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Clear',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3491DB),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Loadingpage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff3491DB),
                    minimumSize: const Size(134, 52),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Download',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
