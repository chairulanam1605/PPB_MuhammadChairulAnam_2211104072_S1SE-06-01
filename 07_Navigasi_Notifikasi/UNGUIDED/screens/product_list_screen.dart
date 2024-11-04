import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: 'p1',
      name: 'Laptop',
      description: 'Laptop berkualitas tinggi untuk produktivitas.',
      price: 10000000.0,
      imageUrl: 'https://blog-cdn.kitalulus.com/blog/wp-content/uploads/2024/02/20212537/64db4a50b454955a45b35283_PREDATOR-HELIOS-NEO-16-PHN16-71-07.webp',
    ),
    Product(
      id: 'p2',
      name: 'Smartphone',
      description: 'Smartphone dengan performa tinggi.',
      price: 7000000.0,
      imageUrl: 'https://static.retailworldvn.com/Products/Images/12220/299344/smartphone-iphone-12-4gb-64gb-black-1.jpg',
    ),
    Product(
      id: 'p3',
      name: 'Headphone',
      description: 'Headphone dengan kualitas suara terbaik.',
      price: 200000.0,
      imageUrl: 'https://m.media-amazon.com/images/I/61CGHv6kmWL.AC_UF894,1000_QL80.jpg',
    ),
    Product(
      id: 'p4',
      name: 'Keyboard',
      description: 'Keyboard dengan kualitas suara terbaik.',
      price: 2000000.0,
      imageUrl: 'https://resource.logitech.com/w_1600,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/products/keyboards/mx-mechanical/gallery/mx-mechanical-keyboard-top-view-graphite-us.png?v=1&quot',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (ctx, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(product.imageUrl),
              title: Text(product.name),
              subtitle: Text('Rp. ${product.price}'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => ProductDetailScreen(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
