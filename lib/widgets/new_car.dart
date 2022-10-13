// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

import 'package:slicing_ui_find_car_home_page/model/cars_model.dart';

import '../style/color.dart';
import '../style/typo.dart';

class NewCars extends StatelessWidget {
  final Cars carsData;
  const NewCars({
    Key? key,
    required this.carsData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 20,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Image.asset(
            carsData.imageUrl,
            height: 60,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                carsData.name,
                style: product,
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
                    '99 Miles',
                    style: small,
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Text(
            '\$390,000',
            style: subHeader,
          ),
        ],
      ),
    );
  }
}
