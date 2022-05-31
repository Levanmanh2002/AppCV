import 'package:appcv/Home/work.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: const Color(0xFFE5E5E5),
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: const <Widget>[
      //       Icon(
      //         Icons.camera_alt,
      //         color: Colors.black,
      //       ),
      //       Text(
      //         'Verify',
      //         style: TextStyle(
      //           color: Colors.black,
      //           fontSize: 20,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       Image(
      //         image: AssetImage('asset/icon/send.png'),
      //       ),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WorkPage(),
                          ),
                        ),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color(0xFFE5E5E5),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('asset/image/avatar.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'AnhBao',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Image(
                        image: AssetImage('asset/icon/offci.png'),
                        width: 20,
                      ),
                    ],
                  ),
                  const Icon(Icons.more_horiz),
                ],
              ),
            ),
            Container(
              height: 600,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/image/itcv.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(0))),
            ),
            const Divider(
              height: 1,
              thickness: 1,
              indent: 2,
              endIndent: 2,
              color: Colors.black,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Icon(Icons.favorite_outline),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage('asset/icon/comm.png'),
                        width: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage('asset/icon/send.png'),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    height: 8,
                    width: 8,
                  ),
                  const Image(
                    image: AssetImage('asset/icon/save.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE5E5E5),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('asset/image/avatar.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Like by ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'Oscar love ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'and ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: '100,000,000 others',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Oscar ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'love this photo,It is so beautiful',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                'View all 100,000 comments',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Comments",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/image/lhhh.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ],
        ),
      ),
    );
  }
}
