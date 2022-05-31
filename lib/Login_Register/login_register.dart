import 'package:appcv/Login_Register/login.dart';
import 'package:appcv/Login_Register/register.dart';
import 'package:flutter/material.dart';

class LoginRegister extends StatefulWidget {
  const LoginRegister({Key? key}) : super(key: key);

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  late TabController controller;
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: const TabBar(
              indicatorWeight: 1,
              labelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              padding: EdgeInsets.all(20),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.only(left: 75.0, right: 75.0),
              unselectedLabelColor: Color.fromARGB(255, 178, 181, 181),
              labelColor: Color.fromARGB(255, 12, 134, 233),
              indicatorColor: Color.fromARGB(255, 39, 39, 44),
              tabs: [
                Tab(
                  text: "Đăng Nhập",
                ),
                Tab(
                  text: "Đăng Ký",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Login(),
              Register(),
            ],
          ),
        ),
      );
}
