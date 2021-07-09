import 'package:car_rent/page_router.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Registration',
                  style: theme.textTheme.headline5,
                ),
              ),
              SizedBox(height: 25),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(bottom: 5, left: 5),
                child: Text('User Name'),
              ),
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
                      hintText: 'user Name',
                      hintStyle: theme.textTheme.bodyText1?.copyWith(
                        color: Colors.black,
                      ),
                      contentPadding: EdgeInsets.only(left: 10)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(bottom: 5, left: 5),
                child: Text('Email Address'),
              ),
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
                      hintText: 'Email Address',
                      hintStyle: theme.textTheme.bodyText1?.copyWith(
                        color: Colors.black,
                      ),
                      contentPadding: EdgeInsets.only(left: 10)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(bottom: 5, left: 5),
                child: Text('Mobile Number'),
              ),
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
                      hintText: 'Mobile Number',
                      hintStyle: theme.textTheme.bodyText1?.copyWith(
                        color: Colors.black,
                      ),
                      contentPadding: EdgeInsets.only(left: 10)),
                ),
              ),
              SizedBox(height: 20),
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
                  Navigator.of(context, rootNavigator: true)
                      .pushNamed(PageRouter.verification);
                },
                child: Text('Continue'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
