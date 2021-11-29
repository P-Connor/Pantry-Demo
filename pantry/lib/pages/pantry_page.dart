import 'package:flutter/material.dart';

class PantryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:
              Text("My Pantry", style: Theme.of(context).textTheme.headline5),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: const Icon(Icons.add),
          backgroundColor: Color(0xff95d084),
        ),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: [
            SizedBox(height: 8),
            Text("Expiring soon:",
                style: Theme.of(context).textTheme.headline6),
            Card(
              child: ListTile(
                title: const Text(
                    'Oscar Mayer Naturally Hardwood Smoked Bacon, 16 oz Pack'),
                subtitle: const Text('Quantity: 4pc left\nExpires in 1 day'),
                leading: Image(
                    image: AssetImage('assets/images/oscar_mayer_bacon.jpeg')),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Great Value Large Eggs, 18 Pack'),
                subtitle: const Text('Quantity: 2pc left\nExpires in 2 days'),
                leading: Image(image: AssetImage('assets/images/eggs.jpeg')),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            SizedBox(height: 8),
            Text("Meats:", style: Theme.of(context).textTheme.headline6),
            Card(
              child: ListTile(
                title: const Text(
                    'Tyson Thin Sliced Boneless Chicken Breast, 1.0-2.0lb'),
                subtitle: const Text('Quantity: 4pc left\nExpires in 4 days'),
                leading: Image(
                    image: AssetImage(
                        'assets/images/tyson_thin_sliced_boneless_chicken_breast.png')),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text(
                    'Oscar Mayer Naturally Hardwood Smoked Bacon, 16 oz Pack'),
                subtitle: const Text('Quantity: 4pc left\nExpires in 1 day'),
                leading: Image(
                    image: AssetImage('assets/images/oscar_mayer_bacon.jpeg')),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Great Value Large Eggs, 18 Pack'),
                subtitle: const Text('Quantity: 2pc left\nExpires in 2 days'),
                leading: Image(image: AssetImage('assets/images/eggs.jpeg')),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            SizedBox(height: 8),
            Text("Fruits and Vegetables:",
                style: Theme.of(context).textTheme.headline6),
            Card(
              child: ListTile(
                title: const Text('Cucumber'),
                subtitle: const Text('Quantity: 2pc left\nExpires in 1 week'),
                leading: Image(image: AssetImage('assets/images/cucumber.png')),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Red Bell Pepper'),
                subtitle:
                    const Text('Quantity: 1pc left\nExpires in 1.2 weeks'),
                leading: Image(
                    image: AssetImage('assets/images/red_bell_pepper.jpeg')),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('White Onion'),
                subtitle: const Text('Quantity: 3pc left\nExpires in 2 weeks'),
                leading:
                    Image(image: AssetImage('assets/images/white_onion.jpeg')),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                title:
                    const Text('Melissa\'s Baby Dutch Yellow Potatoes, 1.5lb'),
                subtitle: const Text('Quantity: 8pc left\nExpires in 3 weeks'),
                leading: Image(
                    image: AssetImage(
                        'assets/images/melissas_baby_dutch_yellow_potatoes.jpeg')),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            SizedBox(height: 8),
            Text("Canned Goods:", style: Theme.of(context).textTheme.headline6),
            Card(
              child: ListTile(
                title: const Text('Campbell\'s Thick Steak and Potato Soup'),
                subtitle: const Text('Quantity: 2pc left'),
                leading: Image(
                    image: AssetImage(
                        'assets/images/campbells_steak_and_potato_soup.jpeg')),
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ],
        ));
  }
}
