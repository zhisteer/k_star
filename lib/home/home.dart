import 'package:flutter/material.dart';

import '../widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          )
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.person,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        const Text(
                          "Person",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    //icon button for notification
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications),
                      iconSize: 30,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Icon(Icons.search),
                          ),
                          Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                                contentPadding:
                                    EdgeInsets.fromLTRB(0, 20, 20, 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 30, 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green[400],
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.green,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          )
                        ]),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Icon(Icons.filter_alt),
                    ),
                  )
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonContainerWithIcon(
                    icon: Icons.chat,
                    text: "Community",
                  ),
                  ButtonContainerWithIcon(icon: Icons.wallet, text: "Wallet"),
                  ButtonContainerWithIcon(
                    icon: Icons.theater_comedy,
                    text: "Theater",
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      "Popular",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Expanded(
                child: Container(),
              )
            ],
          ),
        ));
  }
}
