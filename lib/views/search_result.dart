import 'package:flutter/material.dart';
import 'package:sic/views/property_details.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Result'.toUpperCase()),
        centerTitle: true,
        actions: [
          TextButton.icon(
              icon: const Icon(
                Icons.bookmark_outline,
                color: Colors.white,
              ),
              label: Text('Save'.toUpperCase(),
                  style: const TextStyle(color: Colors.white)),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Results: 1',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.grey[600],
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton.icon(
                      icon: const Icon(Icons.filter_3_outlined),
                      label: const Text('Filter'),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 20),
                    TextButton.icon(
                      icon: const Icon(Icons.sort_outlined),
                      label: const Text('Sort'),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PropertyDetails(),
                  ),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1591389703635-e15a07b842d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1033&q=80',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'KSH 700,000.00',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            // color: Colors.grey[600],
                            ),
                      ),
                      Text(
                        'Null',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.grey[600], fontSize: 18),
                      ),
                      Text(
                        'Somewhere, some Rd',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Created On',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
                                      color: Colors.grey[600],
                                    ),
                              ),
                              Text(
                                '2021/01/01',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      color: Colors.grey[600],
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Icon(
                            Icons.share,
                            color: Colors.grey[600],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
