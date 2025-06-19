import 'package:flutter/material.dart';
import '../../models/data_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController emailC = TextEditingController();


  String? name;
  bool? isTrue;
  String? email;
  bool? address;
  Map<String,dynamic> map={};
  List<bool> isExpandedList = [];
  @override
  void initState() {
    super.initState();
    isExpandedList = List.filled(d.length,true);
  }

  @override
  Widget build(BuildContext context) {
    int n = 5;
    int a = 10;
    List<bool> list = [];
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 300,
              height: 150,
              color: list.isEmpty ? Colors.tealAccent : Colors.yellow,
              child: Center(
                child: Column(
                  children: [
                    Text(map.isEmpty ? 'Raman':'$map',style: TextStyle(fontSize: 20),),
                    Text(
                      email == null ? "Edugaon@Gmail.com" : "$email",
                      style: TextStyle(
                        color: email == null ? Colors.blue : Colors.grey,
                      ),
                    ),
                    Text(
                      a < 5 ? "Home" : "$a",
                      style: TextStyle(
                        color: a < 5 ? Colors.green : Colors.black,
                      ),
                    ),
                    Text(
                      address != true ? "Parsa" : "$address",
                      style: TextStyle(
                        color:
                            address == null ? Colors.blue : Colors.pinkAccent,
                      ),
                    ),
                    TextButton(onPressed: (){
                      setState(() {
                        address=false;
                      });
                    }, child: Text("change"))
                  ],
                ),
              ),
            ),
            Icon(isTrue != true ? Icons.add : Icons.remove),
            Text(
              name == null ? "Arbind" : "$name",
              style: TextStyle(
                fontSize: 30,
                color: name == null ? Colors.red : Colors.grey,
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics:  NeverScrollableScrollPhysics(),
              itemCount: d.length,
              itemBuilder: (context, index) {
                final data = d[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person),
                        trailing: IconButton(
                          icon: Icon(
                            isExpandedList[index]
                                ? Icons.expand_less
                                : Icons.expand_more,
                          ),
                          onPressed: () {
                            setState(() {
                              isExpandedList[index] = !isExpandedList[index];
                            });
                          },
                        ),
                        title: Text(data.name ?? ''),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Email: ${data.email ?? ''}"),
                            Text("Time: ${data.time ?? ''}"),
                          ],
                        ),
                      ),
                      if (isExpandedList[index])
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16.0,
                              bottom: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Extra Info for ${data.name}"),
                                const Text("More details can go here..."),
                              ],
                            ),
                          ),
color: Colors.yellow,                        ),
                    ],
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            // Circle Avatar Stack
            Stack(
              clipBehavior: Clip.none,
              children: [
                const SizedBox(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(backgroundColor: Colors.red),
                ),
                const Positioned(
                  bottom: -2,
                  right: 0,
                  child: Icon(Icons.camera_alt, size: 18, color: Colors.black),
                ),
              ],
            ),

            const Text("Home Screen"),
            const SizedBox(height: 10),

            // TextField
            TextField(
              decoration: const InputDecoration(border: InputBorder.none),
              controller: emailC,
              cursorColor: Colors.red,
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 20),

            // Gradient Button
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.red, Colors.yellow],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Floating Buttons
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              backgroundColor: Colors.blueGrey,
            ),
            icon: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
