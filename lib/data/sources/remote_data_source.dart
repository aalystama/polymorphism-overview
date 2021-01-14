import 'package:my_app/data/interfaces/data_interface.dart';

class RemoteDataSource implements IData {
  @override
  List<String> getData() {
    List<String> data = List.generate(15, (index) => 'Remote data $index');

    return data;
  }
}
