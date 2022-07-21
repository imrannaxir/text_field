import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title , Key? key}) : super(key: key);

  final String title ;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0 ;
  void _incrementCounter(){
    setState(() {
      _counter ++ ;
    });
  }
  void _decrementCounter(){
    setState(() {
      _counter -- ;
    });
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size ;
    var clientHeight = size.height - kToolbarHeight ;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      body: myTextField(clientHeight , size),
      drawer: myDrawer(),
      floatingActionButton: myFloatingActionButton(),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  Widget myTextField(var clientHeight , var size){
    return Container(
      //  color: Colors.lime,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/mani.jpg',
          ),
        ),
      ),

      child: Column(
        children: [
          Center(
            child: SizedBox(
              width: size.width*0.8,
              height: clientHeight*0.23,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Name :',
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    label: Text('Enter Your Name '),
                    icon: Icon(Icons.person),
                //    prefix: Icon(Icons.person),
                 //   prefixIcon: Icon(Icons.alarm),
                //    suffix: Icon(Icons.lock),
                 //   suffixIcon: Icon(Icons.security),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20),
                      ),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width*0.8,
            height: clientHeight*0.15,
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your E_Mail :',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                labelText: 'Enter Your E_Mail',
                icon: Icon(Icons.email),
            //    prefix: Icon(Icons.person),
            //    prefixIcon: Icon(Icons.work),
            //    suffix: Icon(Icons.timer_outlined),
            //    suffixIcon: Icon(Icons.work_sharp),

                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
              ),
              keyboardType: TextInputType.emailAddress,

            ),
          ),
          SizedBox(
            height: clientHeight*0.15,
            width: size.width*0.8,
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your Password :',
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                labelText: 'Enter Your Password',
                icon: Icon(Icons.password),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                   color: Colors.black,
                   width: 3,
                  ),
                ),
              ),
              obscureText: true,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Container(
              height: clientHeight*0.08,
              width: size.width*0.3,
          //    color: Colors.pink,
              decoration:  BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 3,
                ),
                  borderRadius: const BorderRadius.all(Radius.circular(30),),
              ),
              child: const Center(
                child: Text(
                  'LOG_IN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Container(
              height: clientHeight*0.08,
              width: size.width*0.3,
          //    color: Colors.purple,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 3,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(30),
                ),
              ),
              child: const Center(
                child: Text(
                  'SIGN_UP',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget myFloatingActionButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add,size: 24,),
        ),
        FloatingActionButton(
          onPressed: _decrementCounter,
        tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }

  Widget myBottomNavigationBar(){
    return Container(
      height: 70,
      color: Colors.pink,
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>
        [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.other_houses),label: 'House'),
          BottomNavigationBarItem(icon: Icon(Icons.delete),label: 'Delete'),
        ],
      ),
    );
  }

  Widget myDrawer(){
    return Drawer(
      child: Column(
        children:  [
          Container(
            color: Colors.pink,
            child: const DrawerHeader(
                child: Center(
                  child: Text(
                    'Drawer Header',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: ListTile(
              leading: Icon(Icons.account_balance,size: 32,),
              title: Text('My Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.delete,size: 32,),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: ListTile(
              leading: Icon(Icons.person,size: 32,),
              title: Text('Suffi',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.message,size: 32,),
            ),
          ),
        ],
      ),
    );
  }

}
