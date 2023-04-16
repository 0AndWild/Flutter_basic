import 'package:flutter/material.dart';

void main() {
  runApp(const Typography());
}

class Typography extends StatelessWidget {
  const Typography({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: [Icon(Icons.category), Icon(Icons.access_time)], title: Text('App')),
        body: SizedBox(
          child: ElevatedButton(
            child: Text('Button'),
            onPressed: () {},
          )
          // Text(
          //   'Hi',
          //   style: TextStyle(
          //       fontFamily: AutofillHints.jobTitle,
          //       fontSize: 30,
          //       fontWeight: FontWeight.w700,
          //       color: Colors.amber),
          // ),
        ),
      ),
    );
  }
}

class BoxDesign extends StatelessWidget {
  const BoxDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('앱임')),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            // margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            //BoxDecoration = 테두리 색 넣어줄때 사용
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.black87)
            // ),
            // padding: EdgeInsets.all(20),
            child: Center(child: Text('test')),
          ),
        ),
      ),
    );
  }
}

//Scaffold 활용법
class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Scaffold 는 상중하로 나눠주는 위젯임
        home: Scaffold(
      appBar: AppBar(
        title: Text('앱임'),
      ),
      // Row 는 가로 배열 배치, Column 은 세로 배치
      body: Column(
          //가로 정렬
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //세로 정렬
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.search),
            Icon(Icons.access_time_rounded),
            Icon(Icons.account_circle),
          ]),
      // BottomNavigationBar 활용
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'phone_call'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: 'phone_number')
        ],
      ),
      //bottomAppbar 활용
      // bottomNavigationBar: BottomAppBar(
      //   //ContainerBox 보다 SizedBox가 더 가벼움
      //   child: SizedBox(
      //     height: 70,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Icon(Icons.phone),
      //         Icon(Icons.message),
      //         Icon(Icons.contact_page)
      //       ],
      //     ),
      //   ),
      // )
    ));
  }
}

//Container 사용법
class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //Center 는 부모 위젯(하위 위젯 설정의 기준점이 됨)
        home: Center(
      child: Container(width: 50, height: 50, color: Colors.black12),
    ));
  }
}

//Image 파일 사용법
class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //pubspec.yml 에서 assets directory에 대한 설정 진행 후 경로를 표시해주면 해당 이미지를 불러옴
        home: Image.asset('assets/dogy.jpeg'));
  }
}

/// Icon 사용법
class IconPage extends StatelessWidget {
  const IconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Icon(Icons.shop));
  }
}

//Text 사용법
class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text('This is Text Page'),
    );
  }
}
