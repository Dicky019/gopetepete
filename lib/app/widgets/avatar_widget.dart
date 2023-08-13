
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'card_profile_widget.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.url,
  });
  final String url;

  @override
  Widget build(BuildContext context) {
    return CardProfilWidget(
      size: 124.w,
      border: (124 / 2).r,
      child: Padding(
        padding: const EdgeInsets.all(8.0).w,
        child: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
          backgroundImage: NetworkImage(
            url,
          ),
        ),
      ),
    );
  }
}

