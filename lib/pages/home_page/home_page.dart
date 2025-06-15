import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Newsletter Seekers",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotest Newsletter",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text("View all", style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 280,
                  height: 300,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 270,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.0),
                          color: Theme.of(context).colorScheme.surface,
                        ),
                        child: Text("Child"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
