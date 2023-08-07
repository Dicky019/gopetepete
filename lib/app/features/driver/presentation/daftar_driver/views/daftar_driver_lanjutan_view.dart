import 'package:flutter/material.dart';
import 'daftar_driver_view.dart';

import '../widgets/daftar_driver_lanjutan.dart';
import '../../../data/request/daftar_driver_request.dart';

class DaftarDriverLanjutanView extends StatelessWidget {
  const DaftarDriverLanjutanView({Key? key, required this.daftarDriverFormAwal})
      : super(key: key);

  static const routeName = 'lanjutan';
  static const path = '${DaftarDriverView.routeName}/lanjutan';
  final DaftarDriverFormAwal daftarDriverFormAwal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Driver Lanjutan"),
      ),
      body: DaftarDriverLanjutan(daftarDriverFormAwal),
    );
  }
}
