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
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        InkWell(
          onTap: onTap,
          child: CardWidget(
            // height: 200.h,
            height: 160.h,
            marginBottom: 4.h,
            marginTop: 4.h,
            marginLeft: 0,
            marginRight: 0,
            widget: image(),
          ),
        ),
      ],
    );
  }

  Widget image() => foto.isNotNull
      ? Image.file(
          foto!,
          fit: BoxFit.fitHeight,
        )
      : Icon(
          Icons.camera_alt,
          color: Colors.grey[800],
        );
}
