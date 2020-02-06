import 'package:flutter/material.dart';
import 'package:flutter_book_design/data.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      title: Text(
        'Design Book',
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
        )
      ],
    );

    //create book title
    createTile(Book book) => Hero(
      tag: book.title,
      child: Material(
        elevation: 15.0,
        shadowColor: Colors.yellow.shade900,
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, 'detail/${book.title}');
          },
          child: Image(
            image: AssetImage(book.image),
            fit: BoxFit.cover,

          ),
        ),
      ),
    );

    //create book grid tiles

    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
              crossAxisCount: 3,
          childAspectRatio: 2/3,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,

            children: books.map((book) => createTile(book)).toList()
          ),

        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: appBar,
      body: grid,
    );
  }
}
