import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  // List of products with dynamic data
  final List<Map<String, String>> products = [
    {
      'title':
          'Samsung 49 Inch Series 5 HD Smart LED TV (49N5300) Price in Pakistan 2024 ',
      'price': '799.99',
      'imageUrl':
          'data:image/jpeg;base64,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',
    },
    {
      'title': 'Samsung S24 Ultra',
      'price': '599.99',
      'imageUrl':
          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxATEBETEhASDxUVFRIXEBAQDxUXFRYXFRUWFxUXFRUYHSggGBsnGxYVITEhJSorLi4uGB8zODMsNygtLisBCgoKDg0OGhAQGC0eHR0rKy0tKy0rLS0rKy0tLS0tLS0tLS0rLSstLSstLS0tLS0tLSstLTctLS0tOC0rODctL//AABEIALcBEwMBIgACEQEDEQH/xAAcAAEAAgIDAQAAAAAAAAAAAAAABgcEBQIDCAH/xABQEAABAwICBAkHBwYMBwEAAAABAAIDBBESIQUGMUEHEyIyUWFxc7IkcoGRobHBFCM0QnSz0jM1YoKEkiVEUmNkk5SitMLR4RUXQ1ODxPBU/8QAGQEBAQEBAQEAAAAAAAAAAAAAAAIBAwQF/8QAIBEBAQACAgIDAQEAAAAAAAAAAAECEQMxEjIEIUGBIv/aAAwDAQACEQMRAD8AvFERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQfCV9Wk1hkti7iYj0YVGdN6Yp6SETTu4plwMYvcuIyADcycjkL7CdgJWbbpYKKvNC6fjqYuNpqqR7LkG0j7tI2hzX7D2jeFnnSlU3ZO49To4z7mg+1PI0mZPoRpB2G/YqmrNbKmeogglERY2YOBYxwcSGPABu4gjPo3BaV1ZhjL8RYGNJe8G2EA2uT6k2aXoioHRmt8kl+IrZjh2t42TLo5L9y2seuekm7Kpzh0PiiPtw39q1i6V8BVJf8zdIOmZA9tO9krmMc7inh4D3AEgh9r2PQt1rPVTfLXRxF9y2LCxjiMyDsAW4zd0LURULDrlJxjootIFz23uxj3nm87C4twvt+iTsJFxms+PXjSLdlRi86Nh94VeFvQutfLqk63hX0hEL4KeTz43DwuCs3QhbIxpe1rrxMdmL7XydPYuXJfDtsm0gRQbSGuuiYav5JJOYZbgHC6RrGk7A57DZvp2b7KTGmcObNM39cO8Ycud5pO43xbNFqX8e0G0+LvImnwYVWuvWnal74Gl4jtMWkwF7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',
    },
    {
      'title': 'Headphones',
      'price': '99.99',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRqq60oF699MMzPdlF0sf4r9JnVWWj0GpHTw&s',
    },
    {
      'title': 'Laptop',
      'price': '999.99',
      'imageUrl':
          'https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 5),
                  Text("Karachi City, Pakistan"),
                ],
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search here...",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "UPTO 60% OFF\nSchool Collections",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        backgroundColor: Colors.black12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Category",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategoryIcon(icon: Icons.school, label: "School"),
                  CategoryIcon(icon: Icons.sports_basketball, label: "Sports"),
                  CategoryIcon(
                      icon: Icons.electrical_services, label: "Electronic"),
                  CategoryIcon(icon: Icons.more_horiz, label: "All"),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Products",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Filters"),
                  ),
                ],
              ),
              // ListView.builder to display products line by line
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetailPage()),
                      );
                    },
                    child: ProductCard(
                      title: product['title']!,
                      price: product['price']!,
                      imageUrl: product['imageUrl']!,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: 0,
        onTap: (index) {},
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
      ),
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'data:image/jpeg;base64,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',
              height: 150,
              width: 9999999,
            ),
            SizedBox(height: 10),
            Text(
              "Samsung Smart Led 55 inch 4K",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "\$799.99",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            SizedBox(height: 20),
            Text(
              "Description",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "This is a high-definition LED television that brings vivid colors and a clear display. Perfect for enjoying movies and sports at home.",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckoutPage(),
                        )); // Handle add to cart action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Background color
                    foregroundColor: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text("Add To Cart"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle add to cart action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Background color
                    foregroundColor: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text("Buy Now"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  CategoryIcon({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey[200],
          child: Icon(icon, color: Colors.black),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;

  ProductCard({
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: TextStyle(fontSize: 16)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("\$$price", style: TextStyle(color: Colors.green)),
          ),
        ],
      ),
    );
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> lastSearches = [
    "iPhone 15 Pro Max",
    "Camera DSLR",
    "Phone Cover",
    "Headset",
    "Smart Watch",
    "Laptop",
  ];

  void clearAllSearches() {
    setState(() {
      lastSearches.clear();
    });
  }

  void removeSearchItem(int index) {
    setState(() {
      lastSearches.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search, color: Colors.grey),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (lastSearches.isNotEmpty)
              Row(
                children: [
                  Text(
                    "Recent Searches",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: clearAllSearches,
                  ),
                ],
              ),
            if (lastSearches.isNotEmpty)
              ListView.builder(
                shrinkWrap: true,
                itemCount: lastSearches.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(lastSearches[index]),
                    trailing: IconButton(
                      icon:
                          Icon(Icons.remove_circle_outline, color: Colors.red),
                      onPressed: () => removeSearchItem(index),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Delivery to',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Lahore, Pakistan'),
                IconButton(
                  icon: const Icon(Icons.arrow_drop_down),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Order Summary',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _OrderItem(
              title: 'Samsung Smart Led 55 inch 4K',
              variant: 'Variant: black',
              price: 799.99,
              quantity: 1,
            ),
            _OrderItem(
              title: 'Headphones',
              variant: 'Variant: Black',
              price: 99.99,
              quantity: 1,
            ),
            _OrderItem(
              title: 'Samsung S24 Ultra',
              variant: 'Variant: Combo',
              price: 599.99,
              quantity: 2,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Total price (3 items)'),
                Text('\$1499.97'),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Totals'),
                Text('\$1499.97'),
              ],
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentPage(),
                      ));
                  // Handle payment method selection
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color
                  foregroundColor: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Select Payment Method'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OrderItem extends StatelessWidget {
  final String title;
  final String variant;
  final double price;
  final int quantity;

  const _OrderItem({
    required this.title,
    required this.variant,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Text('\$${price.toStringAsFixed(2)}'),
          ],
        ),
        Text(variant),
        const SizedBox(height: 8),
      ],
    );
  }
}

