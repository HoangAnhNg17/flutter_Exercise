import 'package:flutter/material.dart';
import 'notifi_class.dart';

class NotiPage extends StatefulWidget {
  const NotiPage({Key? key}) : super(key: key);

  @override
  State<NotiPage> createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage> {
  var notiList = [];
  var tabBar = [];
  var selectedIndex = 0;
  var curString = '';

  @override
  void initState() {
    // TODO: implement initState
    final noti1 = Noti(
        1,
        '22/2/2022',
        'Giao dịch',
        'Nạp tiền điện thoại',
        'Nạp dế cho cạ cứng nhận quà HOT\n\nCạ cứng được Viettel khuyến mại 20%, còn bạn được MoMo hoàn thêm 5%(áp dụng từ 12h-14h). Duy nhất ngày 31/8. Nạp giúp bạn ngay!',
        Icons.mobile_friendly, false);
    notiList.addAll([
      noti1,
      noti1,
      noti1,
      noti1,
      noti1,
      noti1,
      noti1,
      noti1,
      noti1,
      noti1,
    ]);
    tabBar.addAll(['Giao dịch', 'Ưu đãi', 'Cập nhật', 'Tất cả']);
    super.initState();
  }

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
          'Thông báo(${notiList.length})',
          textAlign: TextAlign.center,
        ),
        actions: [
          Row(
            children: <Widget>[
              Icon(Icons.check),
              SizedBox(
                width: 16,
              ),
              Icon(Icons.settings),
              SizedBox(
                width: 16,
              ),
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
            height: 77,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return buildTypeNoti(tabBar: tabBar[index], index: index);
              },
              itemCount: tabBar.length,
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: notiList.length,
              itemBuilder: (context, i) {
                return buildBody(noti: notiList[i]);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget buildTypeNoti({required tabBar, required index}) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
        child: Text(
          '${tabBar}',
          style: TextStyle(
            color: selectedIndex == index ? Colors.white : Colors.grey.shade600,
            fontWeight: FontWeight.w400,
            fontSize: 17,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: selectedIndex == index ? Colors.pink : Colors.grey.shade100,

        ),
      ),
    );
  }

  Widget buildBody({required Noti noti}) {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(4,4),
              ),
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(-4, -4),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        noti.icon,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        noti.title,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.brightness_1,
                        size: 12,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text('5 giờ trước'),
                      SizedBox(
                        width: 7,
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                )
              ],
            ),
            Divider(
              thickness: 0.2,
              color: Colors.black,
            ),
            Text(noti.content),
          ],
        ),
      );
  }

}


