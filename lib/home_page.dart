import 'package:flutter/material.dart';
import 'package:pembukuan/penjualan.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? tabsContrler;
  @override
  void initState() {
    tabsContrler = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: true,
          child: Column(
            children: [
              Expanded(
                  flex: 0,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 30,
                        color: Colors.amber,
                        child: const Center(child: Text("Transaksi Customer")),
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black)),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text("Tanggal : "),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 145),
                              child: Text("11/02/2023 : "),
                            ),
                            Positioned(
                              right: 20,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.amber,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Detail",
                                    style: TextStyle(color: Colors.brown),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                height: 34,
                                width: MediaQuery.of(context).size.width - 100,
                                color: Colors.grey,
                                child: Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 8.0, right: 100),
                                      child: Text(
                                        "Cari nama Customer",
                                      ),
                                    ),
                                    Icon(Icons.search),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.amber,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Baru",
                                    style: TextStyle(color: Colors.brown),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Expanded(
                flex: 0,
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  controller: tabsContrler,
                  indicator: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  tabs: [
                    Tab(
                      child: Column(
                        children: const [Icon(Icons.sell), Text("Penjualan")],
                      ),
                    ),
                    Tab(
                      child: Column(
                        children: const [Icon(Icons.paid), Text("Pembayaran")],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: TabBarView(controller: tabsContrler, children: const [
                    penjualana(),
                    Icon(Icons.flag),
                  ])),
              Expanded(
                  child: Container(
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
              )),
              Container(
                height: 32,
                color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [Text("Total : 00")],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Container(
                      color: Colors.amber,
                      height: 44,
                      width: MediaQuery.of(context).size.width / 2 - 2,
                      child: const Center(child: Text("Save Data")),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("OK");
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 4),
                        color: Colors.amber,
                        height: 44,
                        width: MediaQuery.of(context).size.width / 2 - 2,
                        child: const Center(child: Text("Print")),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
