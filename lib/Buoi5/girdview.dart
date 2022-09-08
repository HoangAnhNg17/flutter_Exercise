import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Chess',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.grey,
      body: buildChess(9)
    );
  }
  Widget buildChess(int n) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: n,
                childAspectRatio: 1
            ),
            itemCount: n * n,
            itemBuilder: (context, index) {
              return (n % 2 != 0 && index % 2 == 0 ) || (n % 2 == 0 && ((index % 2 == 0 && (index ~/ n) % 2 == 0) || (index % 2 != 0 && (index ~/ n) % 2 != 0))) ? Black(index :index, n: n) : White(index: index, n: n);
            },
          ),
        ],
      ),
    );
  }
  Widget Black({required index, required n}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          print('Row ${(index ~/ n) + 1} , Col ${(index % n)}');
        });
      },
      child: Container(
        color: Colors.black,
      ),
    );
  }

  Widget White({required index, required n}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          print('Row ${(index ~/ n) + 1} , Col ${(index % n) +1}');
        });
      },
      child: Container(
        color: Colors.white,
      ),
    );
  }


}
