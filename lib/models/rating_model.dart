class RatingModel {
  final String rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.formJson(jsonData) {
    return RatingModel(rate: jsonData['rate'].toString(), count: jsonData['count']);
  }
}
