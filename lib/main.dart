// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

// class RandomWords extends StatefulWidget {
//   const RandomWords({Key? key}) : super(key: key);

//   @override
//   _RandomWordsState createState() => _RandomWordsState();
// }

// class _RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _biggerFont = TextStyle(fontSize: 18.0);

//   Widget _buildSuggestion() {
//     return ListView.builder(
//       padding: EdgeInsets.all(16.0),
//       itemBuilder: (context, i) {
//         if (i.isOdd) return Divider();
//         final index = i ~/ 2;
//         if (index >= _suggestions.length) {
//           _suggestions.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestions[index]);
//       },
//     );
//   }

//   Widget _buildRow(WordPair pair) {
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _buildSuggestion();
//   }
// }

class LayoutFlutter extends StatefulWidget {
  const LayoutFlutter({Key? key}) : super(key: key);

  @override
  LayoutFlutterState createState() => LayoutFlutterState();
}

class LayoutFlutterState extends State<LayoutFlutter> {
  String? dropdownValue = 'Facebook';
  bool _isFavorited = true;
  int _favoriteCount = 40;
  bool _isChecked = false;
  bool _isWantBook = true;
  var _prefferedPriceValue = RangeValues(0.1, 0.9);
  bool _isReadMore = true;

  final GlobalKey<FormState> _formKey = GlobalKey();

