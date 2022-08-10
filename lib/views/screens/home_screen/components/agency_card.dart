import 'package:flutter/material.dart';
import 'package:travel_app/views/screens/components/app_text.dart';

class AgencyCard extends StatelessWidget {
  const AgencyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  child: Icon(Icons.screen_share_sharp),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: 'Agency Name',
                      fontSize: 13,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        AppText(
                          title: '4.9',
                          isTitle: false,
                          fontSize: 13,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.max,
              children: [
                CircleAvatar(
                  radius: 13,
                  child: AppText(
                    title: 'TI',
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                CircleAvatar(
                  radius: 13,
                  child: AppText(
                    title: 'TI',
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Chip(
                  backgroundColor: Colors.cyan.withOpacity(0.1),
                  label: AppText(
                    title: '+236',
                    fontSize: 12,
                    color: Colors.cyan,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                AppText(
                  title: 'Liked This',
                  fontSize: 10,
                  isTitle: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
