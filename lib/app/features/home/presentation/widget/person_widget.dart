import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/constants/theme/app_size.dart';
import '/app/widgets/avatar_widget.dart';
import '/app/widgets/text_profile_widget.dart';
import '../controllers/profile/profile_controller.dart';

class PersonWidget extends ConsumerWidget {
  const PersonWidget({super.key});

  @override
  Widget build(context, ref) {
    final controller = ref.read(personControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Person"),
        actions: [
          IconButton(
            onPressed: () => controller.logout(context),
            icon: const Icon(
              Icons.logout,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              Gap.h12,
              Avatar(
                url: controller.user?.image ?? "",
              ),
              Gap.h12,
              TextProfileWidget(
                title: "Username",
                value: controller.user?.name ?? "",
              ),
              TextProfileWidget(
                title: "Email",
                value: controller.user?.email ?? "",
              ),
              TextProfileWidget(
                title: "Status",
                value:
                    controller.user?.status ?? true ? "Active" : "Non Active",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
