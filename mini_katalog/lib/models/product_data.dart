import 'product.dart';

class ProductData {
  static List<Product> sampleProducts = [
    Product(
      id: 1,
      name: 'Fender Player Stratocaster',
      description: 'The inspiring sound of a Stratocaster is one of the foundations of Fender. Featuring classic bell-like high ends, punchy mids, and robust low ends, packed with authentic feel and style.',
      price: 849.00,
      imageUrl: 'https://wantapi.com/assets/banner.png',
      specifications: [
        'Maple Fingerboard',
        '3 Single-Coil Pickups',
        'Alnico V',
      ],
    ),
    Product(
      id: 2,
      name: 'Yamaha P-125 Digital Piano',
      description: 'Compact digital piano with 88 weighted keys, pure CF sound engine, and built-in stereo speakers, delivering authentic acoustic piano touch and tone for performers.',
      price: 699.00,
      imageUrl: 'https://wantapi.com/assets/banner.png',
      specifications: ['88 Weighted Keys', 'GHS Action', 'Pure CF Sound'],
    ),
    Product(
      id: 3,
      name: 'Shure SM7B Vocal Microphone',
      description: 'Dynamic studio microphone delivering warm and smooth audio reproduction in close-range professional recording, podcasting, and broadcast applications.',
      price: 399.00,
      imageUrl: 'https://wantapi.com/assets/banner.png',
      specifications: ['Cardioid Pattern', 'Shielded', 'Bass Roll-off'],
    ),
    Product(
      id: 4,
      name: 'Audio-Technica AT-LP60X',
      description: 'Fully automatic belt-drive stereo turntable supporting 33-1/3 and 45 RPM records, featuring a redesigned tonearm base and headshell for improved tracking resonance.',
      price: 149.00,
      imageUrl: 'https://wantapi.com/assets/banner.png',
      specifications: ['Belt-Drive', '33/45 RPM', 'Built-in Pre-amp'],
    ),
  ];
}
