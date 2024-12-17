import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: PrimaryHeaderContainer(
          child: Column(
            children: [
              HomeAppbar(),
              SearchContainer(text: 'Search in Store'),
              HomeCategories(),
            ],
          ),
        ),
      ),
    );
  }
}
