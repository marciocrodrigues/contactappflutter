import 'package:contatoapp/android/views/address.view.dart';
import 'package:contatoapp/android/views/editor-contact.view.dart';
import 'package:contatoapp/models/contact.model.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(200),
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: NetworkImage("https://i.picsum.photos/id/101/2621/1747.jpg"),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Desenvolvedor da Silva",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "14 99999-9999",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "desenvolvedor@hotmail.com",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
                child: Icon(
                  Icons.phone,
                  color: Theme.of(context).accentColor,
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
                child: Icon(
                  Icons.email,
                  color: Theme.of(context).accentColor,
                ),
              ),
              FlatButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                shape: CircleBorder(
                  side: BorderSide.none,
                ),
                child: Icon(
                  Icons.camera_enhance,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(
            title: Text(
              "Endereço",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Rua Teste, 200",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  "São Paulo/SP",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            isThreeLine: true,
            trailing: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddressView(),
                  ),
                );
              },
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
                    name: "Desenvolvedor da Silva",
                    email: "desenvolvedor@hotmail.com",
                    phone: "14 99999-9999",
                  ),
                ),
              ),
          );
        },
        child: Icon(
          Icons.edit,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}