import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pembukuan/model/models.dart';
import 'package:pembukuan/services/services.dart';

class ViewDataProduct extends StatefulWidget {
  const ViewDataProduct({Key? key}) : super(key: key);

  @override
  State<ViewDataProduct> createState() => _ViewDataProductState();
}

class _ViewDataProductState extends State<ViewDataProduct> {
  List<Product> uproduct = [];
  List<Product> productLitst = [];

  @override
  void initState() {
    var product = GetApi();
    product.fecthProduc().then((item) {
      uproduct = item;
      setState(() {
        productLitst = uproduct;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
        appBar: AppBar(
          title: const Text('View data'),
        ),
        body: Center(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: TextField(
                  textInputAction: TextInputAction.search,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.search),
                      hintText: "Cari Barang"),
                  onChanged: (string) {
                    setState(() {
                      productLitst = uproduct
                          .where((element) => element.kodeProd
                              .toLowerCase()
                              .contains(string.toLowerCase()))
                          .toList();
                    });
                  }),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: (productLitst.length != null)
                  ? ListView.builder(
                      itemCount: productLitst.length,
                      //itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) => Card(
                            child: ListTile(
                              onTap: () {
                                Get.snackbar(productLitst[index].namaProd,
                                    "Ini adalah ${productLitst[index].namaProd}",
                                    snackPosition: SnackPosition.BOTTOM);
                              },
                              subtitle: Text(productLitst[index].kodeProd),
                              title: Text(productLitst[index].namaProd),
                            ),
                          ))
                  : const CircularProgressIndicator(),
            )),
          ],
        )));
  }
}
