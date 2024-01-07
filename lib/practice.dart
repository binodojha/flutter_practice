// Text Button
//       body: const TextButton(
//         onPressed: null,
//         style: ButtonStyle(),
//         onLongPress: null,
//         child: Text("Click Here"),
//       ),

//       Elevated Button
//       body: Container(
//           child: ElevatedButton(
//         child: Text("Click Me"),
//         onPressed: () {
//           print("Button Clicked");
//         },
//       )),

//       Container, Center and Text Widget
//       body: Center(
//         child: Container(
//           color: const Color.fromARGB(255, 161, 109, 170),
//           height: 300,
//           width: 300,
//           child: Center(
//             child: Image.asset('assets/images/favicon.png'),
//           ),
//         ),
//       ),

//       Row and column
//       body: Container(
//         decoration:
//             BoxDecoration(border: Border.all(width: 10, color: Colors.red)),
//         child:
//           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Container(
//             width: 50,
//             decoration: BoxDecoration(
//                 border: Border.all(width: 3, color: Colors.green)),
//             child: Column(
//               children: [
//                 Image.asset('assets/images/favicon.png'),
//                 const Text("Hello"),
//               ],
//             ),
//           ),
//           Column(
//             children: [
//               Image.asset('assets/images/favicon.png'),
//               const Text("Hello")
//             ],
//           )
//         ]),
//       ),

//       INKWELL Widget
//       body: InkWell(
//         onTap: () {
//           print("Tapped");
//         },
//         onDoubleTap: () {
//           print("Double Tapped");
//         },
//         onLongPress: () {
//           print("Long Pressed");
//         },
//         child: Container(
//           height: 200,
//           width: 200,
//           color: Colors.blue[100],
//           child: const Center(
//             child: Text(
//               "Click Me",
//               style: TextStyle(fontSize: 30, color: Colors.red),
//             ),
//           ),
//         ),
//       ),

