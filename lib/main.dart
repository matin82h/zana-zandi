import 'package:flutter/material.dart';
import 'navigation_bottom.dart';

void main() => runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        backgroundColor: Colors.white,
        body: Instagram(),
        bottomNavigationBar: Navigation())));

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

List I = [
  'img/fear1.jpg',
  'img/fear2.jpg',
  'img/fear3.jpg',
  'img/fear4.jpg',
  'img/fear5.jpg',
  'img/fear6.jpg',
  'img/fear7.jpg',
  'img/fear8.jpg',
  'img/fear9.jpg',
];

class _InstagramState extends State<Instagram> {
  Widget img(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 590.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(I[index]),
                          ),
                        ),
                      ),
                    ),
                    title: const Text(
                      'fear',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('5 min'),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    width: double.infinity,
                    height: 400.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 5),
                          blurRadius: 8.0,
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage(I[index]),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  iconSize: 30.0,
                                  icon: const Icon(
                                    Icons.favorite_border,
                                    color: Colors.black,
                                    size: 35,
                                  ),
                                ),
                                const Text(
                                  '2.610',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20.0),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  iconSize: 30.0,
                                  icon: const Icon(
                                    Icons.chat,
                                  ),
                                ),
                                const Text(
                                  '200',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          iconSize: 30.0,
                          icon: const Icon(Icons.bookmark_border),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Instagram',
                style: TextStyle(fontSize: 32.0),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.live_tv),
                    iconSize: 30.0,
                  ),
                  const SizedBox(width: 16.0),
                  SizedBox(
                    width: 35.0,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send),
                      iconSize: 30.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: 10,
          height: 100.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: I.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(10.0),
                width: 70.0,
                height: 50.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(I[index]),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        img(0),
        img(1),
        img(2),
        img(3),
        img(4),
        img(5),
        img(6),
        img(7),
        img(8),
      ],
    );
  }
}
