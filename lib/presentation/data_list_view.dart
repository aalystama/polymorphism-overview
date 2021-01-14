import 'package:flutter/material.dart';
import 'package:my_app/data/interfaces/data_interface.dart';

class DataListView extends StatelessWidget {
  final IData dataSource;

  const DataListView(this.dataSource);

  @override
  Widget build(BuildContext context) {
    List<String> data = dataSource.getData();

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(data.elementAt(index)),
      ),
    );
  }
}
