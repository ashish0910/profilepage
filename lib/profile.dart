import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
   
   var _mobile="9643532230";
   var _email="abc@gmail.com";
   var _name="Ashish aggarwal";
   var _flat="F999";

  TextEditingController _mobilecontroller = new TextEditingController();
  TextEditingController _emailcontroller = new TextEditingController();
  TextEditingController _namecontroller = new TextEditingController();
  TextEditingController _flatcontroller = new TextEditingController();
 
  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _mobilecontroller.value=new TextEditingValue( text: _mobile);
      _emailcontroller.value=new TextEditingValue( text: _email);
      _namecontroller.value=new TextEditingValue( text: _name);
      _flatcontroller.value=new TextEditingValue( text: _flat);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
        leading: new IconButton(  icon: Icon(Icons.cancel), color: Colors.white ,onPressed: () {},),
      ),
      // floatingActionButton: new IconButton(
      //    tooltip: "Add family member",
      //   icon: Icon(Icons.add,),
      //   onPressed: (){
      //     print("add family member");
      //   },
      // ),
      body: new ListView(
        padding: EdgeInsets.all(30.0),
        children: <Widget>[
          new Row(
            children: <Widget>[
              new GestureDetector(
                child: new Stack(
                  children: <Widget>[
                    new CircleAvatar(
                backgroundColor: new Color(0xFF5424eb),
                radius: 40.0,
                child: new Text("A",style: TextStyle(color: Colors.white,fontSize: 30.0),),  
              ),
              new Padding(
                padding: const EdgeInsets.fromLTRB(60.0, 45.0, 0.0, 0.0),
                child: new Icon(Icons.edit),
              )
                  ],
                ),
                onTap: (){
                  showDialog(context: context,builder: (BuildContext context){
                  return new AlertDialog(
                    title: new Text("Change DP"),
                    actions: <Widget>[
                      new RaisedButton(
                        onPressed: (){
                          setState(() {});
                          Navigator.of(context).pop();
                        },
                        child: new Text("Camera"),
                      ),
                      new RaisedButton(
                        onPressed: (){
                          setState(() {});
                          Navigator.of(context).pop();
                        },
                        child: new Text("Gallery"),
                      ),
                      new RaisedButton(
                        onPressed: (){
                          setState(() {});
                          Navigator.of(context).pop();
                        },
                        child: new Text("Cancel"),
                      ),
                    ],
                  );
                });
                },
              ),
              new Column(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 15.0),
                    child: new GestureDetector(
                      child: new Text("$_name",style: new TextStyle(color: Colors.black , fontWeight: FontWeight.w500 , fontSize: 18.0),),
                      onTap: (){
                        showDialog(context: context,builder: (BuildContext context){
                  return new AlertDialog(
                    title: new Text("Edit Name"),
                    content: new Padding(
                      padding: EdgeInsets.all(10.0),
                      child: new TextField(
                        controller: _namecontroller,
                        decoration: new InputDecoration(
                          labelText: "Full Name"
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      new RaisedButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        child: new Text("Cancel"),
                      ),
                      new RaisedButton(
                        onPressed: (){
                          _name=_namecontroller.text.toString();
                          setState(() {});
                          Navigator.of(context).pop();
                        },
                        child: new Text("Save"),
                      ),
                    ],
                  );
                });
                      },
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: new Text("+91 $_mobile"),
                  )
                ],
              )
            ],
          ),
          new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            child: new Divider(
             color: Colors.grey,
          ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: <Widget>[
              new Text("Account",style: new TextStyle(color: Colors.black , fontWeight: FontWeight.w500 , fontSize: 15.0),),
              new Padding(padding: EdgeInsets.only(top: 8.0),),
              new GestureDetector(
                child: new Row(
                children: <Widget>[
                  new Text("Mail: $_email"),
                  new Padding(padding: EdgeInsets.only(left: 8.0),),
                  // new Icon(Icons.edit, color: new Color(0xFF5424eb),size: 15.0,)
                ],
              ),
              onTap: (){
                showDialog(context: context,builder: (BuildContext context){
                  return new AlertDialog(
                    title: new Text("Edit email"),
                    content: new Padding(
                      padding: EdgeInsets.all(10.0),
                      child: new TextField(
                        controller: _emailcontroller,
                        decoration: new InputDecoration(
                          labelText: "Email"
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      new RaisedButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        child: new Text("Cancel"),
                      ),
                      new RaisedButton(
                        onPressed: (){
                          _email=_emailcontroller.text.toString();
                          setState(() {});
                          Navigator.of(context).pop();
                        },
                        child: new Text("Save"),
                      ),
                    ],
                  );
                });
              },
              ),
              new Padding(padding: EdgeInsets.only(top: 12.0),),
              new GestureDetector(
                child: new Row(
                children: <Widget>[
                  new Icon(Icons.call,color: new Color(0xFF5424eb),size: 20.0,),
                  new Padding(padding: EdgeInsets.only(right: 10.0),),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Mobile Number",style: new TextStyle(color: Colors.black , fontWeight: FontWeight.w500 , fontSize: 15.0),),
                      new Padding(padding: EdgeInsets.only(top: 3.0),),
                      new Text("+91 $_mobile")
                    ], 
                  ),
                ],
              ),
              onTap: (){
                print("mobile Editor called");
                showDialog(context: context,builder: (BuildContext context){
                  return new AlertDialog(
                    title: new Text("Edit Mobile Number"),
                    content: new Padding(
                      padding: EdgeInsets.all(10.0),
                      child: new TextField(
                        controller: _mobilecontroller,
                        decoration: new InputDecoration(
                          labelText: "Mobile number"
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      new RaisedButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        child: new Text("Cancel"),
                      ),
                      new RaisedButton(
                        onPressed: (){
                          _mobile=_mobilecontroller.text.toString();
                          setState(() {});
                          Navigator.of(context).pop();
                        },
                        child: new Text("Save"),
                      ),
                    ],
                  );
                });
              },
              ),
              new Padding(padding: EdgeInsets.only(top: 12.0),),
              new GestureDetector(
                child: new Row(
                children: <Widget>[
                  new Icon(Icons.home,color: new Color(0xFF5424eb),size: 20.0,),
                  new Padding(padding: EdgeInsets.only(right: 10.0),),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Flat Number",style: new TextStyle(color: Colors.black , fontWeight: FontWeight.w500 , fontSize: 15.0),),
                      new Padding(padding: EdgeInsets.only(top: 3.0),),
                      new Text("$_flat")
                    ], 
                  ),
                ],
              ),
              onTap: (){
                showDialog(context: context,builder: (BuildContext context){
                  return new AlertDialog(
                    title: new Text("Edit Flat Number"),
                    content: new Padding(
                      padding: EdgeInsets.all(10.0),
                      child: new TextField(
                        controller: _flatcontroller,
                        decoration: new InputDecoration(
                          labelText: "Flat number"
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      new RaisedButton(
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        child: new Text("Cancel"),
                      ),
                      new RaisedButton(
                        onPressed: (){
                          _flat=_flatcontroller.text.toString();
                          setState(() {});
                          Navigator.of(context).pop();
                        },
                        child: new Text("Save"),
                      ),
                    ],
                  );
                });
              },
              ),
              new Padding(padding: EdgeInsets.only(top: 12.0),),
              new GestureDetector(
                child: new Row(
                children: <Widget>[
                  new Icon(Icons.vpn_key,color: new Color(0xFF5424eb),size: 20.0,),
                  new Padding(padding: EdgeInsets.only(right: 10.0),),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Access code",style: new TextStyle(color: Colors.black , fontWeight: FontWeight.w500 , fontSize: 15.0),),
                      new Padding(padding: EdgeInsets.only(top: 3.0),),
                      new Text("7faa3a")
                    ], 
                  ),
                ],
              ),
              onTap: (){
                print("access code changer");
              },
              ),
              new Padding(padding: EdgeInsets.only(top: 12.0),),
              new GestureDetector(
                child: new Row(
                children: <Widget>[
                  new Icon(Icons.verified_user,color: new Color(0xFF5424eb),size: 20.0,),
                  new Padding(padding: EdgeInsets.only(right: 10.0),),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Family members",style: new TextStyle(color: Colors.black , fontWeight: FontWeight.w500 , fontSize: 15.0),),
                      new Padding(padding: EdgeInsets.only(top: 3.0),),
                      new Text("No family members added")
                    ], 
                  ),
                ],
              ),
              onTap: (){
                print("add family member called");
                showDialog(context: context,builder: (BuildContext context){
                  return new AlertDialog(
                    title: new Text("Add Family member"),
                    content: new Text("we are under development"),
                    actions: <Widget>[
                      new RaisedButton(
                        onPressed: (){
                          setState(() {});
                          Navigator.of(context).pop();
                        },
                        child: new Text("Cancel"),
                      ),
                    ],
                  );
                });
              },
              ),
              new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            child: new Divider(
             color: Colors.grey,
          ),
          ),
          new Text("Security",style: new TextStyle(color: Colors.black , fontWeight: FontWeight.w500 , fontSize: 15.0),),
          new Padding(padding: EdgeInsets.only(top: 12.0),),
              new GestureDetector(
                child: new Row(
                children: <Widget>[
                  new Icon(Icons.exit_to_app,color: new Color(0xFF5424eb),size: 20.0,),
                  new Padding(padding: EdgeInsets.only(right: 10.0),),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text("Logout",style: new TextStyle(color: Colors.black , fontWeight: FontWeight.w500 , fontSize: 15.0),),
                      new Padding(padding: EdgeInsets.only(top: 3.0),),
                      new Text("logout from your account")
                    ], 
                  ),
                ],
              ),
              onTap: (){
                print("Logout called");
                showDialog(context: context,builder: (BuildContext context){
                  return new AlertDialog(
                    title: new Text("Logout"),
                    content: new Text("are you sure?"),
                    actions: <Widget>[
                      new RaisedButton(
                        onPressed: (){
                          setState(() {});
                          Navigator.of(context).pop();
                        },
                        child: new Text("Cancel"),
                      ),
                      new RaisedButton(
                        onPressed: (){
                          setState(() {});
                          Navigator.of(context).pop();
                        },
                        child: new Text("logout"),
                      ),
                    ],
                  );
                });
              },
              ),
            ],
          )
        ],
      ),
    );
  }
}