import 'package:store_app/helper/api.dart';

class GetCatecories {
  Future<List<dynamic>> getAllCatecories() async {
    List<dynamic> data =
        // ignore: missing_required_param
        await Api().get(ulr: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
