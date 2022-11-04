class Category {
  final String category;
  final String imageGategory;

  Category({
    required this.category,
    required this.imageGategory,
  });
}

List<Category> listCategory = [
  Category(category: 'Tua Renta', imageGategory: 'assets/images/special.png'),
  Category(category: 'Nutrisi', imageGategory: 'assets/images/nutritions.png'),
  Category(category: 'Hati', imageGategory: 'assets/images/heart.png'),
  Category(category: 'Medicine', imageGategory: 'assets/images/medicine.png'),
  Category(category: 'Mata', imageGategory: 'assets/images/mata.png'),
  Category(category: 'Body Fat', imageGategory: 'assets/images/berat.png'),
];

class TopDoctor {
  final String name;
  final String specialist;
  final String imageDoctor;

  TopDoctor({
    required this.name,
    required this.specialist,
    required this.imageDoctor,
  });
}

List<TopDoctor> ourTopDoctor = [
  TopDoctor(
      name: 'Alessya Camella',
      specialist: 'Eye Specialist',
      imageDoctor: 'assets/images/doc1.png'),
  TopDoctor(
      name: 'Jamal Luddin',
      specialist: 'Smile Specialist',
      imageDoctor: 'assets/images/doc2.png'),
  TopDoctor(
      name: 'Donna Marie',
      specialist: 'Healty Specialist',
      imageDoctor: 'assets/images/doc3.jpg'),
];
