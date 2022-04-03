import 'package:flutter/material.dart';

class PropertyDetails extends StatefulWidget {
  const PropertyDetails({Key? key}) : super(key: key);

  @override
  State<PropertyDetails> createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property Details'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(children: [
        Expanded(
          child: ListView(
            children: [
              Container(
                color: Colors.white,
                height: 300.0,
                width: double.infinity,
                child: Image.network(
                  'https://images.unsplash.com/photo-1591389703635-e15a07b842d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1033&q=80',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  'KSH 700,000.00',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.green,
                      ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      'Property name goes here',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Plot Size: 1,000 sq. ft',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      'Details',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _detailTitle(context,
                                title: 'Type', icon: Icons.home),
                            const SizedBox(height: 10),
                            _detailTitle(context,
                                title: 'Price', icon: Icons.price_change),
                            const SizedBox(height: 10),
                            _detailTitle(context,
                                title: 'Area', icon: Icons.map),
                            const SizedBox(height: 10),
                            _detailTitle(context,
                                title: 'Available', icon: Icons.add),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Land',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'KSH 700,000.00',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '1.125',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '20',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    child: const Text('Reserve'),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.green,
                    ),
                    child: const Text('Reserve'),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    child: const Text('Call'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }

  Row _detailTitle(BuildContext context,
      {String title = 'Title', IconData icon = Icons.title}) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey[600],
        ),
        const SizedBox(width: 20),
        Text(
          title,
          style: Theme.of(context).textTheme.caption,
        )
      ],
    );
  }
}