  _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
      } else {
        _favoriteCount += 1;
      }
      _isFavorited = !_isFavorited;
    });
  }

  _favoriteButton() {
    return GestureDetector(
      child: Row(
        children: [
          Icon(
            _isFavorited ? Icons.star : Icons.star_outline,
            size: 30,
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            '$_favoriteCount',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      onTap: _toggleFavorite,
    );
  }

  _toggleIsWantBook() {
    setState(() {
      _isWantBook = !_isWantBook;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Image.asset('lib/assets/images/flower.jpg'),
          //     Image.asset('lib/assets/images/flower.jpg'),
          //     Image.asset('lib/assets/images/flower.jpg'),
          //   ],
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Image.asset('lib/assets/images/flower.jpg'),
          //     Image.asset('lib/assets/images/flower.jpg'),
          //     Image.asset('lib/assets/images/flower.jpg'),
          //   ],
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Expanded(
          //       child: Image.asset('lib/assets/images/flower.jpg'),
          //     ),
          //     Expanded(
          //       child: Image.asset('lib/assets/images/flower.jpg'),
          //     ),
          //     Expanded(
          //       child: Image.asset('lib/assets/images/flower.jpg'),
          //     ),
          //   ],
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Expanded(
          //       child: Image.asset('lib/assets/images/flower.jpg'),
          //     ),
          //     Expanded(
          //       flex: 2,
          //       child: Image.asset('lib/assets/images/flower.jpg'),
          //     ),
          //     Expanded(
          //       child: Image.asset('lib/assets/images/flower.jpg'),
          //     ),
          //   ],
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     Icon(Icons.star),
          //     Icon(Icons.star),
          //     Icon(Icons.star),
          //     Icon(Icons.star),
          //     Icon(Icons.star),
          //   ],
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     color: Colors.black26,
          //   ),
          //   child: Column(
          //     children: [
          //       Row(
          //         children: [
          //           Expanded(
          //             child: Container(
          //               decoration: BoxDecoration(
          //                 border: Border.all(width: 10, color: Colors.black),
          //                 borderRadius: BorderRadius.circular(5),
          //               ),
          //               child: Image.asset('lib/assets/images/flower.jpg'),
          //             ),
          //           ),
          //           Expanded(
          //             child: Container(
          //               decoration: BoxDecoration(
          //                 border: Border.all(width: 10, color: Colors.black),
          //                 borderRadius: BorderRadius.circular(5),
          //               ),
          //               child: Image.asset('lib/assets/images/flower.jpg'),
          //             ),
          //           ),
          //         ],
          //       ),
          //       Row(
          //         children: [
          //           Expanded(
          //             child: Container(
          //               decoration: BoxDecoration(
          //                 border: Border.all(width: 10, color: Colors.black),
          //                 borderRadius: BorderRadius.circular(5),
          //               ),
          //               child: Image.asset('lib/assets/images/flower.jpg'),
          //             ),
          //           ),
          //           Expanded(
          //             child: Container(
          //               decoration: BoxDecoration(
          //                 border: Border.all(width: 10, color: Colors.black),
          //                 borderRadius: BorderRadius.circular(5),
          //               ),
          //               child: Image.asset('lib/assets/images/flower.jpg'),
          //             ),
          //           ),
          //         ],
          //       ),
          //       Row(
          //         children: [
          //           Expanded(
          //             child: Container(
          //               decoration: BoxDecoration(
          //                 border: Border.all(width: 10, color: Colors.black),
          //                 borderRadius: BorderRadius.circular(5),
          //               ),
          //               child: Image.asset('lib/assets/images/flower.jpg'),
          //             ),
          //           ),
          //           Expanded(
          //             child: Container(
          //               decoration: BoxDecoration(
          //                 border: Border.all(width: 10, color: Colors.black),
          //                 borderRadius: BorderRadius.circular(5),
          //               ),
          //               child: Image.asset('lib/assets/images/flower.jpg'),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          // Expanded(
          //     child: SizedBox(
          //   height: 400,
          //   child: GridView.extent(
          //       scrollDirection: Axis.vertical,
          //       shrinkWrap: true,
          //       maxCrossAxisExtent: 150,
          //       padding: const EdgeInsets.all(4),
          //       mainAxisSpacing: 4,
          //       crossAxisSpacing: 4,
          //       children: List.generate(
          //           30,
          //           (i) => Container(
          //               child: Image.asset('lib/assets/images/flower.jpg')))),
          // )),
          // SizedBox(
          //   height: 20,
          // ),
          // Expanded(
          //   child: SizedBox(
          //     height: 400,
          //     child: ListView(
          //       children: [
          //         ListTile(
          //           title: Text('Title!'),
          //           subtitle: Text('This is a subtitle'),
          //           leading: Icon(Icons.star_border_outlined),
          //         ),
          //         ListTile(
          //           title: Text('Title!'),
          //           subtitle: Text('This is a subtitle'),
          //           leading: Icon(Icons.star_border_outlined),
          //         ),
          //         ListTile(
          //           title: Text('Title!'),
          //           subtitle: Text('This is a subtitle'),
          //           leading: Icon(Icons.star_border_outlined),
          //         ),
          //         ListTile(
          //           title: Text('Title!'),
          //           subtitle: Text('This is a subtitle'),
          //           leading: Icon(Icons.star_border_outlined),
          //         ),
          //         ListTile(
          //           title: Text('Title!'),
          //           subtitle: Text('This is a subtitle'),
          //           leading: Icon(Icons.star_border_outlined),
          //         ),
          //         ListTile(
          //           title: Text('Title!'),
          //           subtitle: Text('This is a subtitle'),
          //           leading: Icon(Icons.star_border_outlined),
          //         ),
          //         ListTile(
          //           title: Text('Title!'),
          //           subtitle: Text('This is a subtitle'),
          //           leading: Icon(Icons.star_border_outlined),
          //         ),
          //         ListTile(
          //           title: Text('Title!'),
          //           subtitle: Text('This is a subtitle'),
          //           leading: Icon(Icons.star_border_outlined),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Stack(
          //   children: [
          //     Image.asset('lib/assets/images/flower.jpg'),
          //     Padding(
          //       padding: EdgeInsets.all(10),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Icon(
          //             Icons.arrow_back,
          //             size: 30,
          //             color: Colors.white,
          //           ),
          //           Row(
          //             children: [
          //               Icon(
          //                 Icons.star_border_outlined,
          //                 size: 30,
          //                 color: Colors.white,
          //               ),
          //               SizedBox(
          //                 width: 10,
          //               ),
          //               Icon(
          //                 Icons.share,
          //                 size: 30,
          //                 color: Colors.white,
          //               ),
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          // Expanded(
          //   child: Column(
          //     children: [
          //       CustomScrollView(
          //         shrinkWrap: true,
          //         physics: const BouncingScrollPhysics(
          //             parent: AlwaysScrollableScrollPhysics()),
          //         slivers: <Widget>[
          //           SliverAppBar(
          //             stretch: true,
          //             onStretchTrigger: () {
          //               // Function callback for stretch
          //               return Future<void>.value();
          //             },
          //             expandedHeight: 300.0,
          //             flexibleSpace: FlexibleSpaceBar(
          //               stretchModes: const <StretchMode>[
          //                 StretchMode.zoomBackground,
          //                 StretchMode.blurBackground,
          //                 StretchMode.fadeTitle,
          //               ],
          //               centerTitle: true,
          //               title: const Text('Red Flower'),
          //               background: Stack(
          //                 fit: StackFit.expand,
          //                 children: <Widget>[
          //                   Image.asset(
          //                     'lib/assets/images/flower.jpg',
          //                     fit: BoxFit.cover,
          //                   ),
          //                   const DecoratedBox(
          //                     decoration: BoxDecoration(
          //                       gradient: LinearGradient(
          //                         begin: Alignment(0.0, 0.5),
          //                         end: Alignment.center,
          //                         colors: <Color>[
          //                           Color(0x60000000),
          //                           Color(0x00000000),
          //                         ],
          //                       ),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 210,
          //   child: Card(
          //     child: Column(
          //       children: [
          //         ListTile(
          //           title: Text('Griya Cileungsi 1'),
          //           subtitle: Text('Jl. Raya Mampir, Cileungsi, Bogor'),
          //           leading: Icon(Icons.home),
          //         ),
          //         Divider(),
          //         ListTile(
          //           title: Text('Wahyu Amirulloh'),
          //           leading: Icon(Icons.person),
          //           trailing: DropdownButton(
          //             value: dropdownValue,
          //             onChanged: (String? newValue) {
          //               setState(() {
          //                 dropdownValue = newValue;
          //               });
          //             },
          //             items: ['Facebook', 'Twitter', 'Instagram'].map((value) {
          //               return DropdownMenuItem(
          //                 value: value,
          //                 child: Text('$value'),
          //               );
          //             }).toList(),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Image.asset('lib/assets/images/flower.jpg'),
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          //   child: Column(
          //     children: [
          //       Row(
          //         children: [
          //           Expanded(
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   'Taman Buah Mekarsari',
          //                   style: TextStyle(fontWeight: FontWeight.bold),
          //                 ),
          //                 Text('Cileungsi, Bogor, Jawa Barat'),
          //               ],
          //             ),
          //           ),
          //           _favoriteButton(),
          //         ],
          //       ),
          //       SizedBox(height: 20),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceAround,
          //         children: [
          //           Column(
          //             children: [
          //               Icon(
          //                 Icons.directions,
          //                 size: 30,
          //               ),
          //               SizedBox(
          //                 height: 5,
          //               ),
          //               Text('Directions'),
          //             ],
          //           ),
          //           Column(
          //             children: [
          //               Icon(
          //                 Icons.call,
          //                 size: 30,
          //               ),
          //               SizedBox(
          //                 height: 5,
          //               ),
          //               Text('Call'),
          //             ],
          //           ),
          //           Column(
          //             children: [
          //               Icon(
          //                 Icons.share,
          //                 size: 30,
          //               ),
          //               SizedBox(
          //                 height: 5,
          //               ),
          //               Text('Share'),
          //             ],
          //           ),
          //         ],
          //       ),
          //       SizedBox(height: 20),
          //       TweenAnimationBuilder(
          //         tween: Tween<double>(begin: 0, end: _isReadMore ? 400 : 0),
          //         duration: Duration(seconds: 1),
          //         builder: (BuildContext context, double value, Widget? child) {
          //           return ConstrainedBox(
          //             constraints: BoxConstraints(maxHeight: value),
          //             child: Text(
          //                 'Destinasi wisata yang terletak di Cileungsi, Bogor, Jawa Barat itu dikabarkan akan ditutup selamanya pada akhir tahun 2020. Taman Buah Mekarsari ternyata memang hanya bukasampai dengan 31 Desember 2020. Mereka kemudian mengumumkantutup untuk sementara mulai 1 Januari 2021 sampai batas waktu yang belum ditentukan. Destinasi wisata yang terletak di Cileungsi, Bogor, Jawa Barat itu dikabarkan akan ditutup selamanya pada akhir tahun 2020. Taman Buah Mekarsari ternyata memang hanya bukasampai dengan 31 Desember 2020. Mereka kemudian mengumumkantutup untuk sementara mulai 1 Januari 2021 sampai batas waktu yang belum ditentukan. Destinasi wisata yang terletak di Cileungsi, Bogor, Jawa Barat itu dikabarkan akan ditutup selamanya pada akhir tahun 2020. Taman Buah Mekarsari ternyata memang hanya bukasampai dengan 31 Desember 2020. Mereka kemudian mengumumkantutup untuk sementara mulai 1 Januari 2021 sampai batas waktu yang belum ditentukan.'),
          //           );
          //         },
          //       ),
          //       TextButton(
          //           onPressed: () {
          //             setState(() {
          //               _isReadMore = !_isReadMore;
          //             });
          //           },
          //           child: _isReadMore
          //               ? Text('Sembunyikan')
          //               : Text('Lihat Selengkapnya')),
          //       _isWantBook
          //           ? Column(
          //               children: [
          //                 Padding(
          //                   padding: EdgeInsets.symmetric(vertical: 10),
          //                   child: Text(
          //                     'Pesan Tiket Online',
          //                     style: TextStyle(
          //                       fontSize: 20,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                 ),
          //                 Form(
          //                   key: _formKey,
          //                   child: Column(
          //                     children: [
          //                       TextFormField(
          //                         decoration: InputDecoration(
          //                             hintText: 'Enter your email'),
          //                         validator: (String? value) {
          //                           if (value == null ||
          //                               value.contains('@') == false) {
          //                             return 'Please enter valid email';
          //                           }
          //                           return null;
          //                         },
          //                       ),
          //                       RangeSlider(
          //                         values: _prefferedPriceValue,
          //                         onChanged: (RangeValues values) {
          //                           setState(() {
          //                             _prefferedPriceValue = values;
          //                           });
          //                         },
          //                         divisions: 10,
          //                       ),
          //                       Row(
          //                         mainAxisAlignment:
          //                             MainAxisAlignment.spaceBetween,
          //                         children: [
          //                           Text(
          //                               'Rp${(_prefferedPriceValue.start * 10000).toStringAsFixed(0)}'),
          //                           Text(
          //                               'Rp${(_prefferedPriceValue.end * 10000).toStringAsFixed(0)}'),
          //                         ],
          //                       ),
          //                       Row(
          //                         children: [
          //                           Checkbox(
          //                             value: _isChecked,
          //                             onChanged: (bool? value) {
          //                               setState(() {
          //                                 _isChecked = value!;
          //                               });
          //                             },
          //                           ),
          //                           Expanded(
          //                             child: Text(
          //                                 'Saya menyetujui syarat dan ketentuan yang berlaku'),
          //                           ),
          //                           IconButton(
          //                             onPressed: () {},
          //                             icon: Icon(Icons.book),
          //                             tooltip:
          //                                 'Baca selengkapnya panduan kunjungan di masa pandemi COVID-19 dan hubungi petugas tempat wisata',
          //                           ),
          //                         ],
          //                       ),
          //                       Container(
          //                         width: double.infinity,
          //                         child: ElevatedButton(
          //                           onPressed: () {
          //                             if (_formKey.currentState!.validate()) {
          //                               //
          //                             }
          //                           },
          //                           child: Text('Pesan Tiket'),
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 )
          //               ],
          //             )
          //           : Text(''),
          //     ],
          //   ),
          // ),
          // LayoutBuilder(builder: (context, constraints) {
          //   if (constraints.maxWidth < 400) {
          //     return Text('Upgrade to bigger screen!');
          //   }
          //   return SizedBox();
          // }),
          // Container(
          //   color: Colors.blue,
          //   alignment: Alignment.center,
          //   width: double.infinity,
          //   height: 200,
          //   child: AspectRatio(
          //     aspectRatio: 18 / 9,
          //     child: Container(
          //       color: Colors.green,
          //     ),
          //   ),
          // ),
          // Container(
          //   height: 400,
          //   width: 400,
          //   child: FittedBox(
          //     child: Image.asset('lib/assets/images/flower.jpg'),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          // Container(
          //   alignment: Alignment.center,
          //   child: FractionallySizedBox(
          //     widthFactor: 0.9,
          //     child: ElevatedButton(
          //       onPressed: () {},
          //       child: Text('Press Here'),
          //     ),
          //   ),
          // ),
          // Container(
          //   child: MediaQuery.of(context).size < Size.fromWidth(600)
          //       ? Text('Small')
          //       : Text('Big'),
          // ),
          // Container(
          //   child: Align(
          //     alignment: Alignment.bottomRight,
          //   ),
          // ),
          // ConstrainedBox(
          //   constraints: BoxConstraints(minHeight: 200),
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     child: Text('Tap Me!'),
          //   ),
          // ),
          // ConstrainedBox(
          //   constraints: BoxConstraints(maxWidth: 20),
          //   child: Text('Ohayou Gozaimasu'),
          // ),
          // Container(
          //   color: Colors.blue,
          //   height: 100,
          //   width: double.infinity,
          //   child: Row(
          //     children: [
          //       Flexible(
          //         child: Container(
          //           color: Colors.blue,
          //         ),
          //       ),
          //       Flexible(
          //         child: Container(
          //           color: Colors.blue,
          //         ),
          //       ),
          //       Flexible(
          //         child: Container(
          //           color: Colors.blue,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 400,
          //   child: ListView(
          //     children: [
          //       ListTile(
          //         title: Text('Wahyu Amirulloh'),
          //         leading: Icon(Icons.person),
          //         trailing: DropdownButton(
          //           value: dropdownValue,
          //           onChanged: (String? newValue) {
          //             setState(() {
          //               dropdownValue = newValue;
          //             });
          //           },
          //           items: ['Facebook', 'Twitter', 'Instagram'].map((value) {
          //             return DropdownMenuItem(
          //               value: value,
          //               child: Text('$value'),
          //             );
          //           }).toList(),
          //         ),
          //       ),
          //       ListTile(
          //         title: Text('Wahyu Amirulloh'),
          //         leading: Icon(Icons.person),
          //         trailing: DropdownButton(
          //           value: dropdownValue,
          //           onChanged: (String? newValue) {
          //             setState(() {
          //               dropdownValue = newValue;
          //             });
          //           },
          //           items: ['Facebook', 'Twitter', 'Instagram'].map((value) {
          //             return DropdownMenuItem(
          //               value: value,
          //               child: Text('$value'),
          //             );
          //           }).toList(),
          //         ),
          //       ),
          //       ListTile(
          //         title: Text('Wahyu Amirulloh'),
          //         leading: Icon(Icons.person),
          //         trailing: DropdownButton(
          //           value: dropdownValue,
          //           onChanged: (String? newValue) {
          //             setState(() {
          //               dropdownValue = newValue;
          //             });
          //           },
          //           items: ['Facebook', 'Twitter', 'Instagram'].map((value) {
          //             return DropdownMenuItem(
          //               value: value,
          //               child: Text('$value'),
          //             );
          //           }).toList(),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 400,
          //   child: GridView.count(
          //     crossAxisCount: 3,
          //     children: [
          //       FittedBox(
          //         child: Image.asset('lib/assets/images/flower.jpg'),
          //         fit: BoxFit.cover,
          //       ),
          //       FittedBox(
          //         child: Image.asset('lib/assets/images/flower.jpg'),
          //         fit: BoxFit.cover,
          //       ),
          //       FittedBox(
          //         child: Image.asset('lib/assets/images/flower.jpg'),
          //         fit: BoxFit.cover,
          //       ),
          //       FittedBox(
          //         child: Image.asset('lib/assets/images/flower.jpg'),
          //         fit: BoxFit.cover,
          //       ),
          //       FittedBox(
          //         child: Image.asset('lib/assets/images/flower.jpg'),
          //         fit: BoxFit.cover,
          //       ),
          //       FittedBox(
          //         child: Image.asset('lib/assets/images/flower.jpg'),
          //         fit: BoxFit.cover,
          //       ),
          //     ],
          //   ),
          // ),
          // Expanded(
          //   child: Stack(
          //     children: [
          //       Container(
          //         height: 400,
          //         width: 400,
          //         color: Colors.blue,
          //       ),
          //       Container(
          //         height: 300,
          //         width: 300,
          //         color: Colors.red,
          //       ),
          //       Container(
          //         height: 200,
          //         width: 200,
          //         color: Colors.yellow,
          //       ),
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.green,
          //       ),
          //     ],
          //   ),
          // ),
          // Table(
          //   children: [
          //     TableRow(
          //       children: [
          //         Container(
          //           height: 100,
          //           width: 100,
          //           color: Colors.green,
          //         ),
          //         Container(
          //           height: 50,
          //           width: 100,
          //           color: Colors.red,
          //         ),
          //         Container(
          //           height: 100,
          //           width: 100,
          //           color: Colors.blue,
          //         ),
          //       ],
          //     ),
          //     TableRow(
          //       children: [
          //         Container(
          //           height: 75,
          //           width: 100,
          //           color: Colors.blue,
          //         ),
          //         Container(
          //           height: 100,
          //           width: 100,
          //           color: Colors.green,
          //         ),
          //         Container(
          //           height: 50,
          //           width: 100,
          //           color: Colors.red,
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // Wrap(
          //   children: [
          //     Container(
          //       height: 50,
          //       width: 100,
          //       color: Colors.red,
          //     ),
          //     Container(
          //       height: 50,
          //       width: 100,
          //       color: Colors.green,
          //     ),
          //     Container(
          //       height: 50,
          //       width: 100,
          //       color: Colors.blue,
          //     ),
          //     Container(
          //       height: 50,
          //       width: 100,
          //       color: Colors.yellow,
          //     ),
          //     Container(
          //       height: 50,
          //       width: 100,
          //       color: Colors.orange,
          //     ),
          //     Container(
          //       height: 50,
          //       width: 100,
          //       color: Colors.purple,
          //     ),
          //     Container(
          //       height: 50,
          //       width: 100,
          //       color: Colors.grey,
          //     ),
          //     Container(
          //       height: 50,
          //       width: 100,
          //       color: Colors.red,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('#1 - Overview App'),
        ),
        body: Center(
          child: LayoutFlutter(),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.airplane_ticket),
          onPressed: () {
            // ..
          },
        ),
      ),
    );
  }
}
