import 'package:flutter/material.dart';

class Commerce_Home extends StatefulWidget {
  @override
  _Commerce_HomeState createState() => _Commerce_HomeState();
}

class _Commerce_HomeState extends State<Commerce_Home> {
  var prodName = [
    "iphone X",
    "Mercedes",
    "Nike Shoes",
    "Ferrari",
    "Branded Shirt",
    "Macbook",
    "Adidas Shoes",
    "Women's Hand bag",
    "Rado Wrist Watch",
    "Oppo A5s",
    "Portugal Football Kit",
    "Gaming PC"
  ];
  var prodImg = [
    "iphonex.jpg",
    "mercedes.jpg",
    "nike.jpg",
    "ferrari.jpg",
    "shirt.jpg",
    "macbook.jpg",
    "adidas.jpg",
    "hand bag.jpg",
    "rado watch.jpg",
    "oppo.jpg",
    "kit.jpg",
    "gaming pc.jpg"
  ];

  var added = false;

  addedToCart() {
    setState(() {
      added = !added;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: prodName.length,
        itemBuilder: (context, index) {
          return Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              margin: EdgeInsets.only(top: 2),
              width: MediaQuery.of(context).size.width * 0.98,
              child: ListTile(
                tileColor: Colors.black12,
                hoverColor: Colors.white,
                focusColor: Colors.white,
                selectedTileColor: Colors.white,
                title: Text(
                  prodName[index],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text("Price: 20\$",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: ClipOval(
                      child: Image.asset(
                    "assets/images/" + prodImg[index],
                    fit: BoxFit.fitHeight,
                    height: MediaQuery.of(context).size.height * .10,
                  )),
                ),
                trailing: Container(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      onPressed: () {},
                      child: Icon(
                        Icons.add_shopping_cart_outlined,
                        size: 25,
                      ),
                    )),
              ),
            ),
          );
        });
  }
}
