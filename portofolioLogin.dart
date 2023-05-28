import 'package:belajar_navigation1/aboutLogin.dart';
import 'package:belajar_navigation1/halamanHome.dart';
import 'package:belajar_navigation1/homePageLogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class portoLogin extends StatelessWidget {
  const portoLogin({super.key});

  void showAlertDialog(BuildContext context) {
    // set up the button
    Widget yesButton = TextButton(
      child: Text("Yes"),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MyApp()));
      },
    );
    Widget noButton = TextButton(
      child: Text("No"),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => homePageLogin()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Row(
        children: [
          Icon(Icons.logout),
          Text("Logout"),
        ],
      ),
      content: Text("Are you sure you want to logout?"),
      actions: [yesButton, noButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 209, 176),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1567016376408-0226e4d0c1ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
                fit: BoxFit.cover)),
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: const [
            Text("PROJECT",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
            SizedBox(
              height: 8.0,
            ),
            Text("Portofolio Pekerjaan Filostudio",
                style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("HOME"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const homePageLogin(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.file_copy),
              title: const Text("PORTOFOLIO"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const portoLogin(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.article),
              title: const Text("ABOUT"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const aboutLogin(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                showAlertDialog(context);
                //Navigator.of(context).push(MaterialPageRoute(
                //builder: (context) => const MyApp(),
                //));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(197, 36, 22, 2),
        title: const Text("Filostudio"),
      ),
    );
  }
}
