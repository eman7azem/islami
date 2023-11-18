import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/sura_details.dart';
import 'package:provider/provider.dart';

import 'ahadeeth_details.dart';
import 'home_screen.dart';
import 'my_theme_data.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MyProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return MaterialApp(
      themeMode: provider.theme,
      locale: Locale(provider.local),
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (context) => HomeScreen(),
        SuraDetails.route: (context) => SuraDetails(),
        AhadeethDetails.route: (context) => AhadeethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
