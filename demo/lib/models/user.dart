import 'package:demo/models/order.dart';

class Users {
  final String name;
  final List<Order> orders;
  final List<Order> cart;

  Users({
    this.name,
    this.orders,
    this.cart,
  });
}
