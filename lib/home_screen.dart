import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<String> CategoriasImg = [
    'assets/images/hamburger.png',
    'assets/images/shoppingBasket.png',
    'assets/images/cupoms.png',
    'assets/images/frango.png',
    'assets/images/desconto.png',
    'assets/images/coins.png',
    'assets/images/cerveja.png',
    'assets/images/kitMed.png',
  ];

  final List<String> CategoriasName = [
    'Restaurantes',
    'Mercado',
    'Promoções',
    'Marmitas',
    'Cupons',
    'Club IComida',
    'Bebidas',
    'Farmacia',
  ];

  final List<String> banners = [
    'assets/images/banner1_frete_gratis.svg',
    'assets/images/banner2_pizza.svg',
    'assets/images/banner3_fit.svg',
    'assets/images/banner4_cafe.svg',
    'assets/images/banner5_clube.svg',
  ];

  final List<String> cards = [
    'assets/images/card1_hamburguer.svg',
    'assets/images/card2_marmita.svg',
    'assets/images/card3_japonesa.svg',
    'assets/images/card4_frango.svg',
    'assets/images/card5_temaki.svg',
    'assets/images/card6_marmita_fit.svg',
    'assets/images/card7_hotdog.svg',
    'assets/images/card8_uramaki.svg',
  ];

  final List<IconData> icons = [
    FontAwesomeIcons.burger,
    FontAwesomeIcons.pizzaSlice,
    FontAwesomeIcons.fish,
    FontAwesomeIcons.bowlFood,
    FontAwesomeIcons.drumstickBite,
    FontAwesomeIcons.mugHot,
    FontAwesomeIcons.iceCream,
  ];

  final List<String> iconsName = [
    'Zezinho Burguer',
    'PI Pizza',
    'Pescados da Jujuba',
    'Xio Xen Food',
    'PÔ POKE',
    'PÓ PO PÓ?',
    'Ice Cream Factory',
  ];

  final List<String> iconsDesc = [
    'Hamburguers artesanais e lanches especiais',
    'Pizzas italianas e no estilo brasileiro',
    'Pratos com peixes frescos',
    'Melhor japones da região',
    'Poke havaiano',
    'Cafés selecionados e itens de padaria',
    'Os melhores sorvetes da região',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25),
              Row(
                children: [
                  SizedBox(width: 56), // mesmo tamanho do icone + padding
                  Spacer(),
                  Text("R. fulano de Town, 26"),
                  SizedBox(width: 10),
                  Icon(
                    CupertinoIcons.chevron_down,
                    color: Colors.black,
                    size: 15,
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        CupertinoIcons.bell,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  itemCount: CategoriasImg.length, // usa o tamanho da lista
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8, // ajustado para caber imagem + texto
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      color: const Color.fromARGB(0, 170, 170, 170),
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(169, 224, 223, 223),
                          border: Border.all(
                            color: const Color.fromARGB(255, 253, 253, 253),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(6),
                                child: Image.asset(
                                  CategoriasImg[index],
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 6),
                              child: Text(
                                CategoriasName[index],
                                style: TextStyle(
                                  fontSize: 11,
                                  color: const Color.fromARGB(255, 17, 17, 17),
                                ),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 25),
              Column(
                children: [
                  SizedBox(
                    height: 160,
                    child: PageView.builder(
                      itemCount: banners.length,
                      onPageChanged: (index) =>
                          setState(() => _currentIndex = index),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: SvgPicture.asset(
                              banners[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      banners.length,
                      (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        width: _currentIndex == index ? 18 : 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: _currentIndex == index
                              ? const Color.fromARGB(255, 138, 136, 136)
                              : Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: SvgPicture.asset(cards[index], width: 157),
                    );
                  },
                ),
              ),
              SizedBox(height: 25),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Text(
                    "Restaurantes proximos",
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 17, 17, 17),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 70,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(169, 236, 235, 235),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 16),
                        FaIcon(
                          icons[index],
                          size: 28,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              iconsName[index],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 17, 17, 17),
                              ),
                            ),
                            Text(
                              iconsDesc[index],
                              style: const TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 17, 17, 17),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: const Color(0xFFEA1D2C),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: 'Buscar'),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
