import 'package:flutter/material.dart';
import 'package:flutter_registration/pages/registration_page.dart';
import 'components/example_text_field.dart';
import 'pages/login_page.dart';
import 'model/list_log_in.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Магазин кроссовок',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage ({super.key});
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 6,
                child: Container(
                  alignment: Alignment.center,
                  child: Image.network('https://i.pinimg.com/originals/f2/a7/22/f2a722309717f8ca203b024698c587ac.jpg'),
                )
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: listLogIn.length,
                itemBuilder: (BuildContext context, int index){
                  return ExampleTextField(
                    information: listLogIn[index],
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(bottom: 8),
                child: ElevatedButton(
                  child: const Text('Войти'),
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login())
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  child: const Text('Зарегистрироваться'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Registration())
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Приложение для авторизации'),
      ),
    );
  }
}