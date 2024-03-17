import 'package:flutter/material.dart';
import 'package:flutter_registration/components/example_text_field.dart';
import 'package:flutter_registration/main.dart';
import 'package:flutter_registration/model/list_sign_up.dart';
import 'package:toggle_switch/toggle_switch.dart';
bool? checkedValue;
int? selectedGenderIndex = 0;

class Registration extends StatefulWidget {
  const Registration({super.key});
  @override
  State<Registration> createState() => _RegistrationState();
}
class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Регистрация'
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                margin: const EdgeInsets.only(bottom: 8),
                alignment: Alignment.center,
                child: ListView.builder(
                  itemCount: listSignUp.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExampleTextField(
                      information: listSignUp[index],
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: ToggleSwitch(
                  minWidth: 100.0,
                  initialLabelIndex: selectedGenderIndex,
                  cornerRadius: 18.0,
                  totalSwitches: 2,
                  labels: const ['Мужчина', 'Женщина'],
                  onToggle: (index) {
                    setState(() {
                      selectedGenderIndex = index;
                    },
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: CheckboxListTile(
                  title: const Text(
                    "Я согласен получать рекламную рассылку на электронную почту",
                  ),
                  value: checkedValue ?? false,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue;
                    },
                    );
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                child: const Text('Зарегистрироваться'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}