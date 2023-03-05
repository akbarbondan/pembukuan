part of 'pages.dart';

class PembayaranPage extends StatefulWidget {
  const PembayaranPage({Key? key}) : super(key: key);

  @override
  State<PembayaranPage> createState() => _PembayaranPageState();
}

class _PembayaranPageState extends State<PembayaranPage> {
  String? pembayaran;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text('Jenis Pembayaran : ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                    Expanded(
                      child: RadioListTile(
                          title: Text('Cash',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500)),
                          value: 'Cash',
                          groupValue: pembayaran,
                          onChanged: (value) {
                            setState(() {
                              pembayaran = value.toString();
                            });
                          }),
                    ),
                    Expanded(
                      child: RadioListTile(
                          title: Text('Bank',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500)),
                          value: 'Bank',
                          groupValue: pembayaran,
                          onChanged: (value) {
                            setState(() {
                              pembayaran = value.toString();
                            });
                          }),
                    ),
                  ],
                ),
                Text('Nominal Yang Harus Dibayar',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                        color: Colors.grey[500])),
                SizedBox(
                  height: 8,
                ),
                Text('Rp 50.000',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              ],
            ),
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
    );
  }
}
