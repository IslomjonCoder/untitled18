import 'package:flutter/material.dart';
import 'package:untitled18/models/user_model.dart';
import 'package:untitled18/network/api_provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  ApiProvider provider = ApiProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: provider.getUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else if (snapshot.hasData) {
            final user = snapshot.data! as User;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.network(user.picture.large),
                  ),
                  Row(
                    children: [
                      Icon(Icons.person),
                      Text(user.name.first + ' ' + user.name.last),
                    ],
                  ),
                  Row(children: [
                    Icon(Icons.location_on),
                    Flexible(
                      child: Text(
                          '${user.location.country} ${user.location.state} ${user.location.city}  ${user.location.street.name}'),
                    ),
                  ]),
                  Row(
                    children: [
                      Icon(Icons.email),
                      Text(user.email),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.person_4),
                      Text("${user.login.username} ${user.login.password}"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      Text(user.phone),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.cake),
                      Text(user.dob.age.toString()),
                    ],
                  ),
                ],
              ),
            );
          }
          return Center(child: Text(snapshot.data.toString()));
        },
      ),
    );
  }
}
