import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Find your',
                      style:  TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Inspiration',
                      style: TextStyle(color: Colors.black87, fontSize: 40),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          hintText: "Search you are looking for",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Promo today",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          PromoCard('assets/images/1.jpg'),
                          PromoCard('assets/images/2.jpg'),
                          PromoCard('assets/images/3.jpg'),
                          PromoCard('assets/images/5.jpg'),

                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.red,
                        image:  const DecorationImage(
                            image: AssetImage('assets/images/4.jpg'), fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget PromoCard(image) {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:  DecorationImage(
                image: AssetImage(image), fit: BoxFit.cover),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.1),
              ],
            )),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops:const [0.1,0.9],
                colors: [
                  Colors.black.withOpacity(0.2),
                  Colors.black.withOpacity(0.1),
                ],
              )),
        ),
      ),
    );
  }
}
