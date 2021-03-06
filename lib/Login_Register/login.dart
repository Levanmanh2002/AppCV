import 'package:appcv/Login_Register/button.dart';
import 'package:appcv/Login_Register/email.dart';
import 'package:appcv/Login_Register/pass_end.dart';
import 'package:appcv/Login_Register/password.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  get yourCallbackFunction => '';
  bool isChecked = false;
  late Box box1;
  void getdata() async {
    if (box1.get('email') != null) {
      EmailWight.text = box1.get('email');
      isChecked = true;
      setState(() {});
    }
    if (box1.get('pass') != null) {
      Password.text = box1.get('pass');
      isChecked = true;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: AutofillGroup(
                child: Column(
                  children: [
                    EmailWight(controller: emailController),
                    const SizedBox(height: 16),
                    Password(controller: passwordController),
                    const SizedBox(
                      height: 20,
                    ),
                    buildLeftRightPassword(),
                    buildButton(),
                    const SizedBox(
                      height: 20,
                    ),
                    buildText(),
                    const SizedBox(
                      height: 10,
                    ),
                    buildNoAccount(),
                    buildIamge(),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget buildButton() => ButtonWidget(
        text: '????ng nh???p',
        onClicked: login,
      );

  void login() {
    final form = formKey.currentState!;
    if (form.validate()) {
      box1.put('emalil', EmailWight.text);
      box1.put('pass', Password.text);
    }
  }

  Widget buildLeftRightPassword() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              isChecked = !isChecked;
              setState(() {});
            },
          ),
          const Text(
            'Ghi nh??? m???t kh???u',
          ),
          TextButton(
            child: const Text(
              'Qu??n m???t kh???u',
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (login) => const end()));
            },
          ),
        ],
      );

  Widget buildText() => (const Text(
        'Ho???c k???t n???i v???i',
        style: TextStyle(fontSize: 20),
      ));

  Widget buildNoAccount() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              children: [
                Image.asset(
                  'asset/image/facebook.png',
                  width: 30,
                  height: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'asset/image/google.png',
                  width: 30,
                  height: 30,
                ),
              ],
            ),
          )
        ],
      );
  Widget buildIamge() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              children: [
                Image.asset(
                  'asset/image/img2.png',
                  width: 310,
                  height: 310,
                ),
              ],
            ),
          ),
        ],
      );
}
