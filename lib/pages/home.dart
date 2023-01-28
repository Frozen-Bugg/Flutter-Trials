import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App name'),
      ),
      body: Center(
        child: Text('Hello'),
      ),
      drawer: Drawer(),
    );
  }
}
