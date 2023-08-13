import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class StateWidget<T> extends StatelessWidget {
  final AsyncValue<T> stream;
  final Widget Function(T data) data;
  final Color? loadingColor;
  const StateWidget({
    super.key,
    required this.stream,
    required this.data,
    this.loadingColor,
  });

  @override
  Widget build(BuildContext context) {
    return stream.when(
      data: data,
      error: (error, stackTrace) => const Text("Error"),
      loading: () => Center(
        child: CircularProgressIndicator(color: loadingColor),
      ),
      
    );
  }
}