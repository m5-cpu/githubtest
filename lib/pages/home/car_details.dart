import 'package:flutter/material.dart';

class CarDetailsPage extends StatelessWidget {
  const CarDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Name'),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
                label: Text('Call'),
                icon: Icon(Icons.phone_rounded),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
                child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
              icon: Icon(Icons.chat),
              label: Text('Chat'),
            ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 210,
              child: Scrollbar(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(5).copyWith(bottom: 10),
                      width: 200,
                      child: Card(
                        child: Icon(Icons.ac_unit),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 5, left: 20, right: 20),
              child: Text('Car Name'),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              // color: Colors.white,
              padding: EdgeInsets.all(15),
              child: Text(
                'Car Name',
                style: theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 5, left: 20, right: 20),
              child: Text('Number Plate'),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              // color: Colors.white,
              padding: EdgeInsets.all(15),
              child: Text(
                'Number Plate',
                style: theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 5, left: 20, right: 20),
              child: Text('Pick-up Location'),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              // color: Colors.white,
              padding: EdgeInsets.all(15),
              child: Text(
                'Pick-up Location',
                style: theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text('Owner\'s  Info'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 5, left: 20, right: 20),
              child: Text('Owner\'s Name'),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              // color: Colors.white,
              padding: EdgeInsets.all(15),
              child: Text(
                'Name Of Owner',
                style: theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 5, left: 20, right: 20),
              child: Text('Contact'),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              // color: Colors.white,
              padding: EdgeInsets.all(15),
              child: Text(
                'Contact',
                style: theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
