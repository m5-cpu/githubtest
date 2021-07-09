import 'package:flutter/material.dart';

class AddCardDialog extends StatelessWidget {
  const AddCardDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text('Fill this form'),
        actions: [
          IconButton(
            onPressed: Navigator.of(context).pop,
            icon: Icon(Icons.close_rounded),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 5, left: 5),
              child: Text('Car Name'),
            ),
            Container(
              // color: Colors.white,
              child: TextFormField(
                style: theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
                decoration: inputDecoration('Car Name', theme),
              ),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 5, left: 5),
              child: Text('Number Plate'),
            ),
            Container(
              // color: Colors.white,
              child: TextFormField(
                style: theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
                decoration: inputDecoration('Number Plate', theme),
              ),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 5, left: 5),
              child: Text('Pick-up Location'),
            ),
            Container(
              // color: Colors.white,
              child: TextFormField(
                style: theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
                decoration: inputDecoration('Pick-up Location', theme),
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
            SizedBox(height: 5),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 5, left: 5),
              child: Text('Name'),
            ),
            Container(
              // color: Colors.white,
              child: TextFormField(
                style: theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
                decoration: inputDecoration('Name', theme),
              ),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 5, left: 5),
              child: Text('Contact'),
            ),
            Container(
              // color: Colors.white,
              child: TextFormField(
                style: theme.textTheme.bodyText1?.copyWith(
                  color: Colors.black,
                ),
                decoration: inputDecoration('Contact', theme),
              ),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 8, left: 5),
              child: Text('Upload Pictures'),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text('Add'),
                icon: Icon(Icons.add_rounded),
              ),
            )
          ],
        ),
      ),
    );
  }
}

InputDecoration inputDecoration(String hint, ThemeData theme,
        [Widget? prefix]) =>
    InputDecoration(
      fillColor: Colors.white,
      filled: true,
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      hintText: hint,
      hintStyle: theme.textTheme.bodyText1?.copyWith(
        color: Colors.black.withOpacity(0.6),
      ),
      // contentPadding: EdgeInsets.all(10),
    );
