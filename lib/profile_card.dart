import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String nama;
  final String nim;
  final String hobi;
  final int skorAktivitas;

  const ProfileCard({
    super.key,
    required this.nama,
    required this.nim,
    required this.hobi,
    required this.skorAktivitas,
  });

  @override
  Widget build(BuildContext context) {
    // Nilai hasil kalkulasi NIM: 20240801044
    const double cardWidth = 340.0;
    const double cardBorderRadius = 18.0;
    const double logoSize = 68.0;
    const double spacingWidth = 19.0;

    return Container(
      width: cardWidth,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(cardBorderRadius),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Kartu
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(cardBorderRadius),
                ),
                child: const FlutterLogo(size: logoSize),
              ),
              const SizedBox(width: spacingWidth),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kartu Praktikan',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      nama,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          const Divider(thickness: 1.5),
          const SizedBox(height: 12.0),
          // Detail Identitas
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'NIM: $nim',
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Hobi: $hobi',
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Skor Aktivitas: $skorAktivitas',
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}