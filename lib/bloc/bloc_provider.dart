import 'package:counter_app_using_my_bloc_implementation/bloc/bloc.dart';
import 'package:flutter/material.dart';

class BlocProvider<T extends Bloc> extends StatefulWidget {
  final T bloc;
  final Widget child;

  const BlocProvider({super.key, required this.bloc, required this.child});

  static T of<T extends Bloc>(BuildContext context) =>
      context.findAncestorWidgetOfExactType<BlocProvider<T>>()!.bloc;

  @override
  State<BlocProvider> createState() => _BlocProviderState();
}

class _BlocProviderState extends State<BlocProvider> {
  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
