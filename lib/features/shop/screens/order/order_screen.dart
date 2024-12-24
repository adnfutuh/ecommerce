import 'package:ecommerce/common/widgets/appbar/r_appbar.dart';
import 'package:ecommerce/features/shop/screens/order/widgets/order_list_items.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: RAppbar(title: Text("MyOrders"), showBackArrow: true),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: OrderListItems(),
      ),
    );
  }
}
