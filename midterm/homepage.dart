body: Material(
      child: Center(child: Column(
        children: <Widget>[
           Container(
            height: 75.0, width: 300.0, alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 50.0),
            decoration: BoxDecoration(color: Color.fromARGB(255, 255, 187, 234),
              borderRadius: BorderRadius.circular(45.0)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Dreamer',
              style: TextStyle(fontFamily: 'Playfair', fontSize: 20.0, fontWeight: FontWeight.normal, color:Color.fromARGB(255, 198, 67, 157))),
              IconButton(onPressed: () {}, icon: Icon(Icons.star), color:Color.fromARGB(255, 198, 67, 157))
            ]),
          ),
          Container(
            height: 75.0, width: 300.0, alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(color: Color.fromARGB(255, 255, 187, 234),
              borderRadius: BorderRadius.circular(45.0)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                Text('Developer',
                style: TextStyle(fontFamily: 'Playfair', fontSize: 20.0, fontWeight: FontWeight.normal, color:Color.fromARGB(255, 198, 67, 157))),
                IconButton(onPressed: () {}, icon: Icon(Icons.settings), color:Color.fromARGB(255, 198, 67, 157))
            ],
          )),
          Container(
            height: 75.0, width: 300.0, alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(color: Color.fromARGB(255, 255, 187, 234),
              borderRadius: BorderRadius.circular(45.0)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                Text('Designer',
                style: TextStyle(fontFamily: 'Playfair', fontSize: 20.0, fontWeight: FontWeight.normal, color:Color.fromARGB(255, 198, 67, 157))),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit), color:Color.fromARGB(255, 198, 67, 157))
              ]))
          ])  
      )
    ),
