import 'package:bdapplication/Widgets/lists.dart';
import 'package:flutter/material.dart';

import 'httprequests.dart';
import 'userjsonlist.dart';
import 'userdetails.dart';

class PostsPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: FutureBuilder(
        future: httpService.getUsers(),
        builder: (BuildContext context, AsyncSnapshot<List<Users>> snapshot) {
          if (snapshot.hasData) {
            List<Users>? posts = snapshot.data;
            return AppCard(
              child: ListView(
                children: posts!
                    .map(
                      (Users post) => ListTile(
                        leading: CircleAvatar(
                          child: Text(post.name.substring(0, 2)),
                        ),
                        title: Text(post.username),
                        subtitle: Text(post.email),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PostDetail(
                              post: post,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
