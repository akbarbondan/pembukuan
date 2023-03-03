import 'package:flutter/material.dart';
import 'package:pembukuan/transaksi_customer.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003399),
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo_peksi.png'),
                ],
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 125),
                padding: const EdgeInsets.only(top: 48, right: 24, left: 24),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          onTap: () {
                            Get.to(const TransactionCustomer());
                          },
                          text: 'Transaksi',
                          image: 'assets/pay.png',
                        ),
                        Card(
                          onTap: () {
                            print("ke halaman Finansial");
                          },
                          image: 'assets/money.png',
                          text: 'Finansial',
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          onTap: () {
                            print("ke halaman Stock");
                          },
                          image: 'assets/ready-stock.png',
                          text: 'Stock',
                        ),
                        Card(
                          onTap: () {
                            print("ke halaman laporan");
                          },
                          image: 'assets/report.png',
                          text: 'Laporan',
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class Card extends StatelessWidget {
  String? text;
  String? image;
  Function() onTap;

  Card({String text = 'null', String image = 'null', required this.onTap}) {
    this.text = text;
    this.image = image;
    onTap = onTap;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(25, 12, 25, 0),
        width: MediaQuery.of(context).size.width / 2 - 64,
        height: MediaQuery.of(context).size.width / 2 - 64,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(color: Color(0xFFD7D7D7), spreadRadius: 1, blurRadius: 4)
        ], color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Image.asset(
              image!,
              width: 64,
            ),
            const SizedBox(height: 8),
            Text(
              text!,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
