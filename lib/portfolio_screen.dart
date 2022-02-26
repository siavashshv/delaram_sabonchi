import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/data/model/category.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen>
    with TickerProviderStateMixin {
  int selectedCategoryIndex = 0;
  PortfoCategories categories = PortfoCategories(list: [
    Category(
        title: 'WEBSITE',
        isSelected: true,
        portfoList: [
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpine'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpind'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpind'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
        ],
        categoryImage: 'images/project.jpeg'),
    Category(
        title: 'APPLICATION',
        portfoList: [
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpine'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpind'),
        ],
        categoryImage: 'images/project.jpeg'),
    Category(
        title: 'LOGO',
        portfoList: [
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpine'),
        ],
        categoryImage: 'images/project.jpeg'),
    Category(
        title: '3D',
        portfoList: [
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpine'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpind'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpine'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpind'),
        ],
        categoryImage: 'images/project.jpeg'),
    Category(
        title: 'GAME',
        portfoList: [
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpine'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpind'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpine'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpind'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpine'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Sandogh'),
          Portfo(imagePath: 'images/project.jpeg', title: 'Inpind'),
        ],
        categoryImage: 'images/project.jpeg'),
    Category(
        title: 'ADVERTISING',
        portfoList: [],
        categoryImage: 'images/project.jpeg'),
  ]);
  bool isCategoriesSelected = false;
  late AnimationController animatedController;
  late AnimationController animatedSecondController;
  late Animation<double> animation;
  late Animation<double> animationSecond;
  PageController controller = PageController(initialPage: 0);
  @override
  void initState() {
    animatedController =
        AnimationController(duration: Duration(milliseconds: 450), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(animatedController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('MY', style: Theme.of(context).textTheme.headline5!),
                  SizedBox(width: 10),
                  Text(
                    'PORTFOLIO',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Color(0xffff0387)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '_____',
                    style: TextStyle(
                        color: Color(0xffff0387), fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'A FEW RECENT DESIGN . WANT TO SEE MORE? EMAIL ME.',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontWeight: FontWeight.w200),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    '_____',
                    style: TextStyle(
                        color: Color(0xffff0387), fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 75),
                        child: Container(
                            width: MediaQuery.of(context).size.width - 400,
                            height: MediaQuery.of(context).size.height - 250,
                            child: PageView(
                              controller: controller,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height - 250,
                                  child: GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            crossAxisSpacing: 20,
                                            childAspectRatio: 1.6),
                                    itemBuilder: (context, index) {
                                      return CategoryItemWidget(
                                        item: categories.list[index],
                                        onClick: () {
                                          categories.selectAnItem(index);
                                          isCategoriesSelected = true;
                                          selectedCategoryIndex = index;
                                          animatedController.forward();
                                          controller.animateToPage(1,
                                              duration: Duration(
                                                milliseconds: 450,
                                              ),
                                              curve: Curves.easeIn);
                                          setState(() {});
                                        },
                                      );
                                    },
                                    itemCount: categories.list.length,
                                    shrinkWrap: true,
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height - 250,
                                  child: GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            crossAxisSpacing: 20,
                                            childAspectRatio: 1.6),
                                    itemBuilder: (context, index) {
                                      return PortfoItem(
                                        item: categories
                                            .list[selectedCategoryIndex]
                                            .portfoList[index],
                                      );
                                    },
                                    itemCount: categories
                                        .list[selectedCategoryIndex]
                                        .portfoList
                                        .length,
                                    shrinkWrap: true,
                                  ),
                                ),
                              ],
                            )),
                      ),
                      FadeTransition(
                        opacity: animation,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back_rounded),
                            onPressed: () {
                              animatedController.reverse();
                              controller.animateToPage(0,
                                  duration: Duration(
                                    milliseconds: 450,
                                  ),
                                  curve: Curves.easeIn);
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PortfoItem extends StatefulWidget {
  final Portfo item;
  const PortfoItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<PortfoItem> createState() => _PortfoItemState();
}

class _PortfoItemState extends State<PortfoItem> {
  double opacity = 0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) {
        setState(() {
          opacity = 1;
        });
      },
      onExit: (event) {
        setState(() {
          opacity = 0;
        });
      },
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                widget.item.imagePath,
                fit: BoxFit.fitHeight,
              )),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 400),
                opacity: opacity,
                child: Container(
                  color: Color(0xffff0387),
                  child: Center(
                    child: Text(widget.item.title,
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: Colors.black)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategoryItemWidget extends StatefulWidget {
  final Category item;
  final VoidCallback onClick;
  const CategoryItemWidget({
    Key? key,
    required this.item,
    required this.onClick,
  }) : super(key: key);

  @override
  State<CategoryItemWidget> createState() => _CategoryItemWidgetState();
}

class _CategoryItemWidgetState extends State<CategoryItemWidget> {
  double opacity = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClick,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) {
          setState(() {
            opacity = 1;
          });
        },
        onExit: (event) {
          setState(() {
            opacity = 0;
          });
        },
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  widget.item.categoryImage,
                  fit: BoxFit.fitHeight,
                )),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 400),
                  opacity: opacity,
                  child: Container(
                    color: Color(0xffff0387),
                    child: Center(
                      child: Text(widget.item.title,
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(color: Colors.black)),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
