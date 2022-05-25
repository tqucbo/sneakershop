class WelcomeScreenData {
  final String title, subtitle, image;

  WelcomeScreenData({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<WelcomeScreenData> welcomeScreenData = [
  WelcomeScreenData(
    title: 'Choose product',
    subtitle:
        'A product is the item offered for sale. A product can be a service or an item. It can be physical or in virtual or cyber form.',
    image: 'assets/images/welcome1.png',
  ),
  WelcomeScreenData(
    title: 'Make payment',
    subtitle:
        'Payment is the transfer of money services in exchange product or Payments typically made terms agreed.',
    image: 'assets/images/welcome2.png',
  ),
  WelcomeScreenData(
    title: 'Get your order',
    subtitle:
        'Business or commerce an order is a stated intention either spoken to engage in a commercial transaction specific products.',
    image: 'assets/images/welcome3.png',
  ),
];
