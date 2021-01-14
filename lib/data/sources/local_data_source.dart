import 'package:my_app/data/interfaces/data_interface.dart';

class LocalDataSource implements IData {
  @override
  List<String> getData() {
    List<String> data = List.generate(10, (index) => 'Local data $index');

    return data;
  }
}
