part of 'services.dart';

class GetApi extends ChangeNotifier {
  Future<List<Product>> fecthProduc() async {
    final respond = await http
        .get(Uri.parse('http://www.sosiopet.com/api/Product/products.html'));

    if (respond.statusCode == 200) {
      var result = json.decode(respond.body);

      List data = result['Data'];
      return data.map((e) => Product.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load album');
    }
  }
}
