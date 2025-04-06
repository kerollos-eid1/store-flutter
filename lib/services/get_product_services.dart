import 'package:store_app/helper/api.dart';
import 'package:store_app/models/Product_Models.dart';

class GetAllProductServices {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        // ignore: missing_required_param
        await Api().get(ulr: 'https://fakestoreapi.com/products');
    List<ProductModel> Productslist = [];
    for (int i = 0; i < data.length; i++) {
      Productslist.add(
        ProductModel.fromjson(
          data[i],
        ),
      );
    }
    return Productslist;
  }
}