//       ScrollView Widget
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Padding(
//                 padding: EdgeInsets.all(10),
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Container(
//                         height: 200,
//                         width: 200,
//                         color: Colors.red,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Container(
//                         height: 200,
//                         width: 200,
//                         color: Colors.black,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Container(
//                         height: 200,
//                         width: 200,
//                         color: Colors.pink,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Container(
//                         height: 200,
//                         width: 200,
//                         color: Colors.brown,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: Container(
//                 height: 200,
//                 // width: 200,
//                 color: Colors.blue,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: Container(
//                 height: 200,
//                 // width: 200,
//                 color: Colors.green,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: Container(
//                 height: 200,
//                 // width: 200,
//                 color: Colors.orange,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: Container(
//                 height: 200,
//                 // width: 200,
//                 color: Colors.purple,
//               ),
//             ),
//           ],
//         ),
//       ),

//       ListView Widget
//       body: ListView(
//         scrollDirection: Axis.horizontal,
//         children: [
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   height: 700,
//                   width: 100,
//                   color: const Color.fromARGB(255, 231, 150, 145),
//                   child: Text("Hello"),
//                 ),
//               ],
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(10),
//             child: Text(
//               "Hello World",
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(10),
//             child: Text(
//               "Hello World",
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(10),
//             child: Text(
//               "Hello World",
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(10),
//             child: Text(
//               "Hello World",
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//         ],
//       ),

//       ListView.Builder
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           // return const Text("Binod",
//           //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
//           return Text(arrNames[index],
//               style:
//                   const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
//         },
//         itemCount: arrNames.length,
//         itemExtent: 200,
//         scrollDirection: Axis.horizontal,
//       ),

//       ListView.Seperated
//       body: ListView.separated(
//         itemBuilder: (context, index) {
//           // return const Text("Binod",
//           //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
//           return Text(arrNames[index],
//               style:
//                   const TextStyle(fontSize: 20, fontWeight: FontWeight.bold));
//         },
//         itemCount: arrNames.length,
//         separatorBuilder: (context, index) {
//           return const Divider(
//             height: 100,
//             thickness: 4,
//           );
//         },
//       ),

//       Box Decoration
//       body: Center(
//         child: Container(
//           height: 150,
//           width: 150,
//           decoration: BoxDecoration(
//             color: Colors.blue,
//             border: Border.all(
//               color: Colors.red,
//               width: 3,
//             ),
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: [
//               BoxShadow(
//                 blurRadius: 10,
//                 color: Colors.green,
//                 spreadRadius: 7,
//               )
//             ],
//           ),
//         ),
//       ),

//       Expanded Widget
//       It will applied in mainAxis of column and row
//       body: Row(
//         children: [
//           Expanded(
//             child: Container(
//               height: 100,
//               width: 100,
//               color: Colors.red,
//             ),
//           ),
//           Expanded(
//             child: Container(
//               height: 100,
//               width: 100,
//               color: Colors.blue,
//             ),
//           ),
//         ],
//       ),

//       ListTile in ListView and CircleAvatar Widget + Card Widget
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           return Card(
//             elevation: 7,
//             color: Colors.lightBlue[50],
//             shadowColor: Colors.yellow[100],
//             child: ListTile(
//               leading: const CircleAvatar(
//                 backgroundImage: AssetImage('assets/images/boy.png'),
//                 backgroundColor: Colors.green,
//                 radius: 30,
//               ),
//               title: Text(
//                 arrNames[index],
//                 style: const TextStyle(
//                   fontFamily: 'RubikScribbl',
//                   color: Colors.red,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               subtitle: const Text("Profile"),
//               trailing: const Icon(Icons.add_a_photo),
//             ),
//           );
//         },
//       itemCount: arrNames.length,
//       separatorBuilder: (context, index) {
//         return const Divider(
//           height: 0,
//           // thickness: 0,
//         );
//       },
//       ),

//        ld
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             width: 300,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   "Email:",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 TextField(
//                   keyboardType: TextInputType.emailAddress,
//                   decoration: InputDecoration(
//                     hintText: "Enter your email",
//                     prefixIcon: const Icon(
//                       Icons.email,
//                       color: Colors.blue,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(11),
//                       borderSide: const BorderSide(
//                         width: 2,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const Text(
//                   "Password:",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     hintText: "Enter your password",
//                     prefixIcon: const Icon(
//                       Icons.key,
//                       color: Colors.blue,
//                     ),
//                     suffixIcon: IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.remove_red_eye,
//                         color: Colors.blue,
//                       ),
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(11),
//                       borderSide: const BorderSide(
//                         width: 4,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const Text(
//                   "Mobile Number:",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 TextField(
//                   keyboardType: TextInputType.phone,
//                   decoration: InputDecoration(
//                     hintText: "Enter your number",
//                     prefixIcon: const Icon(
//                       Icons.phone,
//                       color: Colors.blue,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(11),
//                       borderSide: const BorderSide(
//                         width: 4,
//                       ),
//                     ),
//                   ),
//                 ),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.all(20),
//                     backgroundColor: Colors.lightGreen,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                   ),
//                   onPressed: () {},
//                   child: const Text(
//                     "Login",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),

//       DateTime and DateFormat
//       body: Text(
//         "${DateFormat('d MMMM y').format(DateTime.now())}",
//         style: const TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 20,
//         ),
//       ),

//       GridView Widget
//       body: GridView.count(
//         crossAxisCount: 3,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//         children: [
//           Container(
//             color: Colors.red,
//           ),
//           Container(
//             color: Colors.green,
//           ),
//           Container(
//             color: Colors.yellow,
//           ),
//           Container(
//             color: Colors.purpleAccent,
//           ),
//           Container(
//             color: Colors.black,
//           ),
//         ],
//       ),

//       GridView.extent
//       body: GridView.extent(
//         maxCrossAxisExtent: 100,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//         children: [
//           Container(
//             color: Colors.red,
//           ),
//           Container(
//             color: Colors.green,
//           ),
//           Container(
//             color: Colors.yellow,
//           ),
//           Container(
//             color: Colors.purpleAccent,
//           ),
//           Container(
//             color: Colors.black,
//           ),
//         ],
//       ),

//       GridView.builder
//       body: GridView.builder(
//         itemBuilder: (context, index) {
//           return Container(
//             // child: Text(arrNames[index]),
//             color: Colors.lightBlue,
//           );
//         },
//         itemCount: arrNames.length,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//         ),
//       ),

//       Stack Widget
//       body: Container(
//         height: 500,
//         width: 400,
//         child: Stack(
//           children: [
//             Container(
//               height: 175,
//               width: 175,
//               color: Colors.lightGreen,
//             ),
//             Positioned(
//               top: 50,
//               left: 50,
//               child: Container(
//                 height: 150,
//                 width: 150,
//                 color: Colors.blue,
//               ),
//             ),
//             Positioned(
//               top: 120,
//               left: 120,
//               child: Container(
//                 height: 100,
//                 width: 100,
//                 color: Colors.orange,
//               ),
//             ),
//           ],
//         ),
//       ),

//       Wrap Widget
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         child: Wrap(
//           direction: Axis.horizontal,
//           spacing: 10,
//           runSpacing: 10,
//           alignment: WrapAlignment.center,
//           children: [
//             Container(
//               color: Colors.red,
//               height: 100,
//               width: 100,
//             ),
//             Container(
//               color: Colors.blue,
//               height: 100,
//               width: 100,
//             ),
//             Container(
//               color: Colors.green,
//               height: 100,
//               width: 100,
//             ),
//             Container(
//               color: Colors.purple,
//               height: 100,
//               width: 100,
//             ),
//             Container(
//               color: Colors.grey,
//               height: 100,
//               width: 100,
//             ),
//           ],
//         ),
//       ),

//       Rich Text Widget
//       body: RichText(
//         text: const TextSpan(
//           style: TextStyle(
//             color: Colors.grey,
//             fontSize: 20,
//           ),
//           children: [
//             TextSpan(text: "Hello"),
//             TextSpan(
//               text: " World!",
//               style: TextStyle(
//                 fontSize: 30,
//                 color: Colors.red,
//               ),
//             ),
//           ],
//         ),
//       ),

//       Icon and AwesomeIcon
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               Icons.help,
//               size: 40,
//               color: Colors.purple[200],
//             ),
//             const SizedBox(
//               width: 20,
//             ),
//             const FaIcon(
//               FontAwesomeIcons.boxesPacking,
//               color: Colors.red,
//               size: 40,
//             ),
//           ],
//         ),
//       ),