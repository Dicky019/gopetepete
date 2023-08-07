import 'package:flutter/material.dart';

import '../widgets/daftar_driver.dart';

class DaftarDriverView extends StatelessWidget {
  const DaftarDriverView({Key? key}) : super(key: key);

  static const routeName = '/daftar-driver';
  // static const path = '${DriverView.routeName}/daftar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Driver"),
      ),
      body: const DaftarDriver(),
    );
  }
}
