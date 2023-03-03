import 'package:flutter/material.dart';
import 'package:pembukuan/model/models.dart';
import 'package:pembukuan/services/services.dart';

class ViewDataProduct extends StatefulWidget {
  const ViewDataProduct({Key? key}) : super(key: key);

  @override
  State<ViewDataProduct> createState() => _ViewDataProductState();
}

class _ViewDataProductState extends State<ViewDataProduct> {
  var getApi = GetApi();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('View data'),
        ),
        body: Center(
            child: FutureBuilder<List<Product>>(
                future: getApi.fecthProduc(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) => Card(
                              child: ListTile(
                                subtitle: Text(snapshot.data![index].kodeProd),
                                title: Text(snapshot.data![index].namaProd),
                              ),
                            ));
                  }
                  return const CircularProgressIndicator();
                })));
  }
}