class PaymentPage extends StatelessWidget {
  void _showDeliveryOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return DeliveryOptions();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkouts"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery to", style: TextStyle(fontSize: 16)),
                Text("Salatiga City, Central Java",
                    style: TextStyle(fontSize: 16)),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  CheckoutItem(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxE3pWEreVBLLlx0GAduL0poncmp4znrcijg&s',
                    title: 'Samsung Smart Led 55 inch 4K',
                    variant: 'Black',
                    price: '799.99',
                  ),
                  CheckoutItem(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRqq60oF699MMzPdlF0sf4r9JnVWWj0GpHTw&s',
                    title: 'Headphones',
                    variant: 'Black',
                    price: '99.99',
                  ),
                  CheckoutItem(
                    imageUrl:
                        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxATEBETEhASDxUVFRIXEBAQDxUXFRYXFRUWFxUXFRUYHSggGBsnGxYVITEhJSorLi4uGB8zODMsNygtLisBCgoKDg0OGhAQGC0eHR0rKy0tKy0rLS0rKy0tLS0tLS0tLS0rLSstLSstLS0tLS0tLSstLTctLS0tOC0rODctL//AABEIALcBEwMBIgACEQEDEQH/xAAcAAEAAgIDAQAAAAAAAAAAAAAABgcEBQIDCAH/xABQEAABAwICBAkHBwYMBwEAAAABAAIDBBESIQUGMUEHEyIyUWFxc7IkcoGRobHBFCM0QnSz0jM1YoKEkiVEUmNkk5SitMLR4RUXQ1ODxPBU/8QAGQEBAQEBAQEAAAAAAAAAAAAAAAIBAwQF/8QAIBEBAQACAgIDAQEAAAAAAAAAAAECEQMxEjIEIUGBIv/aAAwDAQACEQMRAD8AvFERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQfCV9Wk1hkti7iYj0YVGdN6Yp6SETTu4plwMYvcuIyADcycjkL7CdgJWbbpYKKvNC6fjqYuNpqqR7LkG0j7tI2hzX7D2jeFnnSlU3ZO49To4z7mg+1PI0mZPoRpB2G/YqmrNbKmeogglERY2YOBYxwcSGPABu4gjPo3BaV1ZhjL8RYGNJe8G2EA2uT6k2aXoioHRmt8kl+IrZjh2t42TLo5L9y2seuekm7Kpzh0PiiPtw39q1i6V8BVJf8zdIOmZA9tO9krmMc7inh4D3AEgh9r2PQt1rPVTfLXRxF9y2LCxjiMyDsAW4zd0LURULDrlJxjootIFz23uxj3nm87C4twvt+iTsJFxms+PXjSLdlRi86Nh94VeFvQutfLqk63hX0hEL4KeTz43DwuCs3QhbIxpe1rrxMdmL7XydPYuXJfDtsm0gRQbSGuuiYav5JJOYZbgHC6RrGk7A57DZvp2b7KTGmcObNM39cO8Ycud5pO43xbNFqX8e0G0+LvImnwYVWuvWnal74Gl4jtMWkwF7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',
                    title: 'Samsung S24 Ultra',
                    variant: 'Combo',
                    price: '599.99',
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => _showDeliveryOptions(context),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 12),
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green.shade200,
                ),
                child: Text(
                  "Select the delivery",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckoutItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String variant;
  final String price;

  CheckoutItem({
    required this.imageUrl,
    required this.title,
    required this.variant,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.network(imageUrl, width: 60, height: 60),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text("Variant: $variant"),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("\$$price",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text("1 quantity"),
            ],
          ),
        ],
      ),
    );
  }
}

class DeliveryOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Select the delivery",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          SizedBox(height: 16),
          DeliveryOptionItem(
            type: "Express",
            description: "1 - 3 days delivery",
            price: "14.99",
          ),
          DeliveryOptionItem(
            type: "Regular",
            description: "2 - 4 days delivery",
            price: "7.99",
          ),
          DeliveryOptionItem(
            type: "Cargo",
            description: "7 - 14 days delivery",
            price: "2.99",
          ),
        ],
      ),
    );
  }
}

class DeliveryOptionItem extends StatelessWidget {
  final String type;
  final String description;
  final String price;

  DeliveryOptionItem({
    required this.type,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: ListTile(
          title: Text(type, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(description),
          trailing:
              Text("\$$price", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
