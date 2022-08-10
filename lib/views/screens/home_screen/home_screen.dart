import 'package:flutter/material.dart';
import 'package:travel_app/database/trip_package_db.dart';
//
import '../components/app_text.dart';
import 'components/agency_card.dart';
import 'components/custom_app_bar.dart';
import 'components/search_bar.dart';
import 'components/travel_card.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            //Appbar
            const CustomAppBar(),
            const SizedBox(
              height: 15,
            ),
            //Search options
            const SearchBar(),
            const SizedBox(
              height: 20,
            ),
            //popular trip text
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: AppText(
                title: 'Popular Trip',
              ),
            ),
            //popular trip cards horizontal listview in a container
            Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              margin: const EdgeInsets.all(10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tripPackages.length,
                itemBuilder: (context, index) => TravelCard(
                  title: tripPackages[index].title,
                  location: tripPackages[index].location,
                  image: tripPackages[index].images[0],
                  availableDate: tripPackages[index].availableDate,
                ),
              ),
            ),

            //upcoming trip text
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: AppText(
                title: 'Upcoming Trip',
              ),
            ),
            //upcoming trip cards horizontal listview in a container
            Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              margin: const EdgeInsets.all(10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tripPackages.length,
                itemBuilder: (context, index) => TravelCard(
                  title: tripPackages[index].title,
                  location: tripPackages[index].location,
                  image: tripPackages[index].images[0],
                  availableDate: tripPackages[index].availableDate,
                ),
              ),
            ),
            //trending trip text
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: AppText(
                title: 'Trending Trip',
              ),
            ),
            //upcoming trip cards horizontal listview in a container
            Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              margin: const EdgeInsets.all(10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tripPackages.length,
                itemBuilder: (context, index) => TravelCard(
                  title: tripPackages[index].title,
                  location: tripPackages[index].location,
                  image: tripPackages[index].images[0],
                  availableDate: tripPackages[index].availableDate,
                ),
              ),
            ),

            //travel agency
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: AppText(
                title: 'Travel Agency',
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 130,
              margin: const EdgeInsets.all(10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => const AgencyCard(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
