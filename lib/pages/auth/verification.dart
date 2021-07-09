import 'package:car_rent/page_router.dart';
import 'package:flutter/material.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Text(
                  'Verification',
                  style: theme.textTheme.headline5,
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text(
                  'Enter 6 digit code',
                  style: theme.textTheme.bodyText1,
                ),
              ),
              SizedBox(height: 25),
              Container(
                // color: Colors.white,
                child: TextFormField(
                  style: theme.textTheme.bodyText1?.copyWith(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: 'Verification Code',
                    hintStyle: theme.textTheme.bodyText1?.copyWith(
                      color: Colors.black,
                    ),
                    contentPadding: EdgeInsets.only(left: 10),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    )),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(PageRouter.home);
                },
                child: Text('Verify'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
