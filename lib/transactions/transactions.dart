// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 1,
          title: const Text(
            'Transactions',
            style: TextStyle(color: Colors.black),
          ),
          toolbarHeight: 90,
          actions: [
            IconButton(
              color: Colors.blue,
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(),
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffE5E5E5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TabBar(
                  labelColor: Colors.black,
                  indicator: BoxDecoration(
                    color: const Color(0xfff8bb18),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tabs: const [
                    Tab(text: 'Incomes'),
                    Tab(text: 'Expenses'),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      child: const Text('123'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: const [
                              Text(
                                'October, 2020',
                              ),
                            ],
                          ),
                        ),

                        ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          leading: Container(
                            alignment: Alignment.topLeft,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                image: AssetImage('asset/image/YaraKhalil.jpg'),
                              ),
                            ),
                          ),
                          title: const Text(
                            'Yara Khalil',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
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
                            '-\$12.50',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          leading: Container(
                            alignment: Alignment.topCenter,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                image: AssetImage('asset/image/SaharFawzi.jpg'),
                              ),
                            ),
                          ),
                          title: const Text(
                            'Sahar Fawzi',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Oct 15, 09:10 PM',
                            style: TextStyle(fontSize: 13),
                          ),
                          trailing: const Text(
                            '-\$54.00',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          leading: Container(
                            alignment: Alignment.topCenter,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                image:
                                    AssetImage('asset/image/SaraIbrahim.webp'),
                              ),
                            ),
                          ),
                          title: const Text(
                            'Sara Ibrahim',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Oct 12, 02:13 PM',
                            style: TextStyle(fontSize: 13),
                          ),
                          trailing: const Text(
                            '-\$25.00',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          leading: Container(
                            alignment: Alignment.topCenter,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'asset/image/NisreenIsmail.webp'),
                              ),
                            ),
                          ),
                          title: const Text(
                            'Nisreen Ismail',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Oct 07, 09:10 PM',
                            style: TextStyle(fontSize: 13),
                          ),
                          trailing: const Text(
                            '-\$10.50',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          leading: Container(
                            alignment: Alignment.topCenter,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                image:
                                    AssetImage('asset/image/AhmadIbrahim.jpg'),
                              ),
                            ),
                          ),
                          title: const Text(
                            'Ahmad Ibrahim',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            'Oct 02, 01:19 AM',
                            style: TextStyle(fontSize: 13),
                          ),
                          trailing: const Text(
                            '-\$08.00',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        // const ListTile(
                        //   contentPadding: EdgeInsets.all(0),
                        //   title: Text(
                        //     'September, 2020',
                        //     style: TextStyle(
                        //       fontSize: 13,
                        //     ),
                        //   ),
                        // ),
                        // ListTile(
                        //   contentPadding: const EdgeInsets.all(0),
                        //   leading: Container(
                        //     alignment: Alignment.topCenter,
                        //     width: 50,
                        //     height: 50,
                        //     decoration: BoxDecoration(
                        //       color: Colors.white,
                        //       borderRadius: BorderRadius.circular(50),
                        //       image: const DecorationImage(
                        //         image:
                        //             AssetImage('asset/image/AhmadIbrahim.jpg'),
                        //       ),
                        //     ),
                        //   ),
                        //   title: const Text(
                        //     'Ahmad Ibrahim',
                        //     overflow: TextOverflow.ellipsis,
                        //     maxLines: 1,
                        //     style: TextStyle(
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        //   subtitle: const Text(
                        //     'Oct 02, 01:19 AM',
                        //     style: TextStyle(fontSize: 13),
                        //   ),
                        //   trailing: const Text(
                        //     '-\$08.00',
                        //     style: TextStyle(
                        //       fontSize: 18,
                        //       fontWeight: FontWeight.w700,
                        //     ),
                        //   ),
                        // ),
                        // ListTile(
                        //   contentPadding: const EdgeInsets.all(0),
                        //   leading: Container(
                        //     alignment: Alignment.topCenter,
                        //     width: 50,
                        //     height: 50,
                        //     decoration: BoxDecoration(
                        //       color: Colors.white,
                        //       borderRadius: BorderRadius.circular(50),
                        //       image: const DecorationImage(
                        //         image:
                        //             AssetImage('asset/image/AhmadIbrahim.jpg'),
                        //       ),
                        //     ),
                        //   ),
                        //   title: const Text(
                        //     'Ahmad Ibrahim',
                        //     overflow: TextOverflow.ellipsis,
                        //     maxLines: 1,
                        //     style: TextStyle(
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        //   subtitle: const Text(
                        //     'Oct 02, 01:19 AM',
                        //     style: TextStyle(fontSize: 13),
                        //   ),
                        //   trailing: const Text(
                        //     '-\$08.00',
                        //     style: TextStyle(
                        //       fontSize: 18,
                        //       fontWeight: FontWeight.w700,
                        //     ),
                        //   ),
                        // ),
                        // ListTile(
                        //   contentPadding: const EdgeInsets.all(0),
                        //   leading: Container(
                        //     alignment: Alignment.topCenter,
                        //     width: 50,
                        //     height: 50,
                        //     decoration: BoxDecoration(
                        //       color: Colors.white,
                        //       borderRadius: BorderRadius.circular(50),
                        //       image: const DecorationImage(
                        //         image:
                        //             AssetImage('asset/image/AhmadIbrahim.jpg'),
                        //       ),
                        //     ),
                        //   ),
                        //   title: const Text(
                        //     'Ahmad Ibrahim',
                        //     overflow: TextOverflow.ellipsis,
                        //     maxLines: 1,
                        //     style: TextStyle(
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        //   subtitle: const Text(
                        //     'Oct 02, 01:19 AM',
                        //     style: TextStyle(fontSize: 13),
                        //   ),
                        //   trailing: const Text(
                        //     '-\$08.00',
                        //     style: TextStyle(
                        //       fontSize: 18,
                        //       fontWeight: FontWeight.w700,
                        //     ),
                        //   ),
                        // ),
                        // ListTile(
                        //   contentPadding: const EdgeInsets.all(0),
                        //   leading: Container(
                        //     alignment: Alignment.topCenter,
                        //     width: 50,
                        //     height: 50,
                        //     decoration: BoxDecoration(
                        //       color: Colors.white,
                        //       borderRadius: BorderRadius.circular(50),
                        //       image: const DecorationImage(
                        //         image:
                        //             AssetImage('asset/image/AhmadIbrahim.jpg'),
                        //       ),
                        //     ),
                        //   ),
                        //   title: const Text(
                        //     'Ahmad Ibrahim',
                        //     overflow: TextOverflow.ellipsis,
                        //     maxLines: 1,
                        //     style: TextStyle(
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        //   subtitle: const Text(
                        //     'Oct 02, 01:19 AM',
                        //     style: TextStyle(fontSize: 13),
                        //   ),
                        //   trailing: const Text(
                        //     '-\$08.00',
                        //     style: TextStyle(
                        //       fontSize: 18,
                        //       fontWeight: FontWeight.w700,
                        //     ),
                        //   ),
                        // ),
                        // ListTile(
                        //   contentPadding: const EdgeInsets.all(0),
                        //   leading: Container(
                        //     alignment: Alignment.topCenter,
                        //     width: 50,
                        //     height: 50,
                        //     decoration: BoxDecoration(
                        //       color: Colors.white,
                        //       borderRadius: BorderRadius.circular(50),
                        //       image: const DecorationImage(
                        //         image:
                        //             AssetImage('asset/image/AhmadIbrahim.jpg'),
                        //       ),
                        //     ),
                        //   ),
                        //   title: const Text(
                        //     'Ahmad Ibrahim',
                        //     overflow: TextOverflow.ellipsis,
                        //     maxLines: 1,
                        //     style: TextStyle(
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        //   subtitle: const Text(
                        //     'Oct 02, 01:19 AM',
                        //     style: TextStyle(fontSize: 13),
                        //   ),
                        //   trailing: const Text(
                        //     '-\$08.00',
                        //     style: TextStyle(
                        //       fontSize: 18,
                        //       fontWeight: FontWeight.w700,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => close(context, null),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
          },
        ),
      ];

  @override
  Widget buildResults(BuildContext context) => Container();

  @override
  Widget buildSuggestions(BuildContext context) => Container();
}
