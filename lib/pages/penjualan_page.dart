part of 'pages.dart';

class PenjualanPage extends StatelessWidget {
  const PenjualanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Get.to(const ViewDataProduct()),
              child: Container(
                margin: const EdgeInsets.fromLTRB(16, 10, 16, 8),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border:
                        Border.all(width: 1, color: const Color(0xFFAEAEAE))),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Cari data',
                  ),
                ),
              ),
            ),
            Expanded(
                child: ListView(
              children: const [
                CardProduct(),
                CardProduct(),
                CardProduct(),
                CardProduct(),
                CardProduct(),
                CardProduct(),
                CardProduct(),
              ],
            )),
            Expanded(
                flex: 0,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFFCECECE),
                            spreadRadius: -8,
                            blurRadius: 10)
                      ]),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text('Total : '),
                          Text(
                            'Rp. 50.000',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              width: MediaQuery.of(context).size.width / 2 - 48,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF273015),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: const Text(
                                  "Save Data",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 16),
                              width: MediaQuery.of(context).size.width / 2 - 48,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: const Text(
                                  "Print",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF273015)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class CardProduct extends StatelessWidget {
  const CardProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1, color: const Color(0xFFAEAEAE))),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Telur Mata sapi",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Rp. 50.000",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Icon(Icons.remove),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.add),
                    ],
                  ),
                ],
              ),
              const Text(
                "Rp 50.000",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          )),
    );
  }
}
