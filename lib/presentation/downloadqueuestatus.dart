import 'package:flutter/material.dart';

class DownloadQueueStatus extends StatelessWidget {
  final bool isFailed;
  final bool isEmpty;
  const DownloadQueueStatus(
      {Key? key, required this.isFailed, required this.isEmpty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return downloadqueuestatus();
  }

  Widget downloadqueuestatus() {
    if (isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Text('List is Empty')],
      );
    } else if (isFailed) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Text('Oops Something Went Wrong Check Internet')],
      );
    }
    return Center(child: CircularProgressIndicator());
  }
}
