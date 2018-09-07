import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  TextEditingController _mobilecontroller = new TextEditingController();
  TextEditingController _emailcontroller = new TextEditingController();
  TextEditingController _namecontroller = new TextEditingController();
  TextEditingController _flatcontroller = new TextEditingController();
  
  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _mobilecontroller.value=new TextEditingValue( text: "9998998888");
      _emailcontroller.value=new TextEditingValue( text: "abc@gmail.com");
      _namecontroller.value=new TextEditingValue( text: "Ashish aggarwal");
      _flatcontroller.value=new TextEditingValue( text: "F999");
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
      ),
      // floatingActionButton: new IconButton(
      //    tooltip: "Add family member",
      //   icon: Icon(Icons.add,),
      //   onPressed: (){
      //     print("add family member");
      //   },
      // ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
            child: new Column(
             children: <Widget>[
              new Stack(
              children: <Widget>[
                new GestureDetector(
                child: new CircleAvatar(
                backgroundColor: Colors.blue,
                minRadius: 50.0,
                maxRadius: 80.0,
                child: new Image.network("https://i1.wp.com/www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png?resize=256%2C256&quality=100&ssl=1"),
          ),
          onTap: (){
                print("image picker willl be called now");
          },
          ),
          new Padding(
            padding: const EdgeInsets.fromLTRB(120.0, 100.0, 0.0, 0.0),
            child: new IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: (){},
          ),
          )
              ],
              ),
          // new Padding( padding: EdgeInsets.only(top: 10.0), ),
          new Center(
            // child: new Text("Ashish Aggarwal",style: new TextStyle(color: Colors.white,fontSize: 20.0),),
            child: Padding(
              padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              child: new TextField(
                decoration: new InputDecoration(
                  labelText: "Name",
                  labelStyle: new TextStyle(color: Colors.white,fontSize: 20.0)
                ),
                controller: _namecontroller,
                style: new TextStyle(color: Colors.white,fontSize: 20.0),
                cursorColor: Colors.white,
              ),
            ),
          ),
          new Padding( padding: EdgeInsets.only(top: 10.0), ),
             ],
            ),
          color: Colors.grey,
          ),
          new Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: new Column(
                children: <Widget>[
                  new TextField(
                   decoration: new InputDecoration(
                     labelText: "Mobile no."
                   ),
                   controller: _mobilecontroller, 
                  ),
                  new Padding( padding: EdgeInsets.only(top: 10.0), ),
                  new TextField(
                   decoration: new InputDecoration(
                     labelText: "Email"
                   ),
                   controller: _emailcontroller, 
                  ),
                  new Padding( padding: EdgeInsets.only(top: 10.0), ),
                  new TextField(
                   decoration: new InputDecoration(
                     labelText: "Flat No."
                   ),
                   controller: _flatcontroller, 
                  ),
                  new Padding( padding: EdgeInsets.only(top: 20.0), ),
                  new RaisedButton(
                    child: new Text("Save",style: TextStyle(color: Colors.white)),
                    onPressed: (){},
                    color: new Color(0xFF5424eb),
                  ),
                  new RaisedButton(
                    child: new Text("Add family member",style: TextStyle(color: Colors.white),),
                    onPressed: (){},
                    color: new Color(0xFF5424eb),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}