import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel? model;

  const EditorContactView({
    super.key,
    this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: model == null
            ? const Text(
                "Novo Contato",
                style: TextStyle(
                  color: Colors.black,
                ),
              )
            : const Text(
                "Editar Contato",
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                initialValue: model?.name,
                onSaved: (value) => model?.name = value ?? '',
              ),
              TextFormField(
                initialValue: model?.email,
                onSaved: (value) => model?.email = value ?? '',
              ),
              TextFormField(
                initialValue: model?.phone,
                onSaved: (value) => model?.phone = value ?? '',
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: const Text("Salvar"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
