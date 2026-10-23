import 'package:flutter/material.dart';

final List<Map<String, dynamic>> categories = [
  {
    'name': 'Semua',
    'icon': Icons.restaurant_menu,
  },
  {
    'name': 'Makanan',
    'icon': Icons.ramen_dining,
  },
  {
    'name': 'Minuman',
    'icon': Icons.local_drink,
  },
  {
    'name': 'Snack',
    'icon': Icons.fastfood,
  },
  {
    'name': 'Promo',
    'icon': Icons.local_offer,
  },
];

final List<Map<String, dynamic>> products = [
  {
    'name': 'Nasi Goreng',
    'category': 'Makanan',
    'price': 15000,
    'rating': 4.8,
    'available': true,
    'image':
        'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=800',
  },
  {
    'name': 'Ayam Geprek',
    'category': 'Makanan',
    'price': 18000,
    'rating': 4.9,
    'available': true,
    'image':
        'https://images.unsplash.com/photo-1601050690597-df0568f70950?w=800',
  },
  {
    'name': 'Mie Ayam',
    'category': 'Makanan',
    'price': 12000,
    'rating': 4.7,
    'available': true,
    'image':
        'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=800',
  },
  {
    'name': 'Es Teh Manis',
    'category': 'Minuman',
    'price': 5000,
    'rating': 4.6,
    'available': true,
    'image':
        'https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=800',
  },
  {
    'name': 'Kopi Susu',
    'category': 'Minuman',
    'price': 10000,
    'rating': 4.8,
    'available': true,
    'image':
        'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=800',
  },
  {
    'name': 'Roti Bakar',
    'category': 'Snack',
    'price': 10000,
    'rating': 4.5,
    'available': false,
    'image':
        'https://images.unsplash.com/photo-1521305916504-4a1121188589?w=800',
  },
];

// Dynamic List untuk berita
final List<Map<String, dynamic>> news = [
  {
    'title': 'Promo Makan Hemat untuk Mahasiswa',
    'category': 'Promo',
    'date': '7 Oktober 2026',
    'image':
        'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=800',
  },
  {
    'title': 'KantinKampus Tambah Menu Baru',
    'category': 'Informasi',
    'date': '6 Oktober 2026',
    'image':
        'https://images.unsplash.com/photo-1498837167922-ddd27525d352?w=800',
  },
  {
    'title': 'Tips Memilih Makanan Sebelum Kuliah',
    'category': 'Tips',
    'date': '5 Oktober 2026',
    'image':
        'https://images.unsplash.com/photo-1547592180-85f173990554?w=800',
  },
];

class KantinApp extends StatefulWidget {
  const KantinApp({super.key});

  @override
  State<KantinApp> createState() => _KantinAppState();
}

class _KantinAppState extends State<KantinApp> {
  String selectedCategory = 'Semua';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [
          //banner
          _banner(),
          const SizedBox(height: 20),
          _informasi(),
          const SizedBox(height: 24),
          _sectionHeader('Kategori'),
          const SizedBox(height: 14),
          _kategori(),
          const SizedBox(height: 24),
          _sectionHeader('Menu Favorit'),
          const SizedBox(height: 14),
          _menuFavorit(),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  // ================= HEADER SECTION =================
  Widget _sectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'Lihat Semua',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

    // ================= KATEGORI =================
  Widget _kategori() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: List.generate(categories.length, (index) {
          final item = categories[index];
          final bool isSelected = selectedCategory == item['name'];

          return Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: index == categories.length - 1 ? 0 : 8,
              ),
              child: GestureDetector(
                onTap: () => setState(() => selectedCategory = item['name']),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: 88,
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.orange : Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: isSelected ? Colors.orange : Colors.grey.shade200,
                    ),
                    boxShadow: isSelected
                        ? [
                            BoxShadow(
                              color: Colors.orange.withOpacity(0.3),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ]
                        : [],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        item['icon'],
                        size: 28,
                        color: isSelected ? Colors.white : Colors.orange,
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            item['name'],
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: isSelected ? Colors.white : Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
  // ================= MENU FAVORIT =================
  Widget _menuFavorit() {
    final filtered = selectedCategory == 'Semua'
        ? products
        : products.where((p) => p['category'] == selectedCategory).toList();

    if (filtered.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(16),
        child: Center(child: Text('Belum ada menu di kategori ini')),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), // scroll ikut ListView utama
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
        mainAxisExtent: 245, // tinggi tiap kartu
      ),
      itemCount: filtered.length,
      itemBuilder: (context, index) => _productCard(filtered[index]),
    );
  }

  Widget _productCard(Map<String, dynamic> item) {
    final bool available = item['available'] == true;

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ---- Gambar + badge ----
          SizedBox(
            height: 125,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  item['image'],
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      Container(color: Colors.grey.shade300),
                ),
                // rating
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star, size: 14, color: Colors.amber),
                        const SizedBox(width: 3),
                        Text(
                          '${item['rating']}',
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // tersedia / habis
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: available ? Colors.green : Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      available ? 'Tersedia' : 'Habis',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ---- Info ----
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['name'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  item['category'],
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
          const Spacer(),

          // ---- Harga + tombol tambah ----
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rp${item['price']}',
                  style: const TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                InkWell(
                  onTap: available ? () {} : null,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: available ? Colors.orange : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ================= INFORMASI =================
  Padding _informasi() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        spacing: 10,
        children: [
          Expanded(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Colors.orange.withAlpha(170),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.delivery_dining_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Gratis Ongkir",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Min. pembelian Rp 30.000",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Colors.orange.withAlpha(170),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.access_time_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Buka hari ini",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "08.00 - 17.00",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // ================= BANNER =================
  Container _banner() {
    return Container(
      height: 210,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
                    Image.network(
            "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=1200",
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(color: Colors.orange.shade200);
            },
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.black.withOpacity(0.75),
                  Colors.black.withOpacity(0.1),
                ],
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Promo hari ini",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 20,
            top: 65,
            child: Text(
              "Diskon hingga \n30%",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                height: 1.1,
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.orange,
              ),
              onPressed: () {},
              child: const Text("Lihat promo"),
            ),
          ),
        ],
      ),
    );
  }

  // ================= APP BAR =================
  AppBar _appBar() {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Kantin Kampus",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text(
            "Makan Enak, Harga Bersahabat",
            style: TextStyle(fontSize: 11, color: Colors.grey),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
        ),
      ],
    );
  }
}