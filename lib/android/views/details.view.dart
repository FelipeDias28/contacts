import 'package:contacts/android/views/editor-contact.view.dart';
import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contato",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black, //altera a cor da trailing
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(
                10), // Adicionando esse espaçamento, aparece o efeito atrás da imagem
            decoration: BoxDecoration(
              color: Theme.of(context)
                  .primaryColor
                  .withOpacity(0.1), // opcidade vai sempre até "1"
              borderRadius: BorderRadius.circular(200),
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                  image: NetworkImage("https://picsum.photos/250?image=9"),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Felipe Dias",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "14 99710-1478",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            "adfelipealmeida@mail.com",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Theme.of(context).primaryColor,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.phone,
                    color: Theme.of(context).colorScheme.secondary,
                    size: 30,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Theme.of(context).primaryColor,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.email,
                    color: Theme.of(context).colorScheme.secondary,
                    size: 30,
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Theme.of(context).primaryColor,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.camera_enhance,
                    color: Theme.of(context).colorScheme.secondary,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          ListTile(
            title: const Text(
              "Endereço",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Rua do Desenvolvedor, 256",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  "Botucatu/SP",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            isThreeLine:
                true, // Utilizando quando o Title ou Subtitle não é somente uma linha,
            trailing: TextButton(
              onPressed: () {},
              child: Icon(
                Icons.pin_drop,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorContactView(
                model: ContactModel(
                  id: "1",
                  name: "Felipe Dias",
                  email: "felipe@mail",
                  phone: "14 99710-1478",
                ),
              ),
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.edit,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
