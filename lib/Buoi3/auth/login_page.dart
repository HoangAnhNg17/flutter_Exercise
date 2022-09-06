import 'package:flutter/material.dart';
import 'package:flutter_study/Buoi3/app.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final phoneController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    phoneController.text = '';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Row(
            children: const [
              Text(
                'Hotline ',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text(
                '19002888',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 16),
            ],
          )
        ],
      ),
      backgroundColor: Colors.grey.shade100,
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          const Text(
            'Số điện thoại',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'Nhập số điện thoại để bắt đầu',
          ),
          const SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Hãy nhập số điện thoại của bạn',
              hintStyle: TextStyle(color: Colors.grey.withOpacity(0.9)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.blue),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.blue),
              ),
            ),
            keyboardType: TextInputType.number,
            maxLength: 10,
          ),
          const SizedBox(
            height: 16,
          ),
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Bằng việc tiếp tục, tôi đã đọc và đồng ý với ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'Chính sách & điều khoản ',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'của LuckyBall',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Container(
            height: 47,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red.shade700,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 5),
                )
              ]
            ),
            alignment: Alignment.center,
            child: const Text(
              'Tiếp tục',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),

          ),
        ],
      ),
    );
  }
}
