import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseWidget<T extends ChangeNotifier> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget child)? builder;
  final Function(T)? onModelReady;
  final T? model;
  final Widget? child;

  const BaseWidget(
      {Key? key, this.builder, this.onModelReady, this.model, this.child})
      : super(key: key);

  @override
  BaseWidgetState<T> createState() => BaseWidgetState<T>();
}

class BaseWidgetState<T extends ChangeNotifier> extends State<BaseWidget<T>> {
  late T _model;

  @override
  void initState() {
    _model = widget.model!;

    if (widget.onModelReady != null) {
      widget.onModelReady!(_model);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => _model,
      child: Consumer<T>(builder: (context, model, child) => Scaffold()

          // builder: widget.builder ?? (context, model, child) => child,
          //       child: widget.child,
          ),
    );
  }
}
