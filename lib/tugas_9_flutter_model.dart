import 'package:flutter/material.dart';

import 'models/tugas_9_minuman_model.dart'; // panggil model class

class Tugas9FlutterModel extends StatefulWidget {
  const Tugas9FlutterModel({super.key});

  @override
  State<Tugas9FlutterModel> createState() => _Tugas9FlutterModelState();
}

class _Tugas9FlutterModelState extends State<Tugas9FlutterModel> {
  final List<MinumanModel> listMinuman = [
    MinumanModel(
      nama: "Aqua 600ml",
      icon: Icons.water_drop,
      harga: "Rp 4.000",
      deskripsi: "Air mineral pegunungan alami",
    ),
    MinumanModel(
      nama: "Le Minerale",
      icon: Icons.water_drop_outlined,
      harga: "Rp 3.500",
      deskripsi: "Air mineral dengan manis alami",
    ),
    MinumanModel(
      nama: "Adesa",
      icon: Icons.opacity,
      harga: "Rp 3.000",
      deskripsi: "Air minum murni mendinginkan",
    ),
    MinumanModel(
      nama: "Pocari Sweat",
      icon: Icons.sports_baseball,
      harga: "Rp 7.000",
      deskripsi: "Minuman pengganti ion tubuh",
    ),
    MinumanModel(
      nama: "Mizone Cherry",
      icon: Icons.sports_gymnastics,
      harga: "Rp 5.500",
      deskripsi: "Minuman isotonik rasa buah",
    ),

    MinumanModel(
      nama: "Teh Botol Sosro",
      icon: Icons.emoji_food_beverage,
      harga: "Rp 4.500",
      deskripsi: "Teh asli melati legendaris",
    ),
    MinumanModel(
      nama: "Teh Pucuk Harum",
      icon: Icons.forest,
      harga: "Rp 4.000",
      deskripsi: "Dibuat dari pucuk daun teh pilihan",
    ),
    MinumanModel(
      nama: "Nu Green Tea",
      icon: Icons.eco,
      harga: "Rp 6.000",
      deskripsi: "Teh hijau madu menyegarkan",
    ),
    MinumanModel(
      nama: "Frestea Apple",
      icon: Icons.apple,
      harga: "Rp 5.000",
      deskripsi: "Perpaduan teh dan kesegaran apel",
    ),
    MinumanModel(
      nama: "Teh Kotak Ultra",
      icon: Icons.inventory_2,
      harga: "Rp 4.000",
      deskripsi: "Teh melati dalam kemasan kotak",
    ),

    MinumanModel(
      nama: "Coca-Cola",
      icon: Icons.local_bar,
      harga: "Rp 6.500",
      deskripsi: "Minuman berkarbonasi rasa kola cola",
    ),
    MinumanModel(
      nama: "Fanta Strawberry",
      icon: Icons.local_bar_sharp,
      harga: "Rp 6.500",
      deskripsi: "Minuman bersoda rasa stroberi manis",
    ),
    MinumanModel(
      nama: "Sprite Lemon",
      icon: Icons.liquor,
      harga: "Rp 6.500",
      deskripsi: "Nyatanya menyegarkan dengan lemon lime",
    ),
    MinumanModel(
      nama: "Big Cola",
      icon: Icons.wine_bar,
      harga: "Rp 5.000",
      deskripsi: "Minuman kola ukuran ekonomis besar",
    ),
    MinumanModel(
      nama: "Badak Sarsaparilla",
      icon: Icons.star,
      harga: "Rp 10.000",
      deskripsi: "Soda legendaris khas Sumatra Utara",
    ),

    MinumanModel(
      nama: "Kopi Kenangan",
      icon: Icons.coffee,
      harga: "Rp 18.000",
      deskripsi: "Kopi susu gula aren botolan",
    ),
    MinumanModel(
      nama: "Kopi Tuku",
      icon: Icons.coffee_maker,
      harga: "Rp 20.000",
      deskripsi: "Kopi lokal dengan racikan susu krim",
    ),
    MinumanModel(
      nama: "Good Day Avocado",
      icon: Icons.bakery_dining,
      harga: "Rp 6.000",
      deskripsi: "Kopi instan botol rasa alpukat",
    ),
    MinumanModel(
      nama: "Kopiko Lucky Day",
      icon: Icons.bolt,
      harga: "Rp 7.500",
      deskripsi: "Kopi susu ala Thailand berenergi tinggi",
    ),
    MinumanModel(
      nama: "Golda Coffee",
      icon: Icons.coffee_outlined,
      harga: "Rp 3.500",
      deskripsi: "Kopi latte nikmat harga bersahabat",
    ),

    MinumanModel(
      nama: "Ultra Milk Cokelat",
      icon: Icons.breakfast_dining,
      harga: "Rp 6.500",
      deskripsi: "Susu sapi segar UHT rasa cokelat",
    ),
    MinumanModel(
      nama: "Bear Brand",
      icon: Icons.cruelty_free,
      harga: "Rp 11.000",
      deskripsi: "Susu murni steril kualitas premium",
    ),
    MinumanModel(
      nama: "Cimory Yogurt",
      icon: Icons.icecream,
      harga: "Rp 9.000",
      deskripsi: "Yogurt siap minum rasa blueberry",
    ),
    MinumanModel(
      nama: "Indomilk Vanilla",
      icon: Icons.cookie,
      harga: "Rp 6.000",
      deskripsi: "Susu UHT gurih rasa vanila",
    ),
    MinumanModel(
      nama: "Milo Kotak",
      icon: Icons.fitness_center,
      harga: "Rp 5.500",
      deskripsi: "Minuman cokelat berenergi kaya malt",
    ),

    MinumanModel(
      nama: "Buavita Mango",
      icon: Icons.blender,
      harga: "Rp 8.500",
      deskripsi: "Jus mangga asli kaya vitamin C",
    ),
    MinumanModel(
      nama: "Country Choice",
      icon: Icons.dinner_dining,
      harga: "Rp 7.500",
      deskripsi: "Sari buah jambu merah kental",
    ),
    MinumanModel(
      nama: "ABC Kacang Hijau",
      icon: Icons.grass,
      harga: "Rp 4.500",
      deskripsi: "Sari kacang hijau sumber serat alami",
    ),
    MinumanModel(
      nama: "Hydro Coco",
      icon: Icons.sunny,
      harga: "Rp 8.000",
      deskripsi: "Air kelapa asli dalam kemasan praktis",
    ),
    MinumanModel(
      nama: "Sari Asem Asli",
      icon: Icons.wb_twilight,
      harga: "Rp 6.000",
      deskripsi: "Minuman tradisional asam jawa segar",
    ),

    MinumanModel(
      nama: "Kratingdaeng",
      icon: Icons.bolt_outlined,
      harga: "Rp 6.000",
      deskripsi: "Minuman energi stamina aktif",
    ),
    MinumanModel(
      nama: "Extra Joss Gel",
      icon: Icons.flash_on,
      harga: "Rp 2.500",
      deskripsi: "Suplemen energi cair sachet",
    ),
    MinumanModel(
      nama: "Tolak Angin Cair",
      icon: Icons.health_and_safety,
      harga: "Rp 4.000",
      deskripsi: "Herbal alami pereda masuk angin",
    ),
    MinumanModel(
      nama: "Larutan Cap Badak",
      icon: Icons.medication,
      harga: "Rp 5.000",
      deskripsi: "Air pereda panas dalam tanpa rasa",
    ),
    MinumanModel(
      nama: "You C1000 Orange",
      icon: Icons.wb_sunny,
      harga: "Rp 8.500",
      deskripsi: "Minuman kesehatan vitamin C tinggi",
    ),

    MinumanModel(
      nama: "Chatime Milk Tea",
      icon: Icons.bubble_chart,
      harga: "Rp 25.000",
      deskripsi: "Teh susu khas Taiwan dengan topping boba",
    ),
    MinumanModel(
      nama: "Mixue Ice Cream",
      icon: Icons.icecream_sharp,
      harga: "Rp 8.000",
      deskripsi: "Es krim cone vanila manis lembut",
    ),
    MinumanModel(
      nama: "Xing Fu Tang",
      icon: Icons.brightness_low,
      harga: "Rp 35.000",
      deskripsi: "Brown sugar boba susu buatan tangan",
    ),
    MinumanModel(
      nama: "Menantea",
      icon: Icons.rice_bowl,
      harga: "Rp 22.000",
      deskripsi: "Toko teh buah modern ala influencer",
    ),
    MinumanModel(
      nama: "Haus! Thai Tea",
      icon: Icons.local_drink,
      harga: "Rp 12.000",
      deskripsi: "Teh susu Thailand ekonomis menyegarkan",
    ),

    MinumanModel(
      nama: "Starbucks Latte",
      icon: Icons.storefront,
      harga: "Rp 55.000",
      deskripsi: "Kopi espresso premium standar global",
    ),
    MinumanModel(
      nama: "Caffino Hazelnut",
      icon: Icons.coffee_maker_sharp,
      harga: "Rp 3.500",
      deskripsi: "Kopi 3-in-1 dengan busa latte tebal",
    ),
    MinumanModel(
      nama: "Ichitan Thai Milk",
      icon: Icons.local_cafe,
      harga: "Rp 9.000",
      deskripsi: "Teh susu Thailand autentik kemasan botol",
    ),
    MinumanModel(
      nama: "Nutrisari Jeruk",
      icon: Icons.kitchen,
      harga: "Rp 2.000",
      deskripsi: "Minuman serbuk rasa jeruk peras instan",
    ),
    MinumanModel(
      nama: "Adem Sari Chingku",
      icon: Icons.waves,
      harga: "Rp 5.500",
      deskripsi: "Sensasi soda herbal penyejuk tenggorokan",
    ),
    MinumanModel(
      nama: "Yakult",
      icon: Icons.science,
      harga: "Rp 2.500",
      deskripsi: "Susu fermentasi baik untuk kesehatan usus",
    ),
    MinumanModel(
      nama: "Oronamin C",
      icon: Icons.medical_services,
      harga: "Rp 7.000",
      deskripsi: "Minuman vitamin plus madu dari Jepang",
    ),
    MinumanModel(
      nama: "Green Sands",
      icon: Icons.celebration,
      harga: "Rp 8.000",
      deskripsi: "Minuman menyegarkan bebas alkohol kharisma",
    ),
    MinumanModel(
      nama: "Kino Larutan",
      icon: Icons.healing,
      harga: "Rp 4.500",
      deskripsi: "Larutan penyegar kulit kaki tiga",
    ),
    MinumanModel(
      nama: "Susu Kurma Tujuh",
      icon: Icons.spa,
      harga: "Rp 7.500",
      deskripsi: "Susu steril dengan khasiat buah kurma asli",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: listMinuman.length,
        itemBuilder: (context, index) {
          final MinumanModel minuman = listMinuman[index];

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6),
            elevation: 2,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber.shade100,
                child: Icon(minuman.icon, color: Colors.amber.shade800),
              ),
              title: Text(
                minuman.nama,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(minuman.deskripsi),
              trailing: Text(
                minuman.harga,
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
