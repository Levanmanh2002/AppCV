// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';

// ignore: camel_case_types
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _ProfileState();
}

class _ProfileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 262,
              decoration: const BoxDecoration(color: Color(0xffE5E5E5)),
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 150, top: 30),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: const <Widget>[
                          Text(
                            'My Profile',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Spacer(),
                          Icon(
                            Icons.edit,
                            color: Colors.blue,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, right: 150),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                image: AssetImage('asset/image/avatar.jpg'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 185, top: 20),
                      child: Row(
                        children: const <Widget>[
                          Text(
                            'Anh Báo',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 20)
                      .copyWith(bottom: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffE5E5E5),
                  ),
                  child: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.person_outline_sharp,
                        size: 20,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'My Info',
                        style: TextStyle(color: Colors.black),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 20)
                      .copyWith(bottom: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffE5E5E5),
                  ),
                  child: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.credit_card,
                        size: 20,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'CV Management',
                        style: TextStyle(color: Colors.black),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 20)
                      .copyWith(bottom: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffE5E5E5),
                  ),
                  child: Row(
                    children: const <Widget>[
                      Icon(
                        Icons.settings_outlined,
                        size: 20,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(color: Colors.black),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ],
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
