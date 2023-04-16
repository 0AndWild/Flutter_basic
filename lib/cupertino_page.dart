import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPage extends StatefulWidget {
  const CupertinoPage({Key? key}) : super(key: key);

  @override
  State<CupertinoPage> createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  @override
  Widget build(BuildContext context) {
    bool _switch = true;
    return Scaffold(
        appBar: const CupertinoNavigationBar(middle: Text("쿠퍼티노 ui")),
        body: Column(
          children: <Widget>[
            CupertinoButton(
              onPressed: _action,
              child: const Text('cupertino button'),
            ),
            CupertinoSwitch(
              value: _switch,
              onChanged: (bool value) {
                setState(() {
                  _switch = value;
                });
              },
            ),
            ElevatedButton(onPressed: _action, child: Text('머티리얼 버튼')),
            Switch(
              value: true,
              onChanged: (bool value) {
                setState(() {
                  _switch = value;
                });
              },
            )
          ],
        ));
  }

  void _action() {}
}
