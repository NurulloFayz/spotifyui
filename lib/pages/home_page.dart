import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int _selectedPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       centerTitle:true,
       title: Text('APP'),
     ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.grey,
              height: 200,
            )
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index){
          setState(() {
            _selectedPage = index;
          });
        },
        children: [
          // Container(
          //   child: Center(
          //     child: Text('',style: TextStyle(color: Colors.red),),
          //
          //   ),
          // ),
          Container(
            child: Center(
              child: Text('Page 1',style: TextStyle(color: Colors.black,fontSize: 50),),
            ),
            color: Colors.red,
          ),
          Container(
            child:SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.red,
                    height: 100,
                    margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                      child:Center(
                        child: Text('1',style: TextStyle(fontSize: 20),),
                      )
                  ),
                  Container(
                    color: Colors.red,
                    height: 100,
                    margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                      child:Center(
                        child: Text('2',style: TextStyle(fontSize: 20)),
                      )
                  ),
                  Container(
                    color: Colors.red,
                    height: 100,
                    margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                      child:Center(
                        child: Text('3',style: TextStyle(fontSize: 20)),
                      )
                  ),
                  Container(
                    color: Colors.red,
                    height: 100,
                    margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                      child:Center(
                        child: Text('4',style: TextStyle(fontSize: 20)),
                      )
                  ),
                  Container(
                    color: Colors.red,
                    height: 100,
                    margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                      child:Center(
                        child: Text('5',style: TextStyle(fontSize: 20)),
                      )
                  ),
                  Container(
                    color: Colors.red,
                    height: 100,
                    margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                    child:Center(
                      child: Text('6',style: TextStyle(fontSize: 20)),
                    )
                  ),
                ],
              ),
            ),
            color: Colors.white,
          ),
          Container(
            child: GridView.count(crossAxisCount: 3),
            width: 70,
            height: 70,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo),label: 'account'),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Colors.cyan,
        onTap: (int index){
          _selectedPage = index;
          _pageController.animateToPage(index, duration: Duration(microseconds: 200), curve: Curves.easeIn);
        }
      ),
    );
  }

}
