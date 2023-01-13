import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Endereço do Contato",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: ListTile(
              title: const Text(
                "Endereço atual",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Rua do desenvoldedor, 256",
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
              isThreeLine: true,
            ),
          ),
          SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Pesquisar....",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    width: 3,
                    color: Colors.black54,
                  )),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue.withOpacity(0.2),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.my_location,
          color: Colors.black,
        ),
      ),
    );
  }
}
