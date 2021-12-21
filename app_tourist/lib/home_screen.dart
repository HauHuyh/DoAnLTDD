import 'package:app_tourist/detailpage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Image.asset(
                    'images/laco.jpg',
                    width: 30.0,
                    height: 35,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 12,
                    width: 10,
                  ),
                  Text(
                    'Việt Nam',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                        size: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  'Vũng Tàu',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text(
                  'Vũng Tàu là một thành phố thuộc tỉnh Bà Rịa – Vũng Tàu, vùng Đông Nam Bộ, Việt Nam.',
                  style: TextStyle(color: Colors.grey[20], fontSize: 16),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text(
                  'Vũng Tàu là một địa điểm du lịch nổi tiếng tại miền Nam. Có những điểm du lịch đẹp như Hòn Bà, Khu du lịch Suối Tiên, công viên Thỏ Trắng...',
                  style: TextStyle(color: Colors.grey[20], fontSize: 16),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: 350,
                      height: 280,
                    ),
                    Container(
                      width: 300,
                      height: 280,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/vungtau.jpg'),
                          )),
                    ),
                    Positioned(
                      top: 120,
                      left: 230,
                      child: Material(
                        elevation: 8,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        child: Container(
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                              Text(
                                'Like',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18, top: 16),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Địa điểm gần đây',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cardo'),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 270,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18, left: 18),
                child: SizedBox(
                  height: 250,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      cardItemWidget(context, 'images/tuongiesu.jpg',
                          'Tượng chúa Giêsu Kito Vua', 'booking 30'),
                      Padding(padding: EdgeInsets.only(left: 12)),
                      cardItemWidget(context, 'images/longhai.jpg',
                          ' Biển Long Hải', 'Boking 50'),
                      Padding(padding: EdgeInsets.only(left: 12)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget circleWidgets(String bokingQty) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 12.0),
      child: Row(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(color: Colors.white),
                    image: DecorationImage(
                        image: AssetImage('assets/pro2.jpg'),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                left: 20.0,
                top: 1.0,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 16.0,
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(color: Colors.white, width: 1.5),
                      image: DecorationImage(
                          image: AssetImage('assets/pro1.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 90.0,
          ),
          Text(bokingQty,
              style: TextStyle(color: Colors.grey[20], fontSize: 18.0))
        ],
      ),
    );
  }

  Widget cardItemWidget(
      BuildContext context, String image, String title, String bokingQty) {
    return GestureDetector(
        onTap: (() {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => DetailPage(image, title)));
        }),
        child: Container(
          width: 250,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: 250,
                    height: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(image),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 200,
                    top: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '2.0',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24),
                        ),
                        Text(
                          'KM',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Material(
                          color: Colors.white,
                          shadowColor: Colors.grey,
                          elevation: 2.0,
                          borderRadius: BorderRadius.circular(40),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite,
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, left: 12),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              circleWidgets(bokingQty),
            ],
          ),
        ));
  }
}
