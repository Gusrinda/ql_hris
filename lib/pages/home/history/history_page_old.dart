//   Widget buildCard({
//     required Key key,
//     required date,
//     required state,
//     Datum? dataAbsensi,
//     String? url,
//     DateTime? datetime,
//     bool? onSite,
//     bool checkIn = true,
//     VoidCallback? onTap,
//   }) {
//     var stateDict = {
//       "attend_no_checkout": {
//         "name": "Tidak Check Out",
//       },
//       "attend": {
//         "name": "Hadir",
//       },
//       "working": {
//         "name": "Bekerja",
//       },
//       "absent": {
//         "name": "Tidak Hadir",
//       },
//       "day_off": {
//         "name": "Libur",
//       },
//     };
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         key: key,
//         margin: const EdgeInsets.only(bottom: 20),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(6),
//           border: Border.all(color: Color(0xFFDDDDDD)),
//           color: MyColorsConst.whiteColor,
//         ),
//         padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   DateFormat('EEEE, dd/MM/yyyy', 'id_ID').format(date),
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 Text(
//                   stateDict[state]!["name"] as String,
//                   style: const TextStyle(
//                     color: Colors.black,
//                     fontSize: 12,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 buildSubCard(
//                   checkIn: true,
//                   datetime: dataAbsensi?.checkinTime != null
//                       ? DateFormat("dd/MM/yyyy")
//                           .parse(dataAbsensi?.checkinTime ?? '01/01/2023')
//                       : null,
//                 ),
//                 buildSubCard(
//                   checkIn: false,
//                   datetime: dataAbsensi?.checkoutTime != null
//                       ? DateFormat("dd/MM/yyyy")
//                           .parse(dataAbsensi?.checkoutTime ?? '01/01/2023')
//                       : null,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Padding buildSubCard({
//     required DateTime? datetime,
//     bool checkIn = true,
//   }) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: 10),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             checkIn ? "In " : "Out ",
//             style: TextStyle(
//               fontSize: 12,
//               color: MyColorsConst.lightDarkColor,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           Text(
//             datetime != null ? DateFormat('HH:mm:ss').format(datetime) : "-",
//             style: TextStyle(
//               fontSize: 12,
//               color: Color(0xFF969696),
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }