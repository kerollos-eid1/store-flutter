class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromjson(jesondata) {
    return ProductModel(
        rating: RatingModel.fromjson(jesondata['rating']),
        id: jesondata['id'],
        title: jesondata['title'],
        price: jesondata['price'],
        description: jesondata['description'],
        image: jesondata['image']);
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromjson(jesondata) {
    return RatingModel(
      rate: jesondata['rate'],
      count: jesondata['count'],
    );
  }
}
