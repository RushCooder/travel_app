import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            height: 41,
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blueGrey.shade800,
                  child: Icon(
                    Icons.search,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Search',
                  style: TextStyle(),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: CircleAvatar(
            child: Icon(Icons.filter_list),
          ),
        ),
      ],
    );
  }
}
