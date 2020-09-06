import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var function = Provider.of<HomeProvider>(context);
    var name = Provider.of<HomeProvider>(context).name;
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Test'),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          return Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Center(child: Text('${name[i].name} $i')));
        },
        itemCount: name.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          function.remove();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
