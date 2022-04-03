import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sic/views/search_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) => {
                if (value == 0)
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    )
                  }
                else if (value == 1)
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    )
                  }
                else if (value == 2)
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchScreen()),
                    )
                  }
              },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ]),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        centerTitle: true,
        title: const Text('Shares'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {},
          ),
        ],
      ),
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
            color: Colors.green,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Share Balance',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '0.0',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
              LineIcon(
                LineIcons.wavyMoneyBill,
                color: Colors.white,
                size: 70,
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _dashText(context, title: 'Available Balance'),
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    radius: 40,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _dashText(context, title: 'Share Market', value: '0.0'),
                  _dashText(context, title: 'Market Value', value: '55.0'),
                  _dashText(context, title: 'Last Traded', value: 'Dec 23'),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              children: [
                _dashButton(context),
                _dashButton(context, icon: Icons.arrow_downward, title: 'Buy'),
                _dashButton(context,
                    icon: LineIcons.clipboard, title: 'History'),
              ],
            ),
          ),
        )
      ]),
    );
  }

  Expanded _dashButton(BuildContext context, {IconData? icon, String? title}) {
    return Expanded(
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon ?? Icons.arrow_forward,
              color: Colors.green,
            ),
            Text(
              title ?? 'Sell',
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }

  Column _dashText(BuildContext context, {String? title, String? value}) {
    return Column(
      children: [
        Text(
          title ?? 'Total Shares',
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: Colors.green,
                fontWeight: value != null ? FontWeight.w300 : FontWeight.normal,
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          value ?? '0.0',
          style: value != null
              ? GoogleFonts.ptSans(fontSize: 20, color: Colors.green)
              : Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.green,
                  ),
        ),
      ],
    );
  }
}
