import 'package:flutter/material.dart';
import 'notifi_class.dart';

class NotiPage extends StatefulWidget {
  const NotiPage({Key? key}) : super(key: key);

  @override
  State<NotiPage> createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage> {
  final noti1 = Noti(1, '22/2/2022', 'Giao dịch', 'Nạp tiền điện thoại', 'Nạp cho dế quà cứng nhận quà HOT', Icons.mobile_friendly, true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.pink,
        leading: const Icon(
          Icons.arrow_back,
          size: 30,
          color: Colors.white,
        ),
        title: Text(
          'Thông báo()',
          textAlign: TextAlign.center,
        ),
        actions: [
          Row(
            children: <Widget>[
              Icon(Icons.check),
              SizedBox(width: 16,),
              Icon(Icons.settings),
              SizedBox(width: 16,),
            ],
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildTypeNoti('Giao dịch'),
                  buildTypeNoti('Ưu đãi'),
                  buildTypeNoti('Cập nhật'),
                  buildTypeNoti('Tất cả'),
                ],
              ),
            ),
          ),
          ListView(
            children: [
              buildBody(noti: noti1),
            ],
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
          )
        ],
      ),
    );
  }
}

Widget buildTypeNoti(String typeof) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 8),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
    child: Text(
      '$typeof',
      style: TextStyle(
        color: Colors.grey.shade600,
        fontWeight: FontWeight.w400,
        fontSize: 17,
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.grey.shade100,
    ),
  );
}

Widget buildBody({required Noti noti}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: Colors.grey,
        width: 1,
      )
    ),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(noti.icon, color: Colors.blue,),
                  SizedBox(width: 8,),
                  Text(
                    noti.title,
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.brightness_1, size: 15, color: Colors.red,),
                ],
              ),
            ),
            SizedBox(width: 5,),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text('5 giờ trước'),
                  Icon(Icons.more_horiz),
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
