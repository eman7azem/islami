import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../my_theme_data.dart';
import '../providers/my_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.english,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.local == "en"
                          ? MyThemeData.primaryColor
                          : MyThemeData.darkPrimaryColor),
                ),
                provider.local == "en"
                    ? Icon(
                        Icons.done,
                        color: MyThemeData.primaryColor,
                        size: 30,
                      )
                    : SizedBox.shrink()
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.arabic,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.local == "ar"
                          ? MyThemeData.primaryColor
                          : MyThemeData.darkPrimaryColor),
                ),
                provider.local == "ar"
                    ? const Icon(
                        Icons.done,
                        color: MyThemeData.primaryColor,
                        size: 30,
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
