import 'package:arplayground/Cars/ferari.dart';
import 'package:arplayground/Cars/leapord.dart';

import 'package:arplayground/Cars/lambo.dart';

import 'package:arplayground/presentation/home.dart';
import 'package:flutter/material.dart';

import 'Cars/pizza.dart';
import 'Cars/ferari.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: CustomAppBar(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [],
            ),
          ),
          Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                    height: 180,
                    child: Row(
                      children: <Widget>[
                        _buildCard(
                          'https://imgs.search.brave.com/UJZFLtp4ZlKg6gjZW1S1glrIup_2_2lfuWYxzsNpjr8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTc1/Mzg1MzA5L3Bob3Rv/L3BpenphLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz1DSFhS/NHpxMDVlcnV4YTQ5/TWJoMTllOWNNVlVn/Wkt4VTJwSGFkVUVW/Wm9JPQ',
                          'Pizza',
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => pizza(),
                              ),
                            );
                          },
                        ),
                        _buildCard(
                          'https://imgs.search.brave.com/Zc5gfu9UPTHPuNXmpOUdhKuPQgP91vfWUXNMw_h2YyY/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTA4/Mjc0MTk0L3Bob3Rv/L2xlb3BhcmQtYWdh/aW5zdC1ibHVlLXNr/eS5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9UEFpZEJaZ2pz/eXhWeGZJaWZ0RGV6/dnBfaUVZdGwxbFNJ/YnBnRmJyajRqRT0',
                          'leapord',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Jaguarftype(),
                              ),
                            )
                          },
                        ),
                      ],
                    )),
              ),
              Divider(),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  ),
                  children: [
                    WidgetSpan(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Wrap(
                  spacing: 16, // spacing between cards
                  runSpacing: 16, // spacing between rows
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      print("View all");
                      // Your function here
                    },
                    child: Row(
                      children: [],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                    height: 180,
                    child: Row(
                      children: <Widget>[
                        _buildCard(
                          'https://imgs.search.brave.com/XxY73vagR2cIiTtdtzqpWJo3xMpjyGX3N3NKlLuQBLw/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvODU4/NTk0NjkyL3Bob3Rv/L2RldGFpbHMtb2Yt/dmludGFnZS1mdXJu/aXR1cmUuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPXh0NlY5/TFVtR0s0djBsQTNy/UV8wRmw5NURmTFZp/UUZfXzFZZVNwcjgx/QkE9',
                          'Furniture',
                          () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Furniture(),
                              ),
                            )
                          },
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String imgUrl, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                imgUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 244, 230),
        elevation: 0,
        title: Text(
          'AR Fusion craft',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
