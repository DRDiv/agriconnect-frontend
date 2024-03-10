import 'package:agriconnect/src/components/bottomnav.dart';
import 'package:agriconnect/src/components/lstile.dart';
import 'package:agriconnect/src/states/state.dart';
import 'package:flutter/material.dart';

class FarmerScreen extends StatefulWidget {
  const FarmerScreen({super.key});

  @override
  State<FarmerScreen> createState() => _FarmerScreenState();
}

class _FarmerScreenState extends State<FarmerScreen> {
  TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(0),
      appBar: AppBar(backgroundColor: Color(0xFF20A27C), actions: [
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Enter BPL ID :',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _inputController,
                        decoration: InputDecoration(
                          labelText: 'Enter text',
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Submit'),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
            size: 30,
          ),
        ),
      ]),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image_2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: (DataFarm.length == 0)
              ? Center(
                  child: Text(
                  'No Farms Found',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.amber),
                ))
              : ListView.builder(
                  itemCount: DataFarm.length,
                  itemBuilder: (context, index) {
                    print(DataFarm);
                    return LsTile('farm ' + DataFarm[index]['id'].toString());
                  },
                )),
    );
  }
}
