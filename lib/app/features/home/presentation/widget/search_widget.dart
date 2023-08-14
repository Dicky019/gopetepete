import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/constants/theme/app_size.dart';
import 'package:flutter_application_1/app/features/home/domain/model/rutes.dart';
import 'package:flutter_application_1/app/widgets/form/text_field.dart';
import 'package:flutter_application_1/app/widgets/state/state_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controllers/search/search_controller.dart';
import '../home_controller.dart';

class SearchWidget extends ConsumerWidget {
  const SearchWidget({super.key});

  @override
  Widget build(context, ref) {
    final controller = ref.read(searchControllerProvider.notifier);
    final homeState = ref.watch(
      homeControllerProvider.select((value) => value.rutes),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text("Search"),
        ),
        body: StateWidget<Rutes>(
          stream: homeState,
          data: (rutes) {
            return Column(
              children: [
                Gap.h12,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: TextFieldWidget.search(
                    controller: controller.searchC,
                    hintText: "Search...",
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      final rute = rutes.data[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(rute.kode.replaceFirst(
                            "Kode ",
                            "",
                          )),
                        ),
                        title: Text(rute.name),
                        subtitle: Text(
                            "Jumlah Rute: ${rute.locations.points.length}"),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: rutes.data.length,
                  ),
                ),
              ],
            );
          },
        ));
  }
}
