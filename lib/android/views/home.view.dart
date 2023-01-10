import 'package:contacts/android/views/details.view.dart';
import 'package:contacts/android/views/editor-contact.view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // A quantidade de sombra
        title: const Text(
          "Meus Contatos",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: TextButton(
          onPressed: () {},
          child: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                image: const DecorationImage(
                  image: NetworkImage("https://picsum.photos/250?image=9"),
                ),
              ),
            ),
            title: const Text("Felipe Dias"),
            subtitle: const Text("14 997101478"),
            trailing: TextButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsView(),
                  ),
                );
              }),
              child: Icon(
                Icons.chat,
                color: Theme.of(context).primaryColor,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditorContactView(),
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
