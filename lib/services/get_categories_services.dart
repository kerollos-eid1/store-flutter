import 'package:store_app/helper/api.dart';
import 'package:store_app/models/Product_Models.dart';

class GetCategoriesServices {
  Future<List<ProductModel>> getcategoriesProduct(
      {required String CategoryName}) async {
    List<dynamic> data = await Api()
        // ignore: missing_required_param
        .get(ulr: 'https://fakestoreapi.com/products/category/$CategoryName');

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
