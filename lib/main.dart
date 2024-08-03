import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(AnimalSoundsApp());
}

class AnimalSoundsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal Sounds',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimalListScreen(),
    );
  }
}

class AnimalListScreen extends StatelessWidget {

  final List<Animal> animals = [
  Animal(name: 'Cat', ),
  Animal(name: 'Dog', ),
  Animal(name: 'Lion', ),
  Animal(name: 'Elephant', ),
  Animal(name: 'Tiger', ),
  Animal(name: 'Bear', ),
  Animal(name: 'Giraffe',),
  Animal(name: 'Horse', ),
  Animal(name: 'Zebra', ),
  Animal(name: 'Monkey',),
  Animal(name: 'Panda', ),
  Animal(name: 'Kangaroo', ),
  Animal(name: 'Llama', ),
  Animal(name: 'Penguin',),
  Animal(name: 'Ostrich',),
  Animal(name: 'Dolphin', ),
  Animal(name: 'Shark', ),
  Animal(name: 'Whale',),
  Animal(name: 'Octopus',),
  Animal(name: 'Sloth', ),
  Animal(name: 'Flamingo', ),
  Animal(name: 'Koala', ),
  Animal(name: 'Rabbit', ),
  Animal(name: 'Fox',),
  Animal(name: 'Owl', ),
  // Animal(name: 'Polar Bear', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Lynx', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Seal', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Deer', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Moose', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Eagle', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Parrot', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Pelican', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Rooster', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Chicken', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Crow', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Hawk', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Sparrow', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Swan', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Turkey', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Hummingbird', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Duck', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Goose', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Pigeon', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Blue Jay', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Cardinal', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Goldfinch', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Woodpecker', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Puffin', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Toucan', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Magpie', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Kiwi Bird', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Emu', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Cockatoo', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Canary', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Cuckoo', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Oriole', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Robin', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Stork', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Vulture', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Blackbird', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Raven', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Albatross', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Sparrowhawk', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Osprey', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Finch', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Wren', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Kingfisher', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Bald Eagle', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Great Horned Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Barn Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Snowy Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Screech Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Bubo Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Long-Eared Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Short-Eared Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Burrowing Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Spotted Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Barred Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Tawny Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Eurasian Eagle-Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Northern Saw-Whet Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Eastern Screech Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Western Screech Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Elf Owl', imageUrl: 'https://placeimg.com/200/300/animals'),
  // Animal(name: 'Pygmy Owl', imageUrl: 'https://placeimg.com/200/animals'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animal Sounds'),
      ),
      body: ListView.builder(
        itemCount: animals.length,
        itemBuilder: (context, index) {
          return AnimalTile(
            animal: animals[index],
          );
        },
      ),
    );
  }
}

class AnimalTile extends StatelessWidget {
  final Animal animal;
  final FlutterTts flutterTts = FlutterTts();

  AnimalTile({required this.animal});

  void speakAnimalName() async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.speak(animal.name);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(animal.name),
      onTap: () {
        speakAnimalName();
      },
    );
  }
}

class Animal {
  final String name;
  // final String imageUrl;

  Animal({required this.name,
    // required this.imageUrl
  });
}
