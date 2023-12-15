// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:sj_presensi_mobile/pages/dinas/add_dinas.dart';
// import 'package:sj_presensi_mobile/pages/dinas/add_dinas_bloc/add_dinas_bloc.dart';
// import 'package:sj_presensi_mobile/pages/dinas/dinas_page.dart';
// import 'package:sj_presensi_mobile/pages/dinas/list_dinas_bloc/list_dinas_bloc.dart';
// import 'package:sj_presensi_mobile/utils/const.dart';

// class DashboardDinasPage extends StatefulWidget {
//   static const routeName = '/DashboardDinasPage';
//   const DashboardDinasPage({super.key});

//   @override
//   State<DashboardDinasPage> createState() => _DashboardDinasPageState();
// }

// class _DashboardDinasPageState extends State<DashboardDinasPage> {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               MyColorsConst.primaryDarkColor,
//                   MyColorsConst.primaryColor,
//             ],
//             stops: [0.0, 0.12],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Column(
//           children: [
//             const SizedBox(height: 30),
//             Container(
//               padding: EdgeInsets.all(5.0),
//               child: Row(
//                 children: [
//                   IconButton(
//                     icon: Icon(
//                       Icons.arrow_back_ios_rounded,
//                       size: 18,
//                     ),
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: size.width * 1 / 5,
//                   ),
//                   Expanded(
//                     child: Text(
//                       "Perjalanan Dinas",
//                       style: GoogleFonts.poppins(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w600,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20),
//                     topRight: Radius.circular(20),
//                   ),
//                   color: Colors.white,
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(20),
//                   child: Column(
//                     children: [
//                       DashboardItem(
//                         label: 'History Perjalanan Dinas',
//                         image: 'assets/images/history_spd.png',
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => BlocProvider(
//                                 create: (context) => ListDinasBloc()
//                                   ..add(GetListDinas(date: DateTime.now())),
//                                 child: DinasPage(),
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                       DashboardItem(
//                         label: 'Pengajuan Perjalanan Dinas',
//                         image: 'assets/images/pengajuan_cuti.png',
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) {
//                               return BlocProvider(
//                                 create: (context) => AddDinasBloc()
//                                   ..add(OnSelectDivisi())
//                                   ..add(OnSelectDepartemen(page: 1, search: ''))
//                                   ..add(OnSelectPosisi(page: 1, search: ''))
//                                   ..add(
//                                       OnSelectTemplateSpd(page: 1, search: ''))
//                                   ..add(OnSelectDirektorat(page: 1, search: ''))
//                                   ..add(OnSelectJenisSpd(page: 1, search: ''))
//                                   ..add(OnSelectZona(page: 1, search: ''))
//                                   ..add(
//                                       OnSelectLokasiTujuan(page: 1, search: ''))
//                                   ..add(OnSelectPic(page: 1, search: '')),
//                                 child: AddDinasPage(
//                                   reloadDataCallback: () {},
//                                 ),
//                               );
//                             }),
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DashboardItem extends StatelessWidget {
//   final String label;
//   final String image;
//   final VoidCallback? onTap;

//   const DashboardItem({
//     Key? key,
//     required this.label,
//     required this.image,
//     this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         margin: const EdgeInsets.only(bottom: 20),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: Color(0xFFDDDDDD)),
//           color: MyColorsConst.whiteColor,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               offset: Offset(0, 0),
//               blurRadius: 5,
//             ),
//           ],
//         ),
//         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
//         child: Row(
//           children: [
//             Expanded(
//               flex: 10,
//               child: Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundColor: Color(0xFF6F7BF7).withOpacity(0.0),
//                     child: Image.asset(image),
//                   ),
//                   const SizedBox(width: 15),
//                   Text(
//                     label,
//                     style: GoogleFonts.poppins(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: Center(
//                   child: Icon(
//                     Icons.arrow_forward_ios_rounded,
//                     size: 12,
//                     color: MyColorsConst.primaryColor,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
