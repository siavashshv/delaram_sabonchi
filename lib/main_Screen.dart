import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/aboutme_screen.dart';
import 'package:flutter_application_1/contact_screen.dart';
import 'package:flutter_application_1/portfolio_screen.dart';
import 'package:flutter_application_1/screen/blog_screen.dart';
import 'package:flutter_application_1/screen/home_screen.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> with TickerProviderStateMixin {
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        PageView(
          controller: controller,
          children: [
            HomeScreen(
              onAboutMe: () {
                _changeController(1);
              },
              onPortfoilo: () {
                _changeController(2);
              },
            ),
            AboutMe(),
            PortfolioScreen(),
            ContactScreen(),
            BlogScreen()
          ],
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
        ),
        Positioned(
            top: 16,
            left: 16,
            child: MenuWidget(
              onChanged: (value) {
                controller.jumpToPage(value);
              },
            )),
      ],
    );
  }

  void _changeController(int value) {
    controller.jumpToPage(value);
  }
}

typedef SelectedChange = void Function(int);

class MenuWidget extends StatefulWidget {
  final SelectedChange onChanged;
  const MenuWidget({Key? key, required this.onChanged}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> with TickerProviderStateMixin {
  late AnimationController _animationController;
  bool isOpen = false;
  double menuHeight = 60;
  int hoverIndex = -1;
  int selectedIndex = 0;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
          isOpen
              ? _animationController.forward()
              : _animationController.reverse();
          isOpen ? menuHeight = 280 : menuHeight = 60;
        });
      },
      child: Row(
        children: [
          AnimatedContainer(
            width: 60,
            height: menuHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff161515)),
            duration: Duration(milliseconds: 450),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  AnimatedIcon(
                      icon: AnimatedIcons.menu_close,
                      color: Colors.white,
                      progress: _animationController),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      _goToPageAndClose(0);
                    },
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        _enterOn(0);
                      },
                      onExit: (event) {
                        _exitFrom();
                      },
                      child: Icon(
                        Icons.home,
                        color: hoverIndex == 0 || selectedIndex == 0
                            ? Color(0xffff0387)
                            : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  GestureDetector(
                    onTap: () {
                      _goToPageAndClose(1);
                    },
                    child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (event) {
                          _enterOn(1);
                        },
                        onExit: (event) {
                          _exitFrom();
                        },
                        child: Icon(
                          Icons.person,
                          color: hoverIndex == 1 || selectedIndex == 1
                              ? Color(0xffff0387)
                              : Colors.white,
                        )),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  GestureDetector(
                    onTap: () {
                      _goToPageAndClose(2);
                    },
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        _enterOn(2);
                      },
                      onExit: (event) {
                        _exitFrom();
                      },
                      child: Icon(
                        Icons.work,
                        color: hoverIndex == 2 || selectedIndex == 2
                            ? Color(0xffff0387)
                            : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  GestureDetector(
                    onTap: () {
                      _goToPageAndClose(3);
                    },
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        _enterOn(3);
                      },
                      onExit: (event) {
                        _exitFrom();
                      },
                      child: Icon(
                        Icons.comment_sharp,
                        color: hoverIndex == 3 || selectedIndex == 3
                            ? Color(0xffff0387)
                            : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  GestureDetector(
                    onTap: () {
                      _goToPageAndClose(4);
                    },
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (event) {
                        _enterOn(4);
                      },
                      onExit: (event) {
                        _exitFrom();
                      },
                      child: Icon(Icons.email_rounded,
                          color: hoverIndex == 4 || selectedIndex == 4
                              ? Color(0xffff0387)
                              : Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedContainer(
            height: menuHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.transparent),
            duration: Duration(milliseconds: 450),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 65,
                    ),
                    GestureDetector(
                      onTap: () {
                        _goToPageAndClose(0);
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (event) {
                          _enterOn(0);
                        },
                        onExit: (event) {
                          _exitFrom();
                        },
                        child: AnimatedPadding(
                          duration: Duration(milliseconds: 200),
                          padding: EdgeInsets.only(
                              left: hoverIndex == 0 || selectedIndex == 0
                                  ? 24
                                  : 16),
                          child: Text(
                            'Home',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: hoverIndex == 0 || selectedIndex == 0
                                        ? Color(0xffff0387)
                                        : Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    GestureDetector(
                      onTap: () {
                        _goToPageAndClose(1);
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (event) {
                          _enterOn(1);
                        },
                        onExit: (event) {
                          _exitFrom();
                        },
                        child: AnimatedPadding(
                          padding: EdgeInsets.only(
                              left: hoverIndex == 1 || selectedIndex == 1
                                  ? 24
                                  : 16),
                          duration: Duration(milliseconds: 200),
                          child: Text(
                            'About',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: hoverIndex == 1 || selectedIndex == 1
                                        ? Color(0xffff0387)
                                        : Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        _goToPageAndClose(2);
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (event) {
                          _enterOn(2);
                        },
                        onExit: (event) {
                          _exitFrom();
                        },
                        child: AnimatedPadding(
                          duration: Duration(milliseconds: 200),
                          padding: EdgeInsets.only(
                              left: hoverIndex == 2 || selectedIndex == 2
                                  ? 24
                                  : 16),
                          child: Text(
                            'Portfolio',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: hoverIndex == 2 || selectedIndex == 2
                                        ? Color(0xffff0387)
                                        : Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        _goToPageAndClose(3);
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (event) {
                          _enterOn(3);
                        },
                        onExit: (event) {
                          _exitFrom();
                        },
                        child: AnimatedPadding(
                          duration: Duration(milliseconds: 200),
                          padding: EdgeInsets.only(
                              left: hoverIndex == 3 || selectedIndex == 3
                                  ? 24
                                  : 16),
                          child: Text(
                            'Contact',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: hoverIndex == 3 || selectedIndex == 3
                                        ? Color(0xffff0387)
                                        : Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    GestureDetector(
                      onTap: () {
                        _goToPageAndClose(4);
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (event) {
                          _enterOn(4);
                        },
                        onExit: (event) {
                          _exitFrom();
                        },
                        child: AnimatedPadding(
                          duration: Duration(milliseconds: 200),
                          padding: EdgeInsets.only(
                              left: hoverIndex == 4 || selectedIndex == 4
                                  ? 24
                                  : 16),
                          child: Text(
                            'Blog',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    color: hoverIndex == 4 || selectedIndex == 4
                                        ? Color(0xffff0387)
                                        : Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _enterOn(int index) {
    setState(() {
      hoverIndex = index;
    });
  }

  void _exitFrom() {
    setState(() {
      hoverIndex = -1;
    });
  }

  void _goToPageAndClose(int page) {
    widget.onChanged(page);

    setState(() {
      isOpen = false;
      isOpen ? _animationController.forward() : _animationController.reverse();
      isOpen ? menuHeight = 280 : menuHeight = 60;
      menuHeight = isOpen ? 280 : 60;
      selectedIndex = page;
    });
  }
}
