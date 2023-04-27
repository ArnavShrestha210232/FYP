class PopularBrands {
  const PopularBrands({
    required this.image,
    required this.name,
    required this.minutes,
  });

  final String image;
  final String name;
  final String minutes;

  static List<PopularBrands> getPopularBrands() {
    return const [
      PopularBrands(
          image: 'assets/images/Pizza.jpg', name: 'Pizza', minutes: ''),
      PopularBrands(image: 'assets/images/MOMO.jpg', name: 'MOMO', minutes: ''),
      PopularBrands(
          image: 'assets/images/Biryani.jpg', name: 'Biryani', minutes: ''),
      PopularBrands(
          image: 'assets/images/Salad.jpg', name: 'Salad', minutes: ''),
      PopularBrands(
          image: 'assets/images/Chowmin.jpg', name: 'Chowmin', minutes: ''),
      PopularBrands(
          image: 'assets/images/Thupa.jpg', name: 'Thupa', minutes: ''),
      PopularBrands(image: 'assets/images/food6.jpg', name: 'KFC', minutes: ''),
      PopularBrands(
          image: 'assets/images/Yomari.jpg', name: 'Yomari', minutes: ''),
      PopularBrands(
          image: 'assets/images/Fried Rice.jpg',
          name: 'Fried Rice',
          minutes: ''),
      PopularBrands(
          image: 'assets/images/Deserts.jpg', name: 'Deserts', minutes: ''),
    ];
  }
}
