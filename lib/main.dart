import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ClipOval(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black.withOpacity(0.3),
                width: 1.0,
              ),
            ),
            child: const Icon(Icons.arrow_back),
          ),
        ),
        title: const Text('Checkout'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 12),
            child: Text(
              'Shipping Address',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('home'),
            subtitle: const Text('Estimated Arrival 25 August'),
            trailing: OutlinedButton(
              onPressed: () => {},
              style: OutlinedButton.styleFrom(
                  side: BorderSide(
                      width: 0.2, color: Colors.black.withOpacity(0.8))),
              child: const Text(
                'CHANGE',
                style: TextStyle(color: Colors.brown),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
            child: Divider(
              thickness: 0.7,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 12),
            child: Text(
              'Choose Shipping Type',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.credit_card),
            title: const Text('Economy'),
            subtitle: const Text('1901 Thorinde Cir,Shiloh,Hawaii 81063'),
            trailing: OutlinedButton(
              onPressed: () => {},
              style: OutlinedButton.styleFrom(
                  side: BorderSide(
                      width: 0.2, color: Colors.black.withOpacity(0.8))),
              child: const Text(
                'CHANGE',
                style: TextStyle(color: Colors.brown),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
            child: Divider(
              thickness: 0.7,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, left: 12),
            child: Text(
              'Order List',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Image.asset(
                  'assets/good.jpeg',
                  height: 80,
                  width: 60,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                children: [
                  Text(
                    'Brown Jacket',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Size : XL'),
                  Text(
                    '\$83.97',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Image.asset(
                  '/assets/good.jpeg',
                  height: 80,
                  width: 60,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                children: [
                  Text(
                    'Brown Jacket',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Size : XL'),
                  Text(
                    '\$83.97',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
