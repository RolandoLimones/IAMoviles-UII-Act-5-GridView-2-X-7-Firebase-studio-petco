import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petco Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PetcoGridPage(),
    );
  }
}

class PetcoGridPage extends StatelessWidget {
  const PetcoGridPage({super.key});

  // Lista de productos con sus imágenes, títulos y subtítulos
  final List<Product> products = const [
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/collar.jpeg',
      title: 'Collar Elegante',
      subtitle: 'Collar ajustable para perros',
      rating: 4.5,
    ),
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/croquetas.jpg',
      title: 'Croquetas Premium',
      subtitle: 'Alimento balanceado para perros adultos',
      rating: 5.0,
    ),
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/green-iguana.jpg',
      title: 'Iguana Verde',
      subtitle: 'Reptil exótico para terrario',
      rating: 4.0,
    ),
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/huron.png',
      title: 'Hurón Doméstico',
      subtitle: 'Mascota juguetona y cariñosa',
      rating: 4.8,
    ),
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/piton.png',
      title: 'Pitón Real',
      subtitle: 'Serpiente dócil para expertos',
      rating: 4.2,
    ),
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/shampoo.png',
      title: 'Shampoo Hipoalergénico',
      subtitle: 'Cuidado suave para piel sensible',
      rating: 4.7,
    ),
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/vitaminas.png',
      title: 'Vitaminas Forte',
      subtitle: 'Suplemento nutricional completo',
      rating: 4.6,
    ),
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/tarantula.png',
      title: 'Tarántula Rosa',
      subtitle: 'Exótica mascota para aficionados',
      rating: 4.3,
    ),
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/sueter.jpg',
      title: 'Suéter Térmico',
      subtitle: 'Abrigo acolchado para perros',
      rating: 4.9,
    ),
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/snacks.jpg',
      title: 'Snacks Naturales',
      subtitle: 'Premios saludables sin conservantes',
      rating: 4.8,
    ),
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/despara.png',
      title: 'Desparasitante',
      subtitle: 'Protección interna y externa',
      rating: 4.7,
    ),
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/humedo.jpeg',
      title: 'Alimento Húmedo',
      subtitle: 'Sobre de pollo en salsa',
      rating: 4.6,
    ),
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/cachoro.jpg',
      title: 'Comida para Cachorro',
      subtitle: 'Nutrición especial para crecimiento',
      rating: 5.0,
    ),
    Product(
      imageUrl: 'https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/arana.jpg',
      title: 'Disfraz Araña',
      subtitle: 'Traje divertido para Halloween',
      rating: 4.4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Petco Shop',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFF8B4B4),
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFFF8B4B4),
                const Color(0xFFB4D4F8),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFFFEF5F5),
              const Color(0xFFF0F8FF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: GridView.builder(
          padding: const EdgeInsets.all(12),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.65, // Reducido para hacer las imágenes más grandes
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return _buildProductCard(products[index]);
          },
        ),
      ),
    );
  }

  Widget _buildProductCard(Product product) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Imagen del producto - OCUPA LA MAYOR PARTE DE LA TARJETA
          Expanded(
            flex: 85, // 85% del espacio para la imagen
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.network(
                product.imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    color: Colors.grey[200],
                    child: const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFF8B4B4)),
                      ),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[200],
                    child: const Icon(
                      Icons.broken_image,
                      size: 50,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),
          ),
          // Contenido inferior - OCUPA ESPACIO REDUCIDO
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Título
                Text(
                  product.title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8B5A5A),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                // Subtítulo
                Text(
                  product.subtitle,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey[600],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                // Estrellas de calificación
                RatingBar.builder(
                  initialRating: product.rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 14,
                  ignoreGestures: true,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Color(0xFFFFB74D),
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String imageUrl;
  final String title;
  final String subtitle;
  final double rating;

  const Product({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.rating,
  });
}