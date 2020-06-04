import 'package:contatoapp/models/contact.model.dart';
import 'package:flutter/material.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel model;

  EditorContactView({
    this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: model == null ? Text("Novo Contato") : Text("Editar Contato"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.text,
                initialValue: model?.name,
                decoration: InputDecoration(
                  labelText: "Name",
                ),
                onSaved: (val) {
                  model.name = val;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                initialValue: model?.phone,
                decoration: InputDecoration(
                  labelText: "Phone"
                ),
                onSaved: (val) {
                  model.phone = val;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                initialValue: model?.email,
                decoration: InputDecoration(
                  labelText: "E-Mail",
                ),
                onSaved: (val) {
                  model.email = val;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: FlatButton.icon(
                  icon: Icon(
                    Icons.save,
                    color: Theme.of(context).accentColor,
                  ),
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                  label: Text(
                    "Salvar",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
