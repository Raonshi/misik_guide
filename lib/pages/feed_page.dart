import 'package:flutter/material.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  TextStyle get _contentTitleStyle => const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 80.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text("recommendation", style: _contentTitleStyle),
                  ),
                  SizedBox(
                    height: 200.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      itemBuilder: (context, index) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.network(
                                    "https://picsum.photos/150/150",
                                    width: 150.0,
                                    height: 150.0,
                                  ),
                                ),
                                const SizedBox(
                                  width: 100.0,
                                  child: Text(
                                    "itemasdfasdfaasddfdfasdfasdfasdffa",
                                    style: TextStyle(fontSize: 18.0),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text("recentReviews", style: _contentTitleStyle),
                  ),
                  ...List.generate(4, (index) {
                    return ListTile(
                      title: Text("title $index"),
                      subtitle: Text("subtitle $index"),
                    );
                  })
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SearchAnchor.bar(
            suggestionsBuilder: (context, controller) {
              return [
                const Text("suggestion 1"),
                const Text("suggestion 2"),
                const Text("suggestion 3"),
              ];
            },
          ),
        ),
      ],
    );
  }
}
