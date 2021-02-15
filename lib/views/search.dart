import 'package:flutter/material.dart';
class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal :24,vertical: 16),
              child:Row(
              children: [
                Expanded(child: TextField(
decoration: InputDecoration(
  hintText: "Search username ..."
),                )),
                Icon(Icons.search),
              ],
            ),
            ),
          ],

        ),
      ),
    );
  }
}
