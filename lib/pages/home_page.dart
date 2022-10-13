import 'package:flutter/material.dart';
import 'package:slicing_ui_find_car_home_page/sample_data/cars_data.dart';
import 'package:slicing_ui_find_car_home_page/sample_data/new_cars.dart';
import 'package:slicing_ui_find_car_home_page/style/button.dart';
import 'package:slicing_ui_find_car_home_page/style/color.dart';
import 'package:slicing_ui_find_car_home_page/style/typo.dart';
import 'package:slicing_ui_find_car_home_page/widgets/new_car.dart';
import 'package:slicing_ui_find_car_home_page/widgets/popular_car.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: softwhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 230,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/cover.png"),
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -25.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            const Expanded(
                              child: TextField(
                                decoration: InputDecoration.collapsed(
                                    hintText: 'Search for Car Name'),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/search.png',
                                  height: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      'Popular Cars',
                      style: header,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      height: 160,
                      child: ListView.builder(
                        itemCount: carsData.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return PopularCars(carsModel: carsData[index]);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Get Your Dream Car',
                                style: subHeader,
                              ),
                              Text(
                                'First car should be easy',
                                style: small,
                              ),
                            ],
                          ),
                          const Spacer(),
                          ElevatedButton(
                            style: buttonPrimary,
                            onPressed: () {},
                            child: Text(
                              'Get Loan',
                              style: labelPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New Cars',
                          style: header,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: newCardData.length,
                          itemBuilder: (context, index) {
                            return NewCars(carsData: newCardData[index]);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
