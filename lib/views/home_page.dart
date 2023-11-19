import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var parser = EmojiParser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBuilder(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Ana Sayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            label: "Kategoriler",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Sepetim",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded),
            label: "Listelerim",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Hesabım",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            signInSignUpTextBuilder(context),
            homePageIconRowBuilder(),
            homePageNewsBuilder(),
            homePageListViewBuilder(),
            homePageTitleBuilder(context),
            homePageOpportunityBuilder()
          ],
        ),
      ),
    );
  }

  Container homePageOpportunityBuilder() {
    return Container(
      margin: EdgeInsets.all(8),
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(8),
          width: 150,
          height: 250,
          decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.black12),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20,
                decoration: const BoxDecoration(
                  color: Color(0xff5d3ebc),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Süper Fırsatlar",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),
              SizedBox(
                  height: 100,
                  child: Center(child: Image.asset("assets/images/logo.png"))),
              Container(
                height: 20,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Center(
                  child: Text(
                    "Ücretsiz Kargo",
                    style: TextStyle(
                        color: Color(0xff5d3ebc),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black12),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text("12"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: Text(":"),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black12),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text("34"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: Text(":"),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black12),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text("27"),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                child: Text(
                  "Ürün bilgisi Lorem Ipsum Lorem Ipsum Lorem Ipsum 0",
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.orangeAccent,
                    ),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.orangeAccent,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "(23)",
                      style: TextStyle(color: Colors.black45),
                    )
                  ],
                ),
              ),
              Spacer(),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft, child: Text("223,79 TL")),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding homePageTitleBuilder(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Süper Fırsatlar 🎉",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Row(
            children: [
              Text(
                "Tümünü Gör",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Color(0xff5d3ebc)),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Color(0xff5d3ebc),
              )
            ],
          )
        ],
      ),
    );
  }

  SizedBox homePageListViewBuilder() {
    List listviewList = [
      "assets/images/list1.PNG",
      "assets/images/list2.PNG",
      "assets/images/list3.PNG",
      "assets/images/list4.PNG",
    ];

    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width - 32,
          height: 120,
          child: Image.asset(listviewList[index]),
        ),
      ),
    );
  }

  SizedBox homePageNewsBuilder() {
    return SizedBox(
      height: 150,
      child: PageView.builder(
        itemCount: 8,
        itemBuilder: (context, index) => NewsWidget(
          index: index,
        ),
      ),
    );
  }

  Padding signInSignUpTextBuilder(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            Icons.flash_on_sharp,
            color: Colors.orange,
          ),
          Text(
            "Üye Ol / Giriş Yap fırsatları kaçırma!",
            style: Theme.of(context).textTheme.titleSmall,
          )
        ],
      ),
    );
  }

  Container homePageIconRowBuilder() {
    return Container(
      height: 120,
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          homePageIconRowWidget(
            title: "Kuponlar",
            imageNumber: 1,
          ),
          homePageIconRowWidget(
            title: "UçUç Kupon",
            imageNumber: 2,
          ),
          homePageIconRowWidget(
            title: "Süper Fırsatlar",
            imageNumber: 3,
          ),
          homePageIconRowWidget(
            title: "Siparişlerim",
            imageNumber: 4,
          )
        ],
      ),
    );
  }

  AppBar appBarBuilder() {
    return AppBar(
      backgroundColor: Color(0xff5d3ebc),
      title: SizedBox(
        height: 40,
        child: SearchBar(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          leading: Container(
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.all(6),
            width: 80,
            decoration: const BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              ),
            ),
            child: Image.asset("assets/images/logo.png"),
          ),
          hintText: "Ürün, kategori, marka ara",
          hintStyle: MaterialStateProperty.all(
              TextStyle(color: Colors.black54, fontSize: 14)),
        ),
      ),
      actions: const [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: CircleAvatar(
            radius: 21,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: Color(0xff5d3ebc),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class NewsWidget extends StatelessWidget {
  int index;
  List newsList = [
    "assets/images/news1.jpg",
    "assets/images/news2.PNG",
    "assets/images/news3.PNG",
    "assets/images/news4.PNG",
    "assets/images/news5.PNG",
    "assets/images/news6.PNG",
    "assets/images/news7.PNG",
    "assets/images/news8.PNG",
  ];
  NewsWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      newsList[index],
      fit: BoxFit.fitWidth,
    );
  }
}

class homePageIconRowWidget extends StatelessWidget {
  homePageIconRowWidget(
      {super.key, required this.title, required this.imageNumber});

  String title;
  int imageNumber;
  List imageList = [
    "assets/images/row1.PNG",
    "assets/images/row2.PNG",
    "assets/images/row3.PNG",
    "assets/images/row4.PNG"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Color(0xff5d3ebc),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(
                imageList[imageNumber - 1],
              ),
            ),
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
