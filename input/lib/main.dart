import 'package:flutter/material.dart';
import 'package:input/Todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = '회원가입창';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  String id = "";
  String pw = "";
  String pwc = "";
  String name = "";
  String email = "";
  String address = "";
  String mobile = "";

  result() {
    print('id:$id');
    print('name:$name');
    print('email:$email');
    print('pw:$pw');
    print('pwc:$pwc');
    print('address:$address');
    print('mobile:$mobile');
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Padding(
      padding: EdgeInsets.fromLTRB(200, 50, 200, 50),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration:
                  InputDecoration(hintText: "아이디를입력해주세요", labelText: "아이디"),
              onSaved: (id) {
                setState(() {
                  this.id = id!;
                });
              },
              validator: (id) {
                if (id!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              decoration:
                  InputDecoration(hintText: "비밀번호를입력해주세요", labelText: "비밀번호"),
              onSaved: (pw) {
                setState(() {
                  this.pw = pw!;
                });
              },
              validator: (pw) {
                if (pw!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "비밀번호를입력해주세요", labelText: "비밀번호재확인"),
              onSaved: (pwc) {
                setState(() {
                  this.pwc = pwc!;
                });
              },
              validator: (pwc) {
                if (pwc!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              decoration:
                  InputDecoration(hintText: "이름을입력해주세요", labelText: "이름"),
              onSaved: (name) {
                setState(() {
                  this.name = name!;
                });
              },
              validator: (name) {
                if (name!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              decoration:
                  InputDecoration(hintText: "이메일을입력해주세요", labelText: "이메일"),
              onSaved: (email) {
                setState(() {
                  this.email = email!;
                });
              },
              validator: (email) {
                if (email!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              decoration:
                  InputDecoration(hintText: "주소를입력해주세요", labelText: "주소"),
              onSaved: (address) {
                setState(() {
                  this.address = address!;
                });
              },
              validator: (address) {
                if (address!.isEmpty) {
                  return '빈값';
                }
                return null;
              },
            ),
            TextFormField(
              decoration:
                  InputDecoration(hintText: "전화번호를입력해주세요", labelText: "전화번호"),
              onSaved: (mobile) {
                setState(() {
                  this.mobile = mobile!;
                });
              },
              validator: (mobile) {
                if (mobile!.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            result(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Center(
                child: RaisedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false
                    // otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a Snackbar.
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
