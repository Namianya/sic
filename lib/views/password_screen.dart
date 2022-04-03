import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sic/views/home_page.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: const Icon(LineIcons.weebly),
                ),
                const SizedBox(width: 16),
                Text(
                  'Sic',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Enter your password',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Forgot your password?',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[300],
                border: const OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: const Text('Continue'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
