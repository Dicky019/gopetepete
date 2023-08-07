import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/extension/dynamic_extension.dart';
import 'card.dart';

class UploadImageWidget extends StatelessWidget {
  const UploadImageWidget({
    Key? key,
    this.foto,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final File? foto;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      padding: EdgeInsets.all(8.h),
      widget: Column(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Divider(),
          InkWell(
            onTap: onTap,
            child: SizedBox(
              height: 160.h,
              child: foto.isNotNull ? image : imageNull,
            ),
          ),
        ],
      ),
    );
  }

  Widget get image {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.r),
      child: Image.file(
        foto!,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget get imageNull => Icon(
        Icons.camera_alt,
        color: Colors.grey[800],
      );
}
