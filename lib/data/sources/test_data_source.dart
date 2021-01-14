import 'package:my_app/data/interfaces/data_interface.dart';

class TestDataSource implements IData {
  @override
  List<String> getData() {
    List<String> data = List.generate(5, (index) => 'Test data $index');

    return data;
  }
}
