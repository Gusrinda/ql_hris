import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/coba_coba/form_page.dart';

class StepperPage extends StatefulWidget {
  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int _currentStep = 0;

  List<Step> _steps = [
    Step(
      title: Text('Page 1'),
      content: FormPage(pageNumber: 1),
    ),
    Step(
      title: Text('Page 2'),
      content: FormPage(pageNumber: 2),
    ),
    Step(
      title: Text('Page 3'),
      content: FormPage(pageNumber: 3),
    ),
    Step(
      title: Text('Page 4'),
      content: FormPage(pageNumber: 4),
    ),
    Step(
      title: Text('Page 3'),
      content: FormPage(pageNumber: 5),
    ),
    Step(
      title: Text('Page 3'),
      content: FormPage(pageNumber: 6),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper App'),
      ),
      body: Stepper(
        currentStep: _currentStep,
        steps: _steps,
        onStepTapped: (step) {
          setState(() {
            _currentStep = step;
          });
        },
        onStepContinue: () {
          setState(() {
            if (_currentStep < _steps.length - 1) {
              _currentStep++;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (_currentStep > 0) {
              _currentStep--;
            }
          });
        },
      ),
    );
  }
}
