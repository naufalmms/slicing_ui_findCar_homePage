// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

import '../model/cars_model.dart';
import '../style/color.dart';
import '../style/typo.dart';

class PopularCars extends StatelessWidget {
  final Cars carsModel;
  const PopularCars({
    Key? key,
    required this.carsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              carsModel.imageUrl,
              height: 80,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              carsModel.name,
              style: product,
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/mile.png',
                  height: 16,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '38 Miles',
                  style: small,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
