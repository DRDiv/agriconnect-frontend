import 'package:agriconnect/src/themes.dart/theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChoiceScreen extends StatefulWidget {
  const ChoiceScreen({super.key});

  @override
  State<ChoiceScreen> createState() => _ChoiceScreenState();
}

class _ChoiceScreenState extends State<ChoiceScreen> {
  final TextEditingController _inputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: 'button1',
              child: ElevatedButton(
                onPressed: () {
                  context.push('/farmer');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorSchemes.tertiary,
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Farmer',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Hero(
                  tag: 'button2',
                  child: ElevatedButton(
                    onPressed: () {
                      context.push('/authority');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorSchemes.tertiary,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Authority',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Enter Referral Code:',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            color:
                                                Theme.of(context).primaryColor),
                                  ),
                                  SizedBox(height: 10),
                                  TextField(
                                    controller: _inputController,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                    decoration: InputDecoration(
                                      labelText: 'Your Code',
                                      labelStyle: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('SUBMIT'),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Text(
                      'Click to Enter Referral code',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.black),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
