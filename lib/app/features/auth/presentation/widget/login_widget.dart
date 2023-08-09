import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/features/daftar_driver/presentation/views/daftar_driver_view.dart';
import '/app/constants/theme/app_size.dart';
import '/gen/assets.gen.dart';
import '/app/widgets/button.dart';
import '../login_controller.dart';

class LoginWidget extends ConsumerWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(loginControllerProvider.notifier);
    final state = ref.watch(loginControllerProvider);

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Login",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Gap.h20,
            ClipRRect(
              borderRadius: BorderRadius.circular(4).r,
              child: Assets.images.login.image(),
            ),
            Gap.h28,
            ButtonWidget(
              isLoading: state.isLoading,
              onTap:
                  state.isLoading ? null : () => controller.fetchLogin(context),
              text: 'Login',
            ),
            Gap.h8,
            Row(
              children: [
                const Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  child: Text(
                    "Jika anda Driver dan belum punya Akun?",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const Expanded(child: Divider()),
              ],
            ),
            Gap.h8,
            ButtonWidget(
              isPrimary: false,
              isLoading: state.isLoading,
              onTap: () => context.push(DaftarDriverView.routeName),
              text: 'Daftar',
            )
          ],
        ),
      ),
    );
  }
}
