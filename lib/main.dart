import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Define your product list
  final List<Map<String, String>> cups = [
    {
      "title": 'اسم المنتج',
      "subtitle": "الوصف",
      "price": '20.00',
      "image": 'assets/cup.jpg'
    },
    {
      "title": 'اسم المنتج',
      "subtitle": "الوصف",
      "price": '20.00',
      "image": 'assets/cup.jpg'
    },
    {
      "title": 'اسم المنتج',
      "subtitle": "الوصف",
      "price": '20.00',
      "image": 'assets/cup.jpg'
    },
    {
      "title": 'اسم المنتج',
      "subtitle": "الوصف",
      "price": '20.00',
      "image": 'assets/cup.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.shopping_cart_outlined),
                    Icon(Icons.arrow_back_ios_sharp),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[400]!),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_list),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.search, color: Colors.grey[400]),
                          hintText: '...البحث',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(color: Colors.grey[400]!),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 300),
                itemCount: cups.length,
                itemBuilder: (context, i) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7)),
                          clipBehavior: Clip.antiAlias,
                          child: Stack(
                            children: [
                              Image.asset(
                                cups[i]["image"]!,
                                fit: BoxFit.cover,
                                height: 200,
                                width: 1000,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 20,
                                      backgroundColor: Colors.grey[600],
                                      child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {},
                                        icon:
                                            Icon(Icons.shopping_cart_outlined),
                                      ),
                                    ),
                                    CircleAvatar(
                                      maxRadius: 20,
                                      backgroundColor: Colors.grey[600],
                                      child: IconButton(
                                          color: Colors.white,
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.favorite_border_sharp,
                                          )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                cups[i]["title"]!,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                height: 2,
                              ),
                              Text(
                                cups[i]["subtitle"]!,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Container(
                                height: 6,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text("5.0"),
                                      Icon(Icons.star, color: Colors.orange),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "ر.س",
                                      ),
                                      SizedBox(width: 5),
                                      Text(cups[i]["price"]!,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
