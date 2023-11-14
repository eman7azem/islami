import 'package:flutter/material.dart';
import 'package:islami/providers/my_provider.dart';

import 'package:provider/provider.dart';

import 'hadeeth_model.dart';
import 'my_theme_data.dart';

class AhadeethDetails extends StatelessWidget {
  static const String route = "ahadeeth_details";

  AhadeethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var provider2 = Provider.of<MyProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as HadeethModel;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  provider2.theme == ThemeMode.light
                      ? "assets/images/background.png"
                      : "assets/images/bg.png",
                ),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            iconTheme: provider2.theme == ThemeMode.light
                ? MyThemeData.lightTheme.iconTheme
                : MyThemeData.darkTheme.iconTheme,
            title: Text(
              args.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: Card(
            elevation: 14,
            margin: EdgeInsets.all(18),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: MyThemeData.primaryColor)),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  thickness: 1,
                  endIndent: 40,
                  indent: 40,
                ),
                itemBuilder: (context, index) {
                  return Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      "${args.content[index]}",
                      textAlign: TextAlign.center,
                    ),
                  );
                },
                itemCount: args.content.length,
              ),
            ),
          ),
        ));
  }
}
