import 'package:flutter/material.dart';
import 'package:moda_uygulamasi/main.dart';

class Detay extends StatefulWidget {
  var imgPath;
  var clothingPath;
  Detay({required this.imgPath, required this.clothingPath, Key? key})
      : super(key: key);

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  int kontrol = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          kontrol == 1
              ? Positioned(
                  left: 30,
                  right: 30,
                  bottom: 30,
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    elevation: 4,
                    child: Container(
                      height: 230,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  height: 120,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.brown.shade100,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(widget.clothingPath),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Laminated',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Louis vuitton',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      color: Colors.black87,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 180,
                                    child: Text(
                                      'This official website features a ribbed knit zipper jacket.',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Montserrat',
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.brown.shade200,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 4),
                            child: Row(
                              children: [
                                Text(
                                  '649.99\$',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 26,
                                  ),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {},
                                  child: CircleAvatar(
                                    backgroundColor: Colors.brown,
                                    radius: 24,
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      kontrol = 0;
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.brown,
                                    radius: 24,
                                    child: Icon(
                                      Icons.arrow_downward_sharp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : Positioned(
                  bottom: 30,
                  right: 30,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        kontrol = 1;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.brown,
                      radius: 24,
                      child: Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
          Positioned(
            left: 15,
            top: 30,
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AnaSayfa()));
              },
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.brown,
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
