class Product {
  final String name;
  final double price;
  final String imageUrl;

  const Product(
      {required this.name, required this.price, required this.imageUrl});

  static const List<Product> products = [
    Product(
        name: 'Apple',
        price: 200,
        imageUrl:
            'https://t3.ftcdn.net/jpg/01/76/97/96/360_F_176979696_hqfioFYq7pX13dmiu9ENrpsHZy1yM3Dt.jpg'),
    Product(
        name: 'Orange',
        price: 500,
        imageUrl:
            'https://media.istockphoto.com/photos/orange-picture-id185284489?k=20&m=185284489&s=612x612&w=0&h=LLY2os0YTG2uAzpBKpQZOAC4DGiXBt1jJrltErTJTKI='),
    Product(
        name: 'Banana',
        price: 100,
        imageUrl:
            'https://media.istockphoto.com/photos/banana-picture-id636739634?b=1&k=20&m=636739634&s=170667a&w=0&h=_HASEjG8LXbR4zu_eDH4dtS9WC80C9liLVFnKizTqtM='),
    Product(
        name: 'Stawberry',
        price: 600,
        imageUrl:
            'https://media.istockphoto.com/photos/strawberry-isolated-on-white-picture-id1071084902?k=20&m=1071084902&s=612x612&w=0&h=ZQ3TCcmmNadSoc9MgQD_a_Kuch26qsa3qyspRTBw_0U='),
  ];
}
