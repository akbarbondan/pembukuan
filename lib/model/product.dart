part of 'models.dart';

class Product {
  final String kodeProd;
  final String namaProd;
  Product({
    required this.kodeProd,
    required this.namaProd,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(kodeProd: json['Kode_Prod'], namaProd: json['NamaProd']);
  }
}

class Field {
  final String kodeProd;
  final String namaProd;
  Field({
    required this.kodeProd,
    required this.namaProd,
  });

  factory Field.fromJson(Map<String, dynamic> json) {
    return Field(kodeProd: json['Kode_Prod'], namaProd: json['NamaProd']);
  }
}