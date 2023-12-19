import 'package:app15/Mytheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const App(),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int selectedindex = 0;
  bool _switch = false;
  List pages = [const Login(), const Text('info'), const Text('creat')];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? Mytheme.darkmode : Mytheme.lightmode,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('login'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
            Switch(
                value: _switch,
                onChanged: (_newvalue) {
                  setState(() {
                    _switch = _newvalue;
                  });
                }),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: (index) {
              setState(() {
                selectedindex = index;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'login'),
              BottomNavigationBarItem(icon: Icon(Icons.info), label: 'info'),
              BottomNavigationBarItem(icon: Icon(Icons.create), label: 'creat')
            ]),
        body: pages.elementAt(selectedindex),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/128.png'),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            style: TextStyle(fontSize: 16, color: Colors.black),
            decoration: InputDecoration(
                hintText: 'Username',
                prefixIcon: Icon(Icons.person),
                filled: true,
                fillColor: Colors.white,
                hintStyle: TextStyle(fontSize: 16, color: Colors.lightBlue),
                prefixIconColor: Colors.lightBlue,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            obscureText: true,
            style: TextStyle(fontSize: 16, color: Colors.black),
            decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                filled: true,
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintStyle: TextStyle(fontSize: 16, color: Colors.lightBlue),
                prefixIconColor: Colors.lightBlue),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'did you forget your password',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            width: 200,
            height: 10,
            child: Divider(),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Login')),
          ElevatedButton(onPressed: () {}, child: Text('Exit'))
        ],
      ),
    );
  }
}
