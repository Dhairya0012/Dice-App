import 'package:dicee/Screens/Home-Screen/Components/Body/body.dart';
import 'package:flutter/material.dart';

import 'Components/AppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: homeAppBar(context),
      body: homeBody(),
    );
  }
}
