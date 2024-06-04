import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../bottom_sheets/show_language_bottom_sheet.dart';
import '../bottom_sheets/show_mode_bottom_sheet.dart';
import '../providers/my_provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                  provider.local == "en"
                      ? AppLocalizations.of(context)!.english
                      : AppLocalizations.of(context)!.arabic,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onSecondary,
                  )),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(AppLocalizations.of(context)!.mode,
              style:
                  TextStyle(color: Theme.of(context).colorScheme.onSecondary)),
          InkWell(
            onTap: () {
              showThemingBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                  provider.theme == ThemeMode.light
                      ? AppLocalizations.of(context)!.light
                      : AppLocalizations.of(context)!.dark,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.onSecondary)),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
        ),
        context: context,
        builder: (context) {
          return LanguageBottomSheet();
          ;
        });
  }

  void showThemingBottomSheet() {
    showModalBottomSheet(
      // backgroundColor: Theme.of(context).colorScheme.onPrimary,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(18),
            topLeft: Radius.circular(18),
          ),
        ),
        context: context,
        builder: (context) {
          return ModeBottomSheet();
        });
  }
}
