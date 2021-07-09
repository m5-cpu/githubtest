import 'package:car_rent/pages/home/car_details.dart';
import 'package:flutter/material.dart';

import 'add_car.dart';

class RentCarPage extends StatelessWidget {
  const RentCarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Rent A Car'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(bottom: 5, left: 20, right: 10, top: 10),
            child: Text('What car do you searching for'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            // color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    style: theme.textTheme.bodyText1?.copyWith(
                      color: Colors.black,
                    ),
                    decoration: inputDecoration(
                      'Name of car',
                      theme,
                    ),
                  ),
                ),
                SizedBox(width: 5),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search_rounded),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(bottom: 0, left: 15, right: 10, top: 20),
            child: Text(
              'Popular Options',
              style: theme.textTheme.subtitle1,
            ),
          ),
          Expanded(
            child: Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Scrollbar(
                child: ListView(
                  children: [
                    CarCard(),
                    CarCard(),
                    CarCard(),
                    CarCard(),
                    CarCard(),
                    CarCard(),
                    CarCard(),
                    CarCard(),
                    CarCard(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CarCard extends StatelessWidget {
  // const CarCard({Key? key, required this.car}) : super(key: key);
  // final Car car;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          showDialog(context: context, builder: (_) => CarDetailsPage());
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.car_rental,
                  color: Colors.grey[700],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Text(
                      'Car Name ',
                      style: theme.textTheme.headline6,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: Text(
                      'from Fredrick ',
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    child: Text(
                      'July 4, 2021 ',
                      style: theme.textTheme.caption,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
