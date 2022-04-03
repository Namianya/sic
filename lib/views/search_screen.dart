import 'package:flutter/material.dart';
import 'package:sic/views/search_result.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  bool _isChecked5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
        elevation: 0,
        actions: [
          TextButton(
            child: Text(
              'Apply',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                  ),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 120,
            color: Colors.green,
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: Icon(Icons.search),
                hintText: 'Search',
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Icon(
                    Icons.pin_drop,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 15),
                  Text(
                    'Select Location',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text('Select County'),
              const SizedBox(height: 5),
              // dropdown form of locations
              DropdownButtonFormField(
                decoration: InputDecoration(
                  hintText: 'Select County',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onChanged: (value) => () {},
                items: <String>['Nairobi', 'Mombasa', 'Kiambu', 'Nakuru']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              )
            ]),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.category,
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 15),
                    Text(
                      'Size',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '1/8 Acre',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(color: Colors.grey[600]),
                            ),
                            const SizedBox(width: 8),
                            Checkbox(
                              value: _isChecked1,
                              onChanged: (value) => setState(() {
                                _isChecked1 = !_isChecked1;
                              }),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '1/4 Acre',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(color: Colors.grey[600]),
                            ),
                            const SizedBox(width: 8),
                            Checkbox(
                              value: _isChecked2,
                              onChanged: (value) => setState(() {
                                _isChecked2 = !_isChecked2;
                              }),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Orthers',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(color: Colors.grey[600]),
                            ),
                            const SizedBox(width: 8),
                            Checkbox(
                              value: _isChecked3,
                              onChanged: (value) => setState(() {
                                _isChecked3 = !_isChecked3;
                              }),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '1/2 Acre',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(color: Colors.grey[600]),
                            ),
                            const SizedBox(width: 8),
                            Checkbox(
                              value: _isChecked4,
                              onChanged: (value) => setState(() {
                                _isChecked4 = !_isChecked4;
                              }),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '1 Acre',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(color: Colors.grey[600]),
                            ),
                            const SizedBox(width: 8),
                            Checkbox(
                              value: _isChecked5,
                              onChanged: (value) => setState(() {
                                _isChecked5 = !_isChecked5;
                              }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextButton(
                    child: Text(
                      'Reset',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Colors.green,
                          ),
                    ),
                    onPressed: () {
                      setState(() {
                        _isChecked1 = false;
                        _isChecked2 = false;
                        _isChecked3 = false;
                        _isChecked4 = false;
                        _isChecked5 = false;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    child: const Text('Search'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchResults(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _sizes(BuildContext context,
      {required bool isChecked, String title = 'Title'}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: Colors.grey[600]),
        ),
        const SizedBox(width: 8),
        Checkbox(
          value: isChecked,
          onChanged: (value) => setState(() {
            isChecked = !isChecked;
          }),
        ),
      ],
    );
  }
}
