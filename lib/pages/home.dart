import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Breakfast'),
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg'),
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Color(0xFFE8EAF6),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(10),
              width: 37,
              alignment: Alignment.center,
              child: SvgPicture.asset('assets/icons/dots.svg'),
              height: 20,
              decoration: BoxDecoration(
                color: Color(0xFFE8EAF6),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 20, right: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xff1D1617).withOpacity(0.11),
              blurRadius: 40,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryCard(
                    title: 'All',
                    imageUrl: 'assets/images/all.png',
                  ),
                  CategoryCard(
                    title: 'Burger',
                    imageUrl: 'assets/images/burger.png',
                  ),
                  CategoryCard(
                    title: 'Pizza',
                    imageUrl: 'assets/images/pizza.png',
                  ),
                  CategoryCard(
                    title: 'Sandwich',
                    imageUrl: 'assets/images/sandwich.png',
                  ),
                  CategoryCard(
                    title: 'Salad',
                    imageUrl: 'assets/images/salad.png',
                  ),
                  CategoryCard(
                    title: 'Dessert',
                    imageUrl: 'assets/images/dessert.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0x00fff2f2)
      )
  );
  }}