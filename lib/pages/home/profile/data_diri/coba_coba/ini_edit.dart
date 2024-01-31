// import 'package:flutter/material.dart';
// import 'package:sj_presensi_mobile/componens/HRIS/form_add_data.dart';
// import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
// import 'package:sj_presensi_mobile/pages/home/profile/data_diri/data_diri_page.dart';

// class EditCobaPage extends StatefulWidget {
//   const EditCobaPage({super.key});

//   @override
//   State<EditCobaPage> createState() => _EditCobaPageState();
// }

// class _EditCobaPageState extends State<EditCobaPage> {
//  List<String> buttonTexts = [
//     'Selanjutnya',
//     'Selanjutnya',
//     'Selanjutnya',
//     'Selanjutnya',
//     'Selanjutnya',
//     'Kirim'
//   ];

//   int currentStep = 0;

//   PageController _pageController = PageController();

//   continueStep() {
//     if (currentStep < 5) {
//       _pageController.nextPage(
//         duration: Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     } else {
//       // Navigasi ke halaman baru di sini
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => DataDiriPage()),
//       );
//     }
//   }

//   cancelStep() {
//     if (currentStep > 0) {
//       _pageController.previousPage(
//         duration: Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

//   onStepTapped(int value) {
//     _pageController.animateToPage(
//       value,
//       duration: Duration(milliseconds: 300),
//       curve: Curves.easeInOut,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return WillPopScope(
//       onWillPop: () async {
//         if (currentStep > 0) {
//           _pageController.previousPage(
//             duration: Duration(milliseconds: 300),
//             curve: Curves.easeInOut,
//           );
//           return false;
//         }
//         return true;
//       },
//       child: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color(0xFF5EB5EE),
//                 Color(0xFF6F7BF7),
//               ],
//               stops: [0.0, 0.1],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//             ),
//           ),
//           child: Column(
//             children: [
//               const SizedBox(height: 30),
//               Container(
//                 padding: EdgeInsets.all(5.0),
//                 child: Row(
//                   children: [
//                     IconButton(
//                       icon: Icon(
//                         Icons.arrow_back_ios_rounded,
//                         size: 18,
//                       ),
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       color: Colors.white,
//                     ),
//                     SizedBox(
//                       width: size.width * 0.5 / 5,
//                     ),
//                     Expanded(
//                       child: Text(
//                         "Data Diri",
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: PageView(
//                   controller: _pageController,
//                   physics: NeverScrollableScrollPhysics(),
//                   children: [
//                     buildStepContent(0),
//                     buildStepContent(1),
//                     buildStepContent(2),
//                     buildStepContent(3),
//                     buildStepContent(4),
//                     buildStepContent(5),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildStepContent(int step) {
//     // Sesuaikan konten langkah sesuai kebutuhan
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       child: Stepper(
//         elevation: 0,
//         controlsBuilder: (context, details) => SizedBox.shrink(),
//         type: StepperType.horizontal,
//         onStepTapped: (value) {
//           setState(() {
//             currentStep = value;
//           });
//         },
//         currentStep: currentStep,
//         steps: [
//           // Sesuaikan setiap langkah dengan widget yang sesuai
//           getStepContent(0),
//           getStepContent(1),
//           getStepContent(2),
//           getStepContent(3),
//           getStepContent(4),
//           getStepContent(5),
//         ],
//       ),
//     );
//   }

//   Widget getStepContent(int step) {
//     switch (step) {
//       case 0:
//         // Sesuaikan dengan widget untuk langkah pertama
//         break;
//       case 1:
//         // Sesuaikan dengan widget untuk langkah kedua
//         break;
//       case 2:
//         // Sesuaikan dengan widget untuk langkah ketiga
//         return Column(
//           children: [
//             FormDataProfile(
//               hintText: 'Sisa Cuti Masa Kerja',
//               labelForm: 'Sisa Cuti Masa Kerja',
//               labelTag: 'Label-SisaCutiMasaKerja',
//               formTag: 'Form-SisaCutiMasaKerja',
//               controller: widget.sisaCutiKerjaController,
//               validator: (value) {},
//             ),
//             const SizedBox(height: 20),
//             FormDropDown(
//               onTap: () {},
//               hintText: 'Pilih Tanggal',
//               labelForm: 'Tanggal Masuk Kerja',
//               labelTag: 'Label-TanggalMasuk',
//               formTag: 'Form-TanggalMasuk',
//               valueController: widget.tanggalMasukController,
//               idController: widget.tanggalMasukController,
//             ),
//             const SizedBox(height: 20),
//             FormDropDown(
//               onTap: () {},
//               hintText: 'Pilih Tanggal',
//               labelForm: 'Tanggal Berhenti Kerja',
//               labelTag: 'Label-TanggalBerhenti',
//               formTag: 'Form-TanggalBerhenti',
//               valueController: widget.tanggalBerhentiController,
//               idController: widget.tanggalBerhentiController,
//             ),
//             const SizedBox(height: 20),
//           ],
//         );
//       case 3:
//         // Sesuaikan dengan widget untuk langkah keempat
//         break;
//       case 4:
//         // Sesuaikan dengan widget untuk langkah kelima
//         break;
//       case 5:
//         // Sesuaikan dengan widget untuk langkah keenam
//         break;
//       default:
//         return Container();
//     }
//     return Container();
//   }
// }