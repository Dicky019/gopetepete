import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/theme/app_color.dart';
import '/app/utils/extension/string_extension.dart';

// final controllerNotifier = StateProvider<String>((ref) => "");

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.onClick,
    this.onChange,
  }) : _isSearch = false;

  const TextFieldWidget.search({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.onClick,
    this.onChange,
  }) : _isSearch = true;

  final TextEditingController controller;
  final String hintText;
  final String? Function(String? value)? validator;
  final Function(String value)? onChange;
  final bool _isSearch;
  final VoidCallback? onClick;

  String? _getValidation(String? value) {
    if (value?.trim().isNullOrEmpty ?? true) {
      return "Tidak Boleh kosong";
    }
    return null;
  }

  static inputDecoration(String hintText) => InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            width: 1,
            color: AppColor.secondary,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            width: 2, color: AppColor.secondary, // Color Primary,
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.black,
        ),
      );

  static inputDecorationSearch(
    TextEditingController controller,
    BuildContext context,
    String hintText,
  ) =>
      InputDecoration(
        fillColor: Theme.of(context).focusColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)).r,
          borderSide: BorderSide(
            width: 1.w,
            color: AppColor.secondary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)).r,
          borderSide: BorderSide(
            width: 2.w, color: AppColor.secondary, // Color Primary,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            controller.clear();
          },
          icon: const Icon(
            Icons.close,
            color: AppColor.secondary,
          ),
        ),
      );

  @override
  Widget build(
    BuildContext context,
  ) {
    return TextFormField(
      controller: controller,
      validator: validator ?? _getValidation,
      onTap: onClick,
      onChanged: (v) => {
        if (onChange != null) {onChange!(v)}
      },
      readOnly: onClick != null,
      decoration: _isSearch
          ? inputDecorationSearch(controller, context, hintText)
          : inputDecoration(hintText),
    );
  }
}
