import 'package:flutter/material.dart';
import '../models/product.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // Lista de ejemplo (Mock Data)
  final List<Product> mockProducts = [
    Product(
      id: '1',
      name: 'Café Juan Valdez',
      priceAmazon: 12.50,
      priceEbay: 14.00,
      urgencyScore: 5,
      isChecked: false,
    ),
    Product(
      id: '2',
      name: 'Laptop Stand',
      priceAmazon: 25.99,
      priceEbay: 22.50,
      urgencyScore: 2,
      isChecked: false,
    ),
    Product(
      id: '3',
      name: 'Mouse Inalámbrico',
      priceAmazon: 15.00,
      priceEbay: 18.20,
      urgencyScore: 3,
      isChecked: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SmartList MVP'),
      ),
      body: ListView.builder(
        itemCount: mockProducts.length,
        itemBuilder: (context, index) {
          final product = mockProducts[index];
          return ListTile(
            leading: Checkbox(
              value: product.isChecked,
              onChanged: (value) {
                // Lógica de cambio de estado próximamente
              },
            ),
            title: Text(
              product.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Amazon: \$${product.priceAmazon} | eBay: \$${product.priceEbay}'),
                Text(
                  'Urgencia: ${"🔥" * product.urgencyScore}',
                  style: const TextStyle(color: Colors.redAccent, fontSize: 12),
                ),
              ],
            ),
            trailing: Icon(
              product.priceAmazon < product.priceEbay
                  ? Icons.trending_down
                  : Icons.trending_up,
              color: product.priceAmazon < product.priceEbay ? Colors.green : Colors.orange,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddProductForm(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddProductForm(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Para que el teclado no tape el formulario
    builder: (context) => Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom, // Ajuste por teclado
        top: 20, left: 20, right: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Nuevo Producto', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const TextField(decoration: InputDecoration(labelText: 'Nombre del producto')),
          const TextField(
            decoration: InputDecoration(labelText: 'Puntaje de Urgencia (1-5)'),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Guardar en SmartList'),
          ),
          const SizedBox(height: 20),
        ],
      ),
    ),
  );
}

}