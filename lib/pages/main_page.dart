part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
                onTap: () => Get.back(), child: const Icon(Icons.arrow_back)),
            backgroundColor: const Color(0xFF273015),
            bottom: TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                  child: Column(
                children: const [Icon(Icons.discount), Text("Penjualan")],
              )),
              Tab(
                  child: Column(
                children: const [Icon(Icons.money), Text("Pembayaran")],
              )),
              Tab(
                  child: Column(
                children: const [Icon(Icons.restore_rounded), Text("Retur")],
              )),
            ]),
          ),
          body: const TabBarView(
            children: [
              PenjualanPage(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
