import 'package:flutter/material.dart';

class penjualana extends StatelessWidget {
  const penjualana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            color: Colors.amber,
            child: Row(
              children: const [
                Text("Penjualan"),
                Text("->"),
              ],
            ),
          ),
          Container(
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(decoration: const BoxDecoration(), children: [
                  Container(
                    color: Colors.green,
                    height: 40,
                    width: 60,
                    child: const Center(child: Text("nama produk")),
                  ),
                  Container(
                    color: Colors.green,
                    height: 40,
                    width: 60,
                    child: const Center(child: Text("Jumlah")),
                  ),
                  Container(
                    color: Colors.green,
                    height: 40,
                    width: 60,
                    child: const Center(child: Text("Harga")),
                  ),
                  Container(
                    color: Colors.green,
                    height: 40,
                    width: 60,
                    child: const Center(child: Text("Total")),
                  ),
                ]),
                const TableRow(children: [
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: Center(child: Text("")),
                  ),
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: Center(child: Text("0")),
                  ),
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: Center(child: Text("0")),
                  ),
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: Center(child: Text("0")),
                  ),
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
