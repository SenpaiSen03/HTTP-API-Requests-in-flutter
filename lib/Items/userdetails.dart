import 'package:bdapplication/Widgets/details.dart';
import 'package:flutter/material.dart';
import 'package:bdapplication/Items/userjsonlist.dart';

class PostDetail extends StatelessWidget {
  final Users post;

  PostDetail({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.username),
      ),
      body: DetailCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ListTile(
              title: Text("ID"),
              subtitle: Text("${post.id}"),
            ),
            ListTile(
              title: Text("Username"),
              subtitle: Text(post.username),
            ),
            ListTile(
              title: Text("Name"),
              subtitle: Text(post.name),
            ),
            ListTile(
              title: Text("Website"),
              subtitle: Text(post.website),
            ),
            ListTile(
              title: Text("Phone"),
              subtitle: Text(post.phone),
            ),
            ListTile(
              title: Text("Email"),
              subtitle: Text(post.email),
            ),
            ListTile(
              title: Text("Address"),
              subtitle: Text(post.address.city +
                  "\n" +
                  post.address.suite +
                  "\n" +
                  post.address.street +
                  "\n" +
                  post.address.zipcode),
            ),
            ListTile(
              title: Text("Company"),
              subtitle: Text(post.company.name),
            ),
          ],
        ),
      ),
    );
  }
}
