// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
//
// //import '../state/bus_sewa_state.dart';
//
// class BusForm extends StatelessWidget {
//   final formKey = GlobalKey<FormState>();
//   final busNameController = TextEditingController();
//   final driverNameController = TextEditingController();
//   final driverContactController = TextEditingController();
//   final trackingIdController = TextEditingController();
//
//   BusForm({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//    // final state = context.watch<BusSewaState>();
//
//     return SizedBox(
//       height: size.height / 1.5,
//       child: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Column(
//               children: <Widget>[
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 textFieldWidget(
//                   context: context,
//                   textFieldName: "Bus Name",
//                   required: "*",
//                   textFormField: TextFormField(
//                     controller: busNameController,
//                     style: Theme.of(context).textTheme.displaySmall?.copyWith(
//                         color: Colors.grey.shade800,
//                         fontWeight: FontWeight.w400),
//                     onChanged: (value) {},
//                     onFieldSubmitted: (text) {},
//                     maxLines: null,
//                     textInputAction: TextInputAction.next,
//                     decoration: CustomDecoration.customInputDecoration(
//                       hintText: "Bus Name",
//                       errorText: "Enter Bus Name",
//                       prefixIcon: Icon(
//                         Icons.directions_bus,
//                         color: Colors.grey.shade500,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 textFieldWidget(
//                   context: context,
//                   textFieldName: "Driver Name",
//                   required: "*",
//                   textFormField: TextFormField(
//                     controller: driverNameController,
//                     style: Theme.of(context).textTheme.displaySmall?.copyWith(
//                         color: Colors.grey.shade800,
//                         fontWeight: FontWeight.w400),
//                     onChanged: (value) {},
//                     onFieldSubmitted: (text) {},
//                     maxLines: null,
//                     textInputAction: TextInputAction.next,
//                     decoration: CustomDecoration.customInputDecoration(
//                       hintText: "Driver Name",
//                       errorText: "",
//                       prefixIcon: Icon(
//                         Icons.description_outlined,
//                         color: Colors.grey.shade500,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 textFieldWidget(
//                   context: context,
//                   textFieldName: "Driver Contact",
//                   textFormField: TextFormField(
//                     controller: driverContactController,
//                     style: Theme.of(context).textTheme.displaySmall?.copyWith(
//                         color: Colors.grey.shade800,
//                         fontWeight: FontWeight.w400),
//                     onChanged: (value) {},
//                     onFieldSubmitted: (text) {},
//                     maxLines: null,
//                     textInputAction: TextInputAction.next,
//                     decoration: CustomDecoration.customInputDecoration(
//                       hintText: "Driver Contact",
//                       errorText: "",
//                       prefixIcon: Icon(
//                         Icons.description_outlined,
//                         color: Colors.grey.shade500,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 textFieldWidget(
//                   context: context,
//                   textFieldName: "Tracking ID",
//                   required: "*",
//                   textFormField: TextFormField(
//                     controller: trackingIdController,
//                     style: Theme.of(context).textTheme.displaySmall?.copyWith(
//                         color: Colors.grey.shade800,
//                         fontWeight: FontWeight.w400),
//                     onChanged: (value) {},
//                     onFieldSubmitted: (text) {},
//                     maxLines: null,
//                     textInputAction: TextInputAction.next,
//                     decoration: CustomDecoration.customInputDecoration(
//                       hintText: "Tracking ID",
//                       errorText: "Enter Tracking ID",
//                       prefixIcon: Icon(
//                         Icons.description_outlined,
//                         color: Colors.grey.shade500,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 // CustomButton(
//                 //   confirmButtonText: 'SUBMIT',
//                 //   confirmButton: () async {
//                 //     // if (formKey.currentState?.validate() == true) {
//                 //     //   state.updateBusInfo(
//                 //     //       busID: busNameController.text.trim(),
//                 //     //       busName: busNameController.text.trim(),
//                 //     //       trackingID: "trackingID",
//                 //     //       driverName: "driverName",
//                 //     //       driverContact: "driverContact");
//                 //     //   Navigator.pop(context);
//                 //     // }
//                 //   },
//                 // ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// Widget textFieldWidget({
//   required BuildContext context,
//   required String textFieldName,
//   required Widget textFormField,
//   String? required,
//   double? titleSize,
// }
//     ) {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 5.0),
//         child: Row(
//           children: [
//             Text(
//               textFieldName,
//               style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                 fontWeight: FontWeight.w500,
//                 fontSize: titleSize ?? 12.0,
//               ),
//             ),
//
//           ],
//         ),
//       ),
//       const SizedBox(height: 5.0),
//       textFormField,
//     ],
//   );
// }