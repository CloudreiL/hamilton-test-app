import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamilton Musical',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black38,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Hamilton App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            toolbarHeight: 100,
            title: Center(
              child: Image.asset(
                'assets/images/hamilton_logo.png',
                height: 70,
              ),
            )
        ), //Аппбар
      body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:50, bottom: 60),
                child: SizedBox(
                height: 190,

                    child: Scrollbar(
                        thumbVisibility: true,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children:[
                                Image.asset('assets/images/ham_1.png'),
                                 Image.asset('assets/images/ham_2.png'),
                                Image.asset('assets/images/ham_3.png')
                            ],
                        ),
                        ),

              )
            )
            ),  //Первый скролл пикс(3 пикчи)
              const Divider(
              thickness: 5,
              color: Color.fromRGBO(64, 64, 64, 100),
            ),
              const Padding(
                 padding: EdgeInsets.only(top:40, bottom:30),
                 child: Text("The real life of one of America's foremost founding fathers and first Secretary of the Treasury, Alexander Hamilton",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                  fontFamily: 'CormorantSC',
                  fontSize: 30,
                  color: Colors.white,
                  shadows: [Shadow(
                    color: Colors.white,
                    blurRadius: 50
                  )]
                ),
              ),
              ), //Текст с описанием
              const Divider(
                    thickness: 5,
                    color: Color.fromRGBO(64, 64, 64, 100),
                ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top:70, bottom: 70),

                  height: 150,
                  width: 400,

                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color.fromARGB(255, 255, 215, 115),
                        Color.fromARGB(255, 255, 182, 0)
                      ]
                    ),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/star.png',
                        ),
                      alignment: Alignment.bottomLeft,
                      scale: 0.1
                    )
                  ),
                  child: const Text(
                    'Synopsis',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'CormorantSC',
                        fontSize: 70,
                        shadows: [Shadow(
                          color: Colors.white,
                          blurRadius: 20,
                        )]
                    ),
                  ),
              ),
            ),  //Контейнер с градиентом
              const Divider(
                thickness: 5,
                color: Color.fromRGBO(64, 64, 64, 100),
              ),
              Padding(
                  padding: const EdgeInsets.only(top:50, bottom:50),
                
                child: SizedBox(
                  height: 195,
                  
                  child: Scrollbar(
                    thumbVisibility: true,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Image.asset('assets/images/ham_duel_1.png'),
                          Image.asset('assets/images/ham_duel_2.png')
                        ],
                      ),
                    ),
                  ),
                ),
              ),  // Второй скролл бар с пикчами(2 пикчи)
              const Divider(
                thickness: 5,
                color: Color.fromRGBO(64, 64, 64, 100),
              ),
              const Padding(
                padding: EdgeInsets.only(top:40, bottom:30),
                child: Text("Hamilton narrates Alexander Hamilton's life in two acts, and details among other things his involvement in the American Revolutionary War as an aide-de-camp to George Washington, his marriage to Elizabeth Schuyler Hamilton, his career as a lawyer and secretary of the treasury, and his interactions with Aaron Burr which culminates in their duel at the end of Hamilton's life",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'CormorantSC',
                      fontSize: 30,
                      color: Colors.white,
                      shadows: [Shadow(
                          color: Colors.white,
                          blurRadius: 50
                      )]
                  ),
                ),
              ),
            ],
      ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.amberAccent
                ),
                child: Text(
                    'Menu',
                  style: TextStyle(
                    fontFamily: 'CormorantSC',
                    fontSize: 40,
                    shadows: [Shadow(
                      color: Colors.grey,
                      blurRadius: 10.0
                    )]
                  ),
                ),
              ),
              ListTile(
                title: const Text(
                    'Home',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'CormorantSC',
                    shadows: [Shadow(
                      color: Colors.grey,
                      blurRadius: 10.0
                    )]
                  ),
                ),
                onTap: () {}),
              ListTile(
                title: const Text(
                    'Info',
                  style: TextStyle(
                    fontFamily: 'CormorantSC',
                    fontSize: 30,
                    shadows: [Shadow(
                      color: Colors.grey,
                      blurRadius: 10.0
                    )]
                  ),
                ),
                onTap: () {}
              ),
               ListTile(
                title: const Text(
                  'Tickets',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'CormorantSC',
                    shadows: [Shadow(
                      color: Colors.grey,
                      blurRadius: 10.0
                    )]
                  ),
                ),
                onTap: (){}
              ),
            ],
          ),
        ),



        bottomNavigationBar: BottomAppBar(
          color: Colors.amberAccent,
          height: 60,
          child: Center(
            child: IconButton(
              onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text(
                          'I like dilfs',
                      style:TextStyle(
                        fontFamily: 'CormorantSC',
                        fontSize: 20
                      )
                      )
                  )
              );
              },
              icon: const Icon(Icons.layers)
            ),
          ),
        )
    );
  }
}
