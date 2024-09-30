import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ECommerceHomePage(),
    );
  }
}

class ECommerceHomePage extends StatefulWidget {
  @override
  _ECommerceHomePageState createState() => _ECommerceHomePageState();
}

class _ECommerceHomePageState extends State<ECommerceHomePage> {
  int _selectedIndex = 0;
  final List<String> categories = [
    'Electronics',
    'Clothing',
    'Shoes',
    'Watches',
    'Books'
  ];
  final List<String> banners = [
    'https://via.placeholder.com/600x200',
    'https://via.placeholder.com/600x200',
    'https://via.placeholder.com/600x200',
  ];
  final List<Map<String, dynamic>> products = [
    {
      'title': 'Product 1',
      'price': 29.99,
      'imageUrl': 'https://via.placeholder.com/150'
    },
    {
      'title': 'Product 2',
      'price': 49.99,
      'imageUrl': 'https://via.placeholder.com/150'
    },
    {
      'title': 'Product 3',
      'price': 19.99,
      'imageUrl': 'https://via.placeholder.com/150'
    },
    {
      'title': 'Product 4',
      'price': 59.99,
      'imageUrl': 'https://via.placeholder.com/150'
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShopName'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search products...',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),

            // Category List (Horizontal)
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: Text('Categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      label: Text(categories[index]),
                      backgroundColor: Colors.blue.shade100,
                    ),
                  );
                },
              ),
            ),

            // Banner Carousel
            CarouselSlider(
              options: CarouselOptions(height: 200, autoPlay: true),
              items: banners.map((banner) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.grey),
                      child: Image.network(banner, fit: BoxFit.cover),
                    );
                  },
                );
              }).toList(),
            ),

            // Featured Products Grid
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Featured Products',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

// Product Card Widget
class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(product['imageUrl'],
              fit: BoxFit.cover, height: 120, width: double.infinity),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(product['title'], style: TextStyle(fontSize: 16)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('\$${product['price']}',
                style: TextStyle(fontSize: 14, color: Colors.green)),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle Add to Cart action
              },
              child: Text('Add to Cart'),
            ),
          ),
        ],
      ),
    );
  }
}
