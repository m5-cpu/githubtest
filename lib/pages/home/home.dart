import 'package:car_rent/page_router.dart';
import 'package:car_rent/pages/home/add_car.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Welcome',
                style: theme.textTheme.headline5,
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: Card(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(PageRouter.rentCar);
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Rent\nA\nCar',
                        style: theme.textTheme.headline6?.copyWith(
                          height: 2,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Card(
                  color: Colors.black,
                  child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context, builder: (_) => AddCardDialog());
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Rent Out\nA\nCar',
                        style: theme.textTheme.headline6?.copyWith(
                          height: 2,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
