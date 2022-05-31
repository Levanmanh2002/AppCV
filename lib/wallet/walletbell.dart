// ignore_for_file: avoid_unnecessary_containers

import 'package:appcv/wallet/wallet.dart';
import 'package:flutter/material.dart';

class WalletBell extends StatefulWidget {
  const WalletBell({Key? key}) : super(key: key);

  @override
  State<WalletBell> createState() => _WalletBellState();
}

class _WalletBellState extends State<WalletBell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 250,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff002fff),
                    Color(0xff3491DB),
                  ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp,
                ),
              ),
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 30, top: 20),
                      child: Row(
                        children: const [
                          Text(
                            'Dashboard',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 170,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
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
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'Hi, Amanda!',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Total Balance',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Row(
                        children: const [
                          Text(
                            '\$124.57',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 170,
                          ),
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(175, 49),
                          textStyle: const TextStyle(fontSize: 20),
                          primary: const Color(0xffF8BB18), // background
                          onPrimary: Colors.white, // foreground
                        ),
                        child: Row(
                          children: const <Widget>[
                            RotatedBox(
                              quarterTurns: 3,
                              child: IconButton(
                                icon: Icon(
                                  Icons.send,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                onPressed: (null),
                              ),
                            ),
                            Text(
                              "Send Money",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(175, 49),
                      textStyle: const TextStyle(fontSize: 20),
                      primary: const Color(0xff1A87DD), // background
                      onPrimary: Colors.white, // foreground
                    ),
                    child: Row(
                      children: const <Widget>[
                        RotatedBox(
                          quarterTurns: 1,
                          child: IconButton(
                            icon: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 15,
                            ),
                            onPressed: (null),
                          ),
                        ),
                        Text(
                          "Withdraw",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Column(
                    children: const [
                      Text(
                        'Last Transactions',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.only(left: 175, top: 30),
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage('asset/image/YaraKhalil.jpg'),
                    ),
                  ),
                ),
                title: const Text(
                  'Yara Khalil',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Oct 14, 10:24 AM',
                  style: TextStyle(fontSize: 13),
                ),
                trailing: const Text(
                  '-\$15.00',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage('asset/image/SaraIbrahim.webp'),
                    ),
                  ),
                ),
                title: const Text(
                  'Sara Ibrahim',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                subtitle: const Text(
                  'Oct 12, 02:13 PM',
                  style: TextStyle(fontSize: 13),
                ),
                trailing: const Text(
                  '+\$20.50',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage('asset/image/AhmadIbrahim.jpg'),
                    ),
                  ),
                ),
                title: const Text(
                  'Ahmad Ibrahim',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                subtitle: const Text(
                  'Oct 11, 01:19 AM',
                  style: TextStyle(fontSize: 13),
                ),
                trailing: const Text(
                  '+\$12.40',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage('asset/image/ReemKhaled.jpg'),
                    ),
                  ),
                ),
                title: const Text(
                  'Reem Khaled',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                subtitle: const Text(
                  'Oct 07, 09:10 PM',
                  style: TextStyle(fontSize: 13),
                ),
                trailing: const Text(
                  '-\$21.30',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage('asset/image/HibaSaleh.jpg'),
                    ),
                  ),
                ),
                title: const Text(
                  'Hiba Saleh',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                subtitle: const Text(
                  'Oct 04, 05:45 AM',
                  style: TextStyle(fontSize: 13),
                ),
                trailing: const Text(
                  '+\$09.00',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
