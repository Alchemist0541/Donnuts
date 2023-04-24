import 'package:flutter/material.dart';

class ListPages extends StatelessWidget {

  final controller = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {
    return PageView(
      // scrollDirection: Axis.horizontal,

      controller: controller,

      children: <Widget>[
        Column(children: [Padding(padding: EdgeInsets.only(top: 8), child: Image.asset('assets/image/donnut.png')), Spacer()]),
        Column(children: [Padding(padding: EdgeInsets.only(top: 8), child: Image.asset('assets/image/donnut.png')), Spacer()]),
        Column(children: [Padding(padding: EdgeInsets.only(top: 8), child: Image.asset('assets/image/donnut.png')), Spacer()]),
        Column(children: [Padding(padding: EdgeInsets.only(top: 8), child: Image.asset('assets/image/donnut.png')), Spacer()]),
      ],
    );
  }
}
