import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => const MaterialApp(
      useInheritedMediaQuery: true,
      home: Farm(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class Farm extends StatefulWidget {
  const Farm({super.key});

  @override
  State<Farm> createState() => _FarmState();
}

class _FarmState extends State<Farm> {
  @override
  Widget build(BuildContext context) {
    var rowlist = [
      "OFFERS",
      "VEGETABLES",
      "FRUITS",
      "EXOTIC",
      "SALADS",
    ];
    var caro = [
      "assets/images/a10.png",
      "assets/images/a9.png",
      "assets/images/t.png",
      "assets/images/t2.png",
      "assets/images/t3.png",
      "assets/images/t8.png"
    ];
    var catimg = [
      "assets/images/offer.png",
      "assets/images/j3.png",
      "assets/images/j1.png",
      "assets/images/j2.png",
      "assets/images/j8.png",
      "assets/images/j7.png",
      "assets/images/sp.png",
      "assets/images/j.png",
    ];
    var cate = [
      "\n\nOffers",
      "Vegetables",
      "Fruits",
      "Exotic",
      "Fruits Cuts",
      "Nutrition Chargers",
      "Packed Flavors",
      "Gourmet Salads"
    ];
    var bestimg = [
      "assets/images/i8.png",
      "assets/images/b.png",
      "assets/images/i3.png",
      "assets/images/i7.png",
    ];
    var best = ["Carrot", "Njali Poovan", "Broccoli Florets", "Potato"];
    var price = [
      "\n₹34\n0.50 Kg",
      "\n₹34.5\n0.50 Kg",
      "\n₹99\n1.00 NOS",
      "\n₹23\n0.50 Kg",
    ];
    var bimg = [
      "assets/images/bp.png",
      "assets/images/diet.png",
      "assets/images/tip.png",
    ];
    var blog = [
      "Control Blood Pressure the",
      "Five reasons why Broccoli shou",
      "Five tips to prevent"
    ];

    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
          elevation: 0,
          backgroundColor: Colors.green,
          floating: false,
          pinned: true,
          title: const Text(
            "\n\nFARMERS FRESH ZONE\n",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.location_on_outlined),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, right: 8, bottom: 8),
              child: Text(
                "\nKochi",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
          bottom: AppBar(
              backgroundColor: Colors.green,
              elevation: 0,
              title: Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.white,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Search for Vegetables,Fruits..",
                      prefixIcon: Icon(Icons.search),
                    ),
                  )))),
      SliverList(
        delegate: SliverChildListDelegate([
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            for (int i = 0; i < rowlist.length; i++)
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 8),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 2,
                        backgroundColor: Colors.green[100],
                        shape: const StadiumBorder()),
                    child: Text(
                      rowlist[i],
                      style: TextStyle(fontSize: 10, color: Colors.green[900]),
                    )),
              ),
          ]),
        ]),
      ),
      SliverList(
        delegate: SliverChildListDelegate([
          CarouselSlider(
              items: List.generate(
                  6,
                  (index) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(caro[index]),
                          fit: BoxFit.fill,
                        )),
                      )),
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                height: 200,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                enableInfiniteScroll: true,
              )),
          const SizedBox(height: 16),
          SizedBox(
            height: 95,
            width: double.infinity,
            child: Row(
              children: [
                const Spacer(),
                Column(
                  children: [
                    Image.asset(
                      "assets/icons/watch.png",
                      width: 40,
                      height: 40,
                    ),
                    Text("\n30 MINS POLICY",
                        style:
                            TextStyle(fontSize: 11, color: Colors.green[900]))
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Image.asset(
                      "assets/icons/phn.png",
                      width: 40,
                      height: 40,
                    ),
                    Text("\nTRACEABLITY",
                        style:
                            TextStyle(fontSize: 11, color: Colors.green[900]))
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Image.asset(
                      "assets/icons/d1.png",
                      width: 40,
                      height: 40,
                    ),
                    Text("\nLOCAL SOURCING",
                        style:
                            TextStyle(fontSize: 11, color: Colors.green[900])),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text("Shop By Category",
                style: TextStyle(
                  fontSize: 22,
                )),
          )
        ]),
      ),
      SliverGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          childAspectRatio: 2 / 3,
          children: List.generate(
            8,
            (index) {
              return Card(
                shadowColor: Colors.black54,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8)),
                        child: Image(
                          image: AssetImage(
                            catimg[index],
                          ),
                          fit: BoxFit.fill,
                        )),
                    ListTile(
                        title: Text(
                      cate[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ))
                  ],
                ),
              );
            },
          )),
      SliverList(
        delegate: SliverChildListDelegate([
          const SizedBox(
            height: 10,
          ),
          const Card(
            elevation: 1,
            shadowColor: Colors.black45,
            child: SizedBox(
                height: 110,
                width: double.infinity,
                child: Image(
                    image: AssetImage("assets/images/banner1.png"),
                    fit: BoxFit.cover)),
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text("Best Selling Products",
                style: TextStyle(
                  fontSize: 22,
                )),
          ),
        ]),
      ),
      SliverGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          childAspectRatio: 2 / 3,
          children: List.generate(
            4,
            (index) {
              return Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image(
                      image: AssetImage(
                        bestimg[index],
                      ),
                      fit: BoxFit.fill,
                    ),
                    ListTile(
                      title: Text(
                        best[index],
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      subtitle: Text(price[index]),
                      trailing: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 1,
                            backgroundColor: Colors.green,
                          ),
                          onPressed: () {},
                          child: const Text("ADD")),
                    )
                  ],
                ),
              );
            },
          )),
      SliverList(
          delegate: SliverChildListDelegate([
        const Card(
          elevation: 1,
          shadowColor: Colors.black45,
          child: SizedBox(
            height: 40,
            width: double.infinity,
            child: Text("VIEW MORE",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 21, color: Colors.green)),
          ),
        ),
        const Card(
          elevation: 1,
          shadowColor: Colors.black45,
          child: SizedBox(
              height: 110,
              width: double.infinity,
              child: Image(
                  image: AssetImage(
                    "assets/images/blob.png",
                  ),
                  fit: BoxFit.cover)),
        ),
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text("Our Blog Post",
              style: TextStyle(
                fontSize: 22,
              )),
        )
      ])),
      SliverList(
          delegate: SliverChildListDelegate([
        const SizedBox(height: 10),
        ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                shadowColor: Colors.black54,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image(
                      image: AssetImage(
                        bimg[index],
                      ),
                      fit: BoxFit.fill,
                    ),
                    ListTile(
                      title: Text(
                        blog[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      subtitle: const Text(
                        "5 months ago",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_right_alt, size: 13),
                    )
                  ],
                ),
              );
            }),
      ])),
      SliverList(
          delegate: SliverChildListDelegate([
        const Card(
          elevation: 1,
          shadowColor: Colors.black45,
          child: SizedBox(
            height: 40,
            width: double.infinity,
            child: Text("VIEW MORE",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 21, color: Colors.green)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text("What Our Customers Say?",
              style: TextStyle(
                fontSize: 22,
              )),
        ),
      ])),
      SliverList(
          delegate: SliverChildListDelegate([
        const Padding(
          padding: EdgeInsets.all(11),
          child: Column(children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 23,
                  backgroundImage: AssetImage("assets/images/img7.png"),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(children: [
                  Text("Charlie P I",
                      style: TextStyle(fontSize: 18, color: Colors.green)),
                  Text("\nSales Manager", style: TextStyle(fontSize: 10)),
                ]),
              ],
            ),
            Text(
              "\tFarmers Fresh Zone is the best solution to countless concerned parents like us! This Kochi-based farm-to-fork online marketplace is connecting farmers directly to customers. Fresh Fruits & Vegetables, picked just for you",
              style: TextStyle(fontSize: 10),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "This Kochi-based-farm-to-fork online\nmarketplace is connecting farmers directly to customers",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
        )
      ])),
      SliverList(
          delegate: SliverChildListDelegate([
        const SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: AssetImage("assets/images/news_1.png")),
              Image(image: AssetImage("assets/images/news_2.png")),
              Image(image: AssetImage("assets/images/news_3.png")),
              Image(image: AssetImage("assets/images/news_4.png")),
              Divider()
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text("Get To Know Us",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
      ])),
      SliverList(
        delegate: SliverChildListDelegate(
          [
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Row(
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text("About Us",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                  VerticalDivider(
                    thickness: 1,
                    indent: 7,
                    endIndent: 0,
                    width: 10,
                  ),
                  Text("Our Farmers",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                  VerticalDivider(
                    thickness: 1,
                    indent: 7,
                    endIndent: 0,
                    width: 10,
                  ),
                  Text("Blog",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                  VerticalDivider(
                    thickness: 1,
                    indent: 7,
                    endIndent: 0,
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    ]));
  }
}
