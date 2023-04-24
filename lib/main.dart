import 'package:flutter/material.dart';
import 'package:flutter_application_3/view/page.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:flutter_application_3/view/page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 31, 41, 51),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: SvgPicture.asset('assets/icons/shop.svg'),
              onPressed: () {},
            ),
          ],
          elevation: 0,
        ),
        body: ListPages(),
        bottomSheet: Container(
          color: Color.fromARGB(255, 31, 41, 51),
          height: 420,
          child: Column(children: [
            Center(
              child: SmoothPageIndicator(
                controller: ListPages().controller,
                count: 4,
                onDotClicked: (index) {},
                effect: CustomizableEffect(
                    activeDotDecoration: DotDecoration(
                        height: 8,
                        width: 8,
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber),
                    dotDecoration: DotDecoration(
                        height: 8,
                        width: 8,
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 62, 76, 89))),
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 50, 63, 75),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              width: double.infinity,
              height: 390,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(children: [
                  Row(
                    children: [
                      Text('Donnut 3D',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Overpass',
                              fontSize: 28)),
                      Spacer(),
                      SvgPicture.asset('assets/icons/heart.svg'),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text('123ETH',
                            style: TextStyle(
                                color: Colors.amber[300],
                                fontFamily: 'Overpass',
                                fontSize: 18)),
                      ),
                      Spacer()
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          children: [
                            RatingBar(
                              itemSize: 21,
                              initialRating: 4,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              ratingWidget: RatingWidget(
                                full: SvgPicture.asset('assets/icons/star.svg'),
                                empty: SvgPicture.asset('assets/icons/star.svg',
                                    color: Colors.grey[700]),
                                half: SvgPicture.asset('assets/icons/star.svg',
                                    color: Colors.grey[700]),
                              ),
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '(214 REVIEVER)',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Occaecat ipsum magna veniam proident aliquip irure enim mollit cillum esse. Dolore eu amet Lorem est quis reprehenderit eu. Aute incididunt magna voluptate incididunt irure tempor amet est quis ullamco...',
                      style: TextStyle(color: Colors.grey[300], fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      children: [
                        Text(
                          'QTY',
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[300]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Container(
                            width: 124,
                            height: 56,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    width: 1,
                                    color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '-',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(color: Colors.grey[100]),
                                ),
                                Text(
                                  '+',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            style: ButtonStyle(
                  
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.grey[700]),
                                foregroundColor: 
                                  MaterialStatePropertyAll(Colors.grey[300]),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                  
                                  ),
                            onPressed: () {},
                  
                            
                            child: Text(
                              'Add to card',
                            )),

                            TextButton(
                            style: ButtonStyle(
                  
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.amber[300]),
                                foregroundColor: 
                                  MaterialStatePropertyAll(Colors.black),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                                ),
                  
                                  ),
                            onPressed: () {},
                  
                            
                            child: Text(
                              'Buy Now',
                            ))
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
