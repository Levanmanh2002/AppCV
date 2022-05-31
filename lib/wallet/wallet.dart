// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

enum ButtonType { payBills, donate, receiptients, offers }
enum TransactionType { sent, received, pending }
void _onSearchButtonPressed() {
  print("search button clicked");
}

class _WalletState extends State<Wallet> {
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
                          IconButton(
                            icon: Icon(Icons.notifications),
                            color: Colors.white,
                            onPressed: (null),
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
                          onPrimary: Colors.black, // foreground
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
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Image.asset(
                'asset/image/wallet.png',
                width: 138,
                height: 138,
              ),
            ),
            const Center(
              child: Text(
                "There's no transactions till now!",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
