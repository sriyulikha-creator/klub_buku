import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klub Buku',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: const Color(0xFFFAF7FF),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Klub Buku',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications_outlined),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // BAGIAN 1: FOTO PROFIL DAN SAPAAN
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Row(
                  children: [

                    // Foto profil
                    const CircleAvatar(
                      radius: 32,
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1657092358800-5fb01872c3f0?q=80&w=327&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
                      ),
                    ),

                    const SizedBox(width: 15),

                    // Sapaan anggota
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Assalamu’alaikum,',
                          style: TextStyle(fontSize: 15),
                        ),

                        Text(
                          'Aisyah',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),

                        Text(
                          'Selamat datang kembali!',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // BAGIAN 2: BANNER
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://images.unsplash.com/photo-1495446815901-a7297e633e8d?w=900',
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 160,
                      color: Colors.deepPurple.shade100,
                      child: const Center(
                        child: Icon(
                          Icons.menu_book,
                          size: 60,
                          color: Colors.deepPurple,
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 25),

              // BAGIAN 3: MENU UTAMA
              const Text(
                'Menu Utama',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),

              const SizedBox(height: 15),

              Row(
                children: [

                  // Menu Buku
                  Expanded(
                    child: menuItem(
                      Icons.menu_book,
                      'Buku',
                    ),
                  ),

                  const SizedBox(width: 10),

                  // Menu Acara
                  Expanded(
                    child: menuItem(
                      Icons.event,
                      'Acara',
                    ),
                  ),

                  const SizedBox(width: 10),

                  // Menu Anggota
                  Expanded(
                    child: menuItem(
                      Icons.people,
                      'Anggota',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // BAGIAN 4: PENGUMUMAN
              const Text(
                'Pengumuman',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),

              const SizedBox(height: 15),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.deepPurple.shade100,
                  ),
                ),

                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Icon(
                      Icons.campaign,
                      color: Colors.deepPurple,
                      size: 30,
                    ),

                    SizedBox(width: 12),

                    Expanded(
                      child: Text(
                        'Diskusi buku pekan ini dilaksanakan '
                        'pada hari Sabtu pukul 09.00 WIB.',
                        style: TextStyle(
                          fontSize: 15,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // DEKORASI TAMBAHAN
              Center(
                child: Text(
                  'Happy Reading! 💜',
                  style: TextStyle(
                    color: Colors.deepPurple.shade400,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // WIDGET UNTUK MENU
  Widget menuItem(IconData icon, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 5,
      ),

      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),

          const SizedBox(height: 8),

          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}