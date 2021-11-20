import 'package:flutter/material.dart';

class FoodsWidget extends StatefulWidget {
  @override
  _FoodsWidgetState createState() => _FoodsWidgetState();
}

class _FoodsWidgetState extends State<FoodsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          FoodTitle(),
          Expanded(
            child: FoodItems(),
          )
        ],
      ),
    );
  }
}

class FoodTiles extends StatelessWidget {
  String? name;
  String? imageUrl;
  String? price;

  FoodTiles({
    Key? key,
    @required this.name,
    @required this.imageUrl,
    @required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //  Navigator.push(context,);
      },
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            child: Card(
                color: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Container(
                  width: 170,
                  height: 210,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              alignment: Alignment.topRight,
                              width: double.infinity,
                              padding: EdgeInsets.only(right: 5, top: 5),
                              child: Container(
                                height: 28,
                                width: 28,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Color(0xFFfb3132),
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Center(
                                child: Image.asset(
                              'assets/images/' + imageUrl! + ".png",
                              width: 130,
                              height: 140,
                            )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(name!,
                                style: TextStyle(
                                    color: Color(0xFF6e6e71),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5, right: 5),
                            child: Text('\$' + price!,
                                style: TextStyle(
                                    color: Color(0xFF6e6e71),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5, right: 5),
                            child: Icon(
                              Icons.shopping_cart,
                              color: Color(0xFFfb3132),
                              size: 20,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class FoodTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Meals",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}

class FoodItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        FoodTiles(
          name: "food",
          imageUrl: "ic_burger",
          price: '15.06',
        ),
        FoodTiles(
          name: "food",
          imageUrl: "ic_burger",
          price: "17.03",
        ),
        FoodTiles(
          name: "food",
          imageUrl: "ic_burger",
          price: "11.00",
        ),
        FoodTiles(
          name: "food",
          imageUrl: "ic_burger",
          price: "11.10",
        ),
        FoodTiles(
          name: "food",
          imageUrl: "ic_burger",
          price: "12.00",
        ),
        FoodTiles(
          name: "food",
          imageUrl: "ic_burger",
          price: "11.10",
        ),
        FoodTiles(
          name: "food",
          imageUrl: "ic_burger",
          price: "23.0",
        ),
        FoodTiles(
          name: "food",
          imageUrl: "ic_burger",
          price: '15.06',
        ),
        FoodTiles(
          name: "food",
          imageUrl: "",
          price: "12.00",
        ),
      ],
    );
  }
}
