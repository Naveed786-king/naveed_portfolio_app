import 'package:flutter/material.dart';

void main() => runApp(NaveedPortfolio());

class NaveedPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Naveed Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Naveed Portfolio'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              CircleAvatar(radius: 60, backgroundImage: NetworkImage('https://i.imgur.com/yourphoto.jpg')),
              SizedBox(height: 20),
              Text('Naveed', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              Text(
                '5 Years Experience • WordPress, Shopify, SEO, Graphic Design, CGI Video',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text('Projects', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ProjectCard(title: 'E-commerce Website', description: 'Built multiple Shopify stores'),
              ProjectCard(title: 'CGI Ads', description: 'Created CGI videos for ads'),
              ProjectCard(title: 'SEO Campaigns', description: 'Optimized websites for top search ranking'),
              SizedBox(height: 20),
              Text('Contact', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Text('Email: naveed@example.com\nLocation: Pakistan', textAlign: TextAlign.center),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  ProjectCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 5,
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
      ),
    );
  }
}
