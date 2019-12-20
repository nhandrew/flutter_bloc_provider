import 'package:blocprovider/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../providers/name_provider.dart';

class Welcome extends StatefulWidget {
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final providerData=Provider.of<NameProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          InkWell(
            child: Icon(Icons.settings),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Settings(),
                ),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          children: <Widget>[
            Text(
              'Welcome',
              style: GoogleFonts.lakkiReddy(
                fontSize: 40.0,
                textStyle: TextStyle(color: Colors.black),
              ),
            ),
            Text(
              providerData.firstName,
              style: GoogleFonts.lakkiReddy(
                fontSize: 40.0,
                textStyle: TextStyle(color: Colors.black),
              ),
            ),
            Text(
              providerData.lastName,
              style: GoogleFonts.lakkiReddy(
                fontSize: 40.0,
                textStyle: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
