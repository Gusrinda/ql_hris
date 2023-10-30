import 'package:flutter/material.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_dinas.dart';
import 'package:sj_presensi_mobile/componens/appbar_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_page.dart';

class AddDinasPage extends StatefulWidget {
  const AddDinasPage({super.key});

  @override
  State<AddDinasPage> createState() => _AddDinasPageState();
}

class _AddDinasPageState extends State<AddDinasPage> {
  int currentStep = 0;
  List<String> buttonTexts = ['Selanjutnya', 'Selanjutnya', 'Kirim'];

  continueStep() {
    if (currentStep < 2) {
      setState(() {
        currentStep = currentStep + 1;
      });
    } else {
      // Navigasi ke halaman baru di sini
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DinasPage()),
      );
    }
  }

  cancelStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep = currentStep - 1;
      });
    }
  }

  onStepTapped(int value) {
    setState(() {
      currentStep = value;
    });
  }

  Widget controlBuilders(context, details) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          TextButtonCustomV1(
            onPressed: details.onStepContinue,
            text: buttonTexts[currentStep],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (currentStep > 0) {
          setState(() {
            currentStep -= 1;
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: appBarCustomV1(
          title: "Perjalanan Dinas",
          padLeft: 8,
        ),
        body: Stepper(
          elevation: 0,
          controlsBuilder: controlBuilders,
          type: StepperType.horizontal,
          onStepTapped: onStepTapped,
          onStepContinue: continueStep,
          onStepCancel: cancelStep,
          currentStep: currentStep,
          steps: [
            Step(
              label: Text(
                'jabatan',
                style: TextStyle(fontSize: 10),
              ),
              title: SizedBox.shrink(),
              content: Column(
                children: [
                  FormTemplateSpd(
                    input: "",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FormDirektorat(
                    input: '',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FormDivisi(
                    input: '',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FormDepartemen(
                    input: '',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FormPosisi(
                    input: '',
                    onTap: () {},
                  ),
                ],
              ),
              isActive: currentStep >= 0,
              state: currentStep >= 0 ? StepState.complete : StepState.disabled,
            ),
            Step(
              label: Text(
                'Tanggal',
                style: TextStyle(fontSize: 10),
              ),
              title: SizedBox.shrink(),
              content: Column(
                children: [
                  FormTanggalDinas(
                    input: "",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FormTanggalAcaraAwal(
                    input: "",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FormTanggalAcaraAkhir(
                    input: "",
                    onTap: () {},
                  ),
                ],
              ),
              isActive: currentStep >= 1,
              state: currentStep >= 1 ? StepState.complete : StepState.disabled,
            ),
            Step(
              label: Text(
                'Lokasi',
                style: TextStyle(fontSize: 10),
              ),
              title: SizedBox.shrink(),
              content: Column(
                children: [
                  FormJenisSpd(
                    input: "",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FormZonaAwal(
                    input: "",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FormZonaTujuan(
                    input: "",
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FormLokasiTujuan(
                    input: "",
                    onTap: () {},
                  ),
                ],
              ),
              isActive: currentStep >= 2,
              state: currentStep >= 2 ? StepState.complete : StepState.disabled,
            )
          ],
        ),
      ),
    );
  }
}
