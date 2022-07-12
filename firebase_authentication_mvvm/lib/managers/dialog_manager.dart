import 'package:flutter/material.dart';
import '../locator.dart';
import '../models/dialog_models.dart';
import '../services/dialog_service.dart';

class DialogManager extends StatefulWidget {
  final Widget child;
  const DialogManager({Key? key, required this.child}) : super(key: key);

  @override
  DialogManagerState createState() => DialogManagerState();
}

class DialogManagerState extends State<DialogManager> {
  final DialogService _dialogService = locator<DialogService>();

  @override
  void initState() {
    super.initState();
    _dialogService.registerDialogListener(_showDialog);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _showDialog(DialogRequest request) {
    var isConfirmationDialog = request.cancelTitle != null;
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(request.title),
              content: Text(request.description),
              actions: <Widget>[
                if (isConfirmationDialog)
                  TextButton(
                    child: const Text('cancle'),//request.cancelTitle
                    onPressed: () {
                      _dialogService
                          .dialogComplete(DialogResponse(confirmed: false));
                    },
                  ),
                TextButton(
                  child: Text(request.buttonTitle),
                  onPressed: () {
                    _dialogService
                        .dialogComplete(DialogResponse(confirmed: true));
                  },
                ),
              ],
            ));
  }
}
