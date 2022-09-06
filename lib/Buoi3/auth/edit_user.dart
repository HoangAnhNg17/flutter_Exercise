import 'package:flutter/material.dart';

class editUser extends StatefulWidget {
  const editUser({Key? key}) : super(key: key);

  @override
  State<editUser> createState() => _editUserState();
}

class _editUserState extends State<editUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.deepPurple,
          size: 29,
        ),
        title: Text(
          'Sửa tài khoản',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          Icon(
            Icons.delete_forever,
            color: Colors.red,
            size: 32,
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            avatar(),
            personalInfo(),
            billInfo(),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.pink,
                ),
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'Lưu',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget avatar() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    margin: EdgeInsets.symmetric(vertical: 8),
    color: Colors.white,
    width: double.infinity,
    child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/img/mac-os.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Text(
          'Đổi ảnh đại diện',
          textAlign: TextAlign.center,
        )
      ],
    ),
  );
}

Widget personalInfo() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(16),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'THÔNG TIN CÁ NHÂN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              label: Text('Số điện thoại'),
              hintStyle: TextStyle(color: Colors.grey.shade200),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurpleAccent),
                borderRadius: BorderRadius.circular(8),
              )),
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              label: Text('Họ & tên'),
              hintStyle: TextStyle(color: Colors.grey.shade200),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurpleAccent),
                borderRadius: BorderRadius.circular(8),
              )),
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              label: Text('Email'),
              hintStyle: TextStyle(color: Colors.grey.shade200),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurpleAccent),
                borderRadius: BorderRadius.circular(8),
              )),
          keyboardType: TextInputType.emailAddress,
        )
      ],
    ),
  );
}

Widget billInfo() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.symmetric(vertical: 8),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'THÔNG TIN XUẤT HÓA ĐƠN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              label: Text('Tên công ty'),
              hintStyle: TextStyle(color: Colors.grey.shade200),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurpleAccent),
                borderRadius: BorderRadius.circular(8),
              )),
          keyboardType: TextInputType.text,
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              label: Text('Mã số thuế'),
              hintStyle: TextStyle(color: Colors.grey.shade200),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurpleAccent),
                borderRadius: BorderRadius.circular(8),
              )),
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              label: Text('Địa chỉ công ty'),
              hintStyle: TextStyle(color: Colors.grey.shade200),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurpleAccent),
                borderRadius: BorderRadius.circular(8),
              )),
          keyboardType: TextInputType.text,
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              label: Text('Ghi chú'),
              hintStyle: TextStyle(color: Colors.grey.shade200),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurpleAccent),
                borderRadius: BorderRadius.circular(8),
              )),
          keyboardType: TextInputType.text,
        )
      ],
    ),
  );
}
