import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> sebhaList = [
    "سبحان الله",
    "لا اله الا الله",
    "الله اكبر",
    "الحمدلله"
  ];

  int counter = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/Group 7.png"),
          SizedBox(
            height: 35,
          ),
          Text(
            "عدد التسبيحات",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme.of(context).colorScheme.onSecondary),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).colorScheme.background,
            ),
            height: 81,
            width: 69,
            child: Center(
              child: Text(
                "$counter",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 51,
            width: 137,
            child: ElevatedButton(
              onPressed: () {
                counter++;
                setState(() {});
                if (counter == 30) {
                  if (index == sebhaList.length - 1) {
                    counter = 0;
                    index = 0;
                  } else {
                    counter = 0;
                    index++;
                  }
                }
              },
              child: Text(
                sebhaList[index],
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: Theme.of(context).colorScheme.background,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
