import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/app/widgets/text_profile_widget.dart';
import '/app/constants/theme/app_size.dart';
import '/app/widgets/card.dart';
import '/app/widgets/avatar_widget.dart';

import '../domain/model/driver.dart';

class DriverProfileWidget extends StatelessWidget {
  final Driver driver;
  const DriverProfileWidget({
    Key? key,
    required this.driver,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Gap.h24,
            Avatar(
              url: driver.user.image,
            ),
            Gap.h12,
            TextProfileWidget(title: "Username", value: driver.user.name),
            TextProfileWidget(title: "Email", value: driver.user.email),
            TextProfileWidget(
              title: "Status",
              value: driver.user.status ? "Active" : "Non Active",
            ),
            TextProfileWidget(
              title: "Nama Lengkap",
              value: driver.namaLengkap,
            ),
            TextProfileWidget(title: "No.HP", value: driver.noHp),
            TextProfileWidget(title: "NIK", value: driver.nik),
            TextProfileWidget(title: "No.KK", value: driver.nokk),
            TextProfileWidget(title: "Alamat", value: driver.alamat),
            TextProfileWidget(
              title: "No.Plat Mobil",
              value: driver.noPlatMobil,
            ),
            TextProfileWidget(
              title: "Max Penumpang",
              value: driver.maxPenumpang.toString(),
            ),
            Gap.h8,
            SizedBox(
              height: 200.h,
              child: Row(
                children: [
                  Expanded(
                    child: ProfileCardImage(
                      title: "Foto Mobil",
                      url: driver.fotoMobil,
                    ),
                  ),
                  Gap.w8,
                  Expanded(
                    child: ProfileCardImage(
                      title: "Foto KTP",
                      url: driver.fotoKtp,
                    ),
                  ),
                ],
              ),
            ),
            Gap.h24,
          ],
        ),
      ),
    );
  }
}

class ProfileCardImage extends StatelessWidget {
  const ProfileCardImage({
    super.key,
    required this.title,
    required this.url,
  });

  final String title;
  final String url;
  // "Foto Mobil"

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      height: 200.h,
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      widget: Column(
        children: [
          Gap.h12,
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
          ),
          Gap.h12,
          ClipRRect(
            borderRadius: BorderRadius.circular(12).r,
            child: Image.network(
              url,
              height: 150.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
