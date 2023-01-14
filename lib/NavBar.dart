import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsects.zero,
        children: [
          UserAccountDrawerHeader(
            accountName: Text('Oflutter.com'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: Image.network(
                'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: Box Decoration(
            color: Colors.blue,
            image: DecorationImage(
              Image: NetworkImage(
                'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg',
              ),
              fit: BoxFit.cover,
              ),
            ),
          ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              onTap: () => null,
              )
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Friends'),
                onTap: () => null,
              )
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
                onTap: () => null,
              )
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Request'),
                onTap: () => null,
              )
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () => null,
              )
              ListTile(
                leading: Icon(Icons.description),
                title: Text('Policies'),
                onTap: () => null,
              )
              Divider(),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Exit'),
                onTap: () => null,
              )
        ],
      ),
    );
  }
}