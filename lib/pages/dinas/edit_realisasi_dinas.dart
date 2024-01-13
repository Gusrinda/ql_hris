import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sj_presensi_mobile/componens/HRIS/form_data_profile.dart';
import 'package:sj_presensi_mobile/componens/HRIS/text_form_custom.dart';
import 'package:sj_presensi_mobile/componens/dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/loading_dialog_custom_v1.dart';
import 'package:sj_presensi_mobile/componens/text_button_custom_v1.dart';
import 'package:sj_presensi_mobile/pages/authentication/login/login_page.dart';
import 'package:sj_presensi_mobile/pages/dinas/add_realisasi_dinas_bloc/add_realisasi_dinas_bloc.dart';
import 'package:sj_presensi_mobile/pages/dinas/dinas_selector/dinas_selector.dart';
import 'package:sj_presensi_mobile/pages/home/profile/data_diri/selector/general_selector.dart';
import 'package:sj_presensi_mobile/services/model/dinas/list_dinas_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/realisasi_dinas_model.dart';
import 'package:sj_presensi_mobile/services/model/dinas/response_detail_spd.dart';
import 'package:sj_presensi_mobile/services/model/list_general/response_general.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class EditRealisasiDinasPage extends StatefulWidget {
  EditRealisasiDinasPage({
    super.key,
    required this.reloadDataCallback,
    this.dataRealisasi,
    this.detailSPD,
  });
  final VoidCallback reloadDataCallback;
  final DataDetailDinas? detailSPD;
  final DataRealisasiDinas? dataRealisasi;
  static const routeName = '/EditRealisasiDinasPage';

  // TemplateSpd Controller
  final TextEditingController idNomorSpdController = TextEditingController();
  final TextEditingController valueNomorSpdController = TextEditingController();

  final TextEditingController nomorController = TextEditingController();
  // Direktorat Controller
  final TextEditingController idDirektoratController = TextEditingController();
  final TextEditingController valueDirektoratController =
      TextEditingController();

  // Divisi Controller
  final TextEditingController idDivisiController = TextEditingController();
  final TextEditingController valueDivisiController = TextEditingController();

  // Departemen Controller
  final TextEditingController idDepartemenController = TextEditingController();
  final TextEditingController valueDepartemenController =
      TextEditingController();

  // Posisi Controller
  final TextEditingController idPosisiController = TextEditingController();
  final TextEditingController valuePosisiController = TextEditingController();
  final TextEditingController tanggalController = TextEditingController();
  final TextEditingController tanggalAwalController = TextEditingController();
  final TextEditingController tanggalAkhirController = TextEditingController();
  final TextEditingController jumlahHariController = TextEditingController();

  // Zona Asal Controller
  final TextEditingController idZonaAsalController = TextEditingController();
  final TextEditingController valueZonaAsalController = TextEditingController();

  // Zona Tujuan Controller
  final TextEditingController idZonaTujuanController = TextEditingController();
  final TextEditingController valueZonaTujuanController =
      TextEditingController();

  // Lokasi Tujuan Controller
  final TextEditingController idLokasiTujuanController =
      TextEditingController();
  final TextEditingController valueLokasiTujuanController =
      TextEditingController();
  final TextEditingController nikController = TextEditingController();

  // Pic Controller
  final TextEditingController idPicController = TextEditingController();
  final TextEditingController valuePicController = TextEditingController();
  final TextEditingController totalBiayaController = TextEditingController();
  final TextEditingController statusController = TextEditingController();

  // kend Dinas
  final TextEditingController kendDinasController = TextEditingController();
  final TextEditingController namaKendDinasController = TextEditingController();

  final TextEditingController keteranganUtamaController =
      TextEditingController();

  // Rincian biaya
  final TextEditingController totalBiayaRealisasiController =
      TextEditingController();

  final TextEditingController totalBiayaRencanaSelisihController =
      TextEditingController();

  final TextEditingController biayaController = TextEditingController();
  final TextEditingController keteranganController = TextEditingController();
  final TextEditingController biayaRealisasiController =
      TextEditingController();
  final TextEditingController catatanController = TextEditingController();

  @override
  State<EditRealisasiDinasPage> createState() => EditRealisasiDinasPageState();
}

class EditRealisasiDinasPageState extends State<EditRealisasiDinasPage> {
  String? selectedNomorSpd;
  String? selectedTipe;
  List<ExpenseDetail> expenseDetails = [];
  DataDinas? selectedDataDinas;
  DetailBiayaSPDSuceess? detailSelectedSPD;
  DetailEditRealisasiDinasSuccess? dataDetailrealisasiDinas;

  @override
  void initState() {
    super.initState();
    print("Edit RPD ID ${widget.dataRealisasi?.id.toString()}");
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final organisasiBloc = context.read<AddRealisasiDinasBloc>();
      context
          .read<AddRealisasiDinasBloc>()
          .add(GetDetailBiayaSPD(spdID: widget.dataRealisasi?.tSpdId ?? 1));

      organisasiBloc.add(OnSelectDinasApproved());
      organisasiBloc.add(OnSelectTipe());
    });
    widget.totalBiayaRealisasiController
        .addListener(_onTotalBiayaRealisasiChanged);

    // selectedNomorSpd = widget.dataRealisasi?.tSpdNomor;
    // widget.valueNomorSpdController.text =
    //     widget.dataRealisasi?.tSpdNomor.toString() ?? '';
    // widget.idNomorSpdController.text =
    //     widget.dataRealisasi?.tSpdId.toString() ?? '';

    // widget.valueDivisiController.text = widget.detailSPD?.mDivisiNama ?? '';
    // widget.idDivisiController.text =
    //     widget.detailSPD?.mDivisiId.toString() ?? '';

    // widget.valueDepartemenController.text = widget.detailSPD?.mDeptNama ?? '';
    // widget.idDepartemenController.text =
    //     widget.detailSPD?.mDeptId.toString() ?? '';

    // widget.valuePosisiController.text =
    //     widget.detailSPD?.mPosisiDescKerja ?? '';
    // widget.idPosisiController.text =
    //     widget.detailSPD?.mPosisiId.toString() ?? '';
  }

  void _onTotalBiayaRealisasiChanged() {
    // Ambil nilai dari totalBiayaController dan totalBiayaRealisasiController
    double totalBiaya = _parseCurrency(widget.totalBiayaController.text);
    double totalBiayaRealisasi =
        _parseCurrency(widget.totalBiayaRealisasiController.text);

    // Hitung selisihnya
    double selisih = totalBiaya - totalBiayaRealisasi;

    // Set nilai baru ke totalBiayaRencanaSelisihController dengan format uang
    widget.totalBiayaRencanaSelisihController.text = _formatCurrency(selisih);
  }

  double _parseCurrency(String currencyString) {
    // Hapus "Rp " dan ganti koma jika ada
    String cleanedString =
        currencyString.replaceAll('Rp ', '').replaceAll('.', '');

    // Parse string menjadi double
    return double.tryParse(cleanedString) ?? 0;
  }

  String _formatCurrency(double amount) {
    // Format nilai sebagai uang
    return 'Rp ${NumberFormat('#,###').format(amount)}';
  }

  // @override
  // void dispose() {
  //   // Hapus listener dari controller
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var dataDinasApproved =
        context.read<AddRealisasiDinasBloc>().listDinasApproved;
    var dataTipe = context.read<AddRealisasiDinasBloc>().listTipe;

    String formatRupiah(double? value) {
      return NumberFormat.currency(
        locale: 'id_ID',
        symbol: 'Rp ',
      ).format(value ?? 0.0).replaceAll(',00', '');
    }

    void _showNomoreSpd(BuildContext context) async {
      if (dataDinasApproved.isEmpty) {
        context.read<AddRealisasiDinasBloc>().add(OnSelectDinasApproved());
        dataDinasApproved =
            context.read<AddRealisasiDinasBloc>().listDinasApproved;
      }

      if (dataDinasApproved.isNotEmpty) {
        final selectedNomorSpd = await showSearch<DataDinas?>(
          context: context,
          delegate: DinasApprovedSearchDelegate(
            dataDinasApproved: dataDinasApproved,
            filteredData: dataDinasApproved,
          ),
        );

        if (selectedNomorSpd != null) {
          context
              .read<AddRealisasiDinasBloc>()
              .add(GetDetailBiayaSPD(spdID: selectedNomorSpd.id ?? 1));

          setState(() {
            this.selectedNomorSpd = selectedNomorSpd.nomor;
          });
        }
      } else {
        showDialog(
          context: context,
          builder: (_) => const DialogCustom(
              state: DialogCustomItem.error, message: "Tidak Ada Item"),
        );
        print("Tidak Ada Item");
      }
    }

    // double calculateTotalCost() {
    //   double totalCost = 0.0;

    //   // Iterate through each expense detail and sum up the costs
    //   for (var expense in expenseDetails) {
    //     double biayaRealisasi =
    //         double.tryParse(expense.biayaRealisasiController.text) ?? 0.0;
    //     totalCost += biayaRealisasi;
    //   }

    //   return totalCost;
    // }

    // void onDataChanged() {
    //   // Call the function to calculate the total cost
    //   double totalCost = calculateTotalCost();

    //   // Update the totalBiayaRencanaSelisihController
    //   widget.totalBiayaRencanaSelisihController.text = totalCost.toString();
    // }

    double calculateTotalCost() {
      double totalCost = 0.0;

      // Iterate through each expense detail and sum up the costs
      for (var expense in expenseDetails) {
        double biayaRealisasi =
            double.tryParse(expense.biayaRealisasiController.text) ?? 0.0;
        totalCost += biayaRealisasi;
      }

      return totalCost;
    }

    String formatCurrency(double value) {
      final numberFormat =
          NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ');
      return numberFormat.format(value);
    }

    void onDataChanged() {
      // Call the function to calculate the total cost
      double totalCost = calculateTotalCost();

      // Format the total cost as currency
      String formattedTotalCost = formatCurrency(totalCost);

      // Update the totalBiayaRencanaSelisihController
      widget.totalBiayaRencanaSelisihController.text = formattedTotalCost;
    }

    return BlocListener<AddRealisasiDinasBloc, AddRealisasiDinasState>(
      listener: (context, state) async {
        if (state is AddRealisasiDinasLoading) {
          LoadingDialog.showLoadingDialog(context);
        } else if (state is AddRealisasiDinasSuccess) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.success,
              message: state.message,
            ),
          );
          widget.totalBiayaRealisasiController
              .removeListener(_onTotalBiayaRealisasiChanged);
          Navigator.of(context).pop();
          Navigator.pop(context);
          widget.reloadDataCallback();
        } else if (state is DetailEditRealisasiDinasSuccess) {
          LoadingDialog.dismissDialog(context);
          setState(() {
            dataDetailrealisasiDinas = state;
          });
        } else if (state is DetailBiayaSPDSuceess) {
          LoadingDialog.dismissDialog(context);
          setState(() {
            detailSelectedSPD = state;
            print("Detail Selected SPD >>> ${detailSelectedSPD}");

            DataDetailDinas? selectedSPD = detailSelectedSPD?.dataDetailSPD;

            widget.valueNomorSpdController.text =
                selectedSPD?.nomor?.toString() ?? '';
            widget.idNomorSpdController.text =
                selectedSPD?.id?.toString() ?? '';

            widget.valueDivisiController.text =
                selectedSPD?.mDivisiNama?.toString() ?? '';
            widget.idDivisiController.text =
                selectedSPD?.mDivisiId?.toString() ?? '';

            widget.valueDepartemenController.text =
                selectedSPD?.mDeptNama?.toString() ?? '';
            widget.idDepartemenController.text =
                selectedSPD?.mDeptId?.toString() ?? '';

            widget.valuePosisiController.text =
                selectedSPD?.mPosisiDescKerja?.toString() ?? '';
            widget.idPosisiController.text =
                selectedSPD?.mPosisiId?.toString() ?? '';

            widget.valueDirektoratController.text =
                selectedSPD?.mDirNama?.toString() ?? '';
            widget.idDirektoratController.text =
                selectedSPD?.mDirId?.toString() ?? '';

            widget.tanggalController.text =
                selectedSPD?.tanggal?.toString() ?? '';
            widget.tanggalAwalController.text =
                selectedSPD?.tglAcaraAwal?.toString() ?? '';
            widget.tanggalAkhirController.text =
                selectedSPD?.tglAcaraAkhir?.toString() ?? '';
            widget.jumlahHariController.text =
                selectedSPD?.interval?.toString() ?? '';

            widget.valueZonaAsalController.text =
                selectedSPD?.mZonaAsalNama?.toString() ?? '';
            widget.idZonaAsalController.text =
                selectedSPD?.mZonaAsalId?.toString() ?? '';

            widget.valueZonaTujuanController.text =
                selectedSPD?.mZonaTujuanNama?.toString() ?? '';
            widget.idZonaTujuanController.text =
                selectedSPD?.mZonaTujuanId?.toString() ?? '';

            widget.valueLokasiTujuanController.text =
                selectedSPD?.mLokasiTujuanNama?.toString() ?? '';
            widget.idLokasiTujuanController.text =
                selectedSPD?.mLokasiTujuanId?.toString() ?? '';

            widget.nikController.text = selectedSPD?.mKaryNik?.toString() ?? '';

            widget.valuePicController.text =
                selectedSPD?.picNamaLengkap?.toString() ?? '';
            widget.idPicController.text = selectedSPD?.picId?.toString() ?? '';

            widget.statusController.text =
                selectedSPD?.status?.toString() ?? '';

            widget.totalBiayaController.text =
                formatRupiah(selectedSPD?.totalBiaya?.toDouble() ?? 0.0);

            widget.kendDinasController.text =
                selectedSPD?.isKendDinas?.toString() ?? '';

            widget.namaKendDinasController.text =
                selectedSPD?.catatanKend ?? '';

            print(selectedSPD?.detBiaya);

            /// Mengisi Data expenseDetails untuk Dynamic Form
            // Clear the existing expenseDetails list
            expenseDetails.clear();

            // Check if dataDetailSPD is not null before accessing its properties
            if (detailSelectedSPD?.dataDetailSPD.detBiaya != null) {
              final detBiaya = detailSelectedSPD?.dataDetailSPD.detBiaya;

              // Iterate over the detBiaya list and create ExpenseDetail objects
              for (var detBiaya in detBiaya ?? []) {
                final expenseDetail = ExpenseDetail();

                expenseDetail.idTipeController.text =
                    detBiaya.tipeId?.toString() ?? '';
                expenseDetail.valueTipeController.text =
                    detBiaya.tipeValue?.toString() ?? '';
                expenseDetail.costController.text =
                    (double.parse(detBiaya.totalBiaya?.toString() ?? '0')
                            .round())
                        .toString();
                expenseDetail.descriptionController.text =
                    detBiaya.keterangan ?? '';
                expenseDetail.biayaRealisasiController.text = '';
                expenseDetail.catatanRealisasiController.text = '';

                expenseDetails.add(expenseDetail);
              }
            }
          });
        } else if (state is AddRealisasiDinasFailed) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
          Navigator.pop(context);
        } else if (state is AddRealisasiDinasFailedUserExpired) {
          LoadingDialog.dismissDialog(context);
          await showDialog(
            context: context,
            builder: (_) => DialogCustom(
              state: DialogCustomItem.error,
              message: state.message,
            ),
          );
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else if (state is AddRealisasiDinasFailedInBackground) {
          LoadingDialog.dismissDialog(context);
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.routeName, (route) => false);
        } else {
          LoadingDialog.dismissDialog(context);
        }
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                MyColorsConst.primaryDarkColor,
                MyColorsConst.primaryColor,
              ],
              stops: [0.0, 0.1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 40.sp),
              Container(
                padding: EdgeInsets.all(5.0.sp),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: size.width / 14,
                    ),
                    Expanded(
                      child: Text(
                        "Edit Realisasi Perjalanan Dinas",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: BlocBuilder<AddRealisasiDinasBloc,
                      AddRealisasiDinasState>(
                    builder: (context, state) {
                      return SingleChildScrollView(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const SizedBox(height: 20),
                              FormDropDownData(
                                input: '',
                                onTap: () {
                                  _showNomoreSpd(context);
                                },
                                idController: widget.idNomorSpdController,
                                valueController: widget.valueNomorSpdController,
                                hintText: 'Cari Nomor Spd',
                                labelTag: 'Label-TemplateRspd',
                                formTag: 'Form-TemplateRspd',
                                labelForm: 'Nomor SPD',
                                validator: (value) {},
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              if (widget.valueDirektoratController.text != '')
                                FormInputData(
                                  input: '',
                                  onTap: () {},
                                  controller: widget.valueDirektoratController,
                                  hintText: 'Autofill Direktorat',
                                  labelTag: 'Label-DirektoratRspd',
                                  formTag: 'Form-DirektoratRspd',
                                  labelForm: 'Direktorat',
                                  validator: (value) {},
                                  enabled: false,
                                  errorTextStyle:
                                      GoogleFonts.poppins(fontSize: 8),
                                ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.valueDivisiController,
                                hintText: 'Autofill Divisi',
                                labelTag: 'Label-DivisiRspd',
                                formTag: 'Form-DivisiRspd',
                                labelForm: 'Divisi',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.valueDepartemenController,
                                hintText: 'Autofill Departemen',
                                labelTag: 'Label-DepartemenRspd',
                                formTag: 'Form-DepartemenRspd',
                                labelForm: 'Departemen',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.valuePosisiController,
                                hintText: 'Autofill Posisi',
                                labelTag: 'Label-PosisiRspd',
                                formTag: 'Form-PosisiRspd',
                                labelForm: 'Posisi',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.tanggalController,
                                hintText: 'Autofill Tanggal',
                                labelTag: 'Label-TanggalPengajuan',
                                formTag: 'Form-TanggalPengajuan',
                                labelForm: 'Tanggal Pengajuan',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.tanggalAwalController,
                                hintText: 'Autofill Tanggal',
                                labelTag: 'Label-TanggalAwalRspd',
                                formTag: 'Form-TanggalAwalRspd',
                                labelForm: 'Tanggal Acara Awal',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.tanggalAwalController,
                                hintText: 'Autofill Tanggal',
                                labelTag: 'Label-TanggalAkhirRspd',
                                formTag: 'Form-TanggalAkhirRspd',
                                labelForm: 'Tanggal Acara Akhir',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.jumlahHariController,
                                hintText: 'Autofill Durasi Hari Dinas',
                                labelTag: 'Label-DurasiHari',
                                formTag: 'Form-DurasiHari',
                                labelForm: 'Durasi Hari',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.valueZonaAsalController,
                                hintText: 'Autofill Zona Asal',
                                labelTag: 'Label-ZonaAsalRspd',
                                formTag: 'Form-ZonaAsalRspd',
                                labelForm: 'Zona Asal',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.valueZonaTujuanController,
                                hintText: 'Autofill Zona Tujuan',
                                labelTag: 'Label-ZonaTujuanRspd',
                                formTag: 'Form-ZonaTujuanRspd',
                                labelForm: 'Zona Tujuan',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.valueLokasiTujuanController,
                                hintText: 'Autofill Lokasi',
                                labelTag: 'Label-LokasiRspd',
                                formTag: 'Form-LokasiRspd',
                                labelForm: 'Lokasi Tujuan',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.nikController,
                                hintText: 'Autofill NIK',
                                labelTag: 'Label-NIKRspd',
                                formTag: 'Form-NIKRspd',
                                labelForm: 'NIK',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                enabled: false,
                                controller: widget.valuePicController,
                                hintText: 'Autofill Pic',
                                labelTag: 'Label-PicRspd',
                                formTag: 'Form-PicRspd',
                                labelForm: 'PIC',
                                validator: (value) {},
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.totalBiayaController,
                                hintText: 'Autofill Total Biaya',
                                labelTag: 'Label-TotalBiaya',
                                formTag: 'Form-TotalBiaya',
                                labelForm: 'Total Biaya',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                inputType: TextInputType.number,
                                input: '',
                                onTap: () {},
                                enabled: false,
                                controller:
                                    widget.totalBiayaRealisasiController,
                                hintText: 'Total Biaya Realisasi',
                                labelTag: 'Label-TotalBR',
                                formTag: 'Form-TotalBR',
                                labelForm: 'Total Biaya Realisasi',
                                onChanged: (value) {},
                                validator: (value) {},
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 10.sp),
                              ),
                              FormInputData(
                                inputType: TextInputType.number,
                                input: '',
                                onTap: () {},
                                enabled: false,
                                controller:
                                    widget.totalBiayaRencanaSelisihController,
                                hintText: 'Selisih Total Biaya Realisasi',
                                labelTag: 'Label-TotalBRS',
                                formTag: 'Form-TotalBRS',
                                labelForm: 'Selisih Total Biaya Realisasi',
                                onChanged: (value) {},
                                validator: (value) {},
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 10.sp),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.keteranganUtamaController,
                                hintText: 'Tuliskan Keterangan',
                                labelTag: 'Label-KeteranganUtama',
                                formTag: 'Form-KeteranganUtama',
                                labelForm: 'Keterangan',
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Belum isi keterangan';
                                  }
                                  return null;
                                },
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.statusController,
                                hintText: 'Autofill Status',
                                labelTag: 'Label-Status',
                                formTag: 'Form-Status',
                                labelForm: 'Status',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              Row(
                                children: [
                                  const FormTextLabel(
                                    label: 'Menggunakan Kendaraan Dinas',
                                    labelColor: MyColorsConst.darkColor,
                                  ),
                                  SizedBox(width: 2.sp),
                                  Text(
                                    '*',
                                    style:
                                        GoogleFonts.poppins(color: Colors.red),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Radio(
                                        value: true,
                                        groupValue:
                                            widget.kendDinasController.text ==
                                                    'true'
                                                ? true
                                                : widget.kendDinasController
                                                        .text.isEmpty
                                                    ? null
                                                    : false,
                                        onChanged: (bool? value) {},
                                      ),
                                      Text(
                                        'Iya',
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                        value: false,
                                        groupValue:
                                            widget.kendDinasController.text ==
                                                    'false'
                                                ? false
                                                : widget.kendDinasController
                                                        .text.isEmpty
                                                    ? null
                                                    : true,
                                        onChanged: (bool? value) {},
                                      ),
                                      Text(
                                        'Tidak',
                                        style: GoogleFonts.poppins(
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.sp),
                              if (widget.namaKendDinasController.text !=
                                  '') ...{
                                FormInputData(
                                  input: '',
                                  onTap: () {},
                                  controller: widget.namaKendDinasController,
                                  hintText: 'Autofill Nama Kendaraan',
                                  labelTag: 'Label-NamaKend',
                                  formTag: 'Form-NamaKend',
                                  labelForm: 'Nama Kendaraan',
                                  validator: (value) {},
                                  enabled: false,
                                  errorTextStyle:
                                      GoogleFonts.poppins(fontSize: 8),
                                ),
                              },
                              SizedBox(height: 20.sp),
                              Text(
                                'Rincian Biaya',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  color: MyColorsConst.primaryColor,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 10.sp),
                              if (expenseDetails.isNotEmpty) ...{
                                ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: expenseDetails.length,
                                  itemBuilder: (context, index) {
                                    return DynamicFormField(
                                      expenseDetail: expenseDetails[index],
                                      onDelete: () {
                                        setState(() {
                                          expenseDetails
                                              .remove(expenseDetails[index]);
                                        });
                                      },
                                      onBiayaChanged: onDataChanged,
                                      indexForm: index,
                                    );
                                  },
                                ),
                              },
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    expenseDetails.add(ExpenseDetail());
                                    onDataChanged();
                                  });
                                },
                                child: Text(
                                  'Tambah Biaya',
                                  style: GoogleFonts.poppins(),
                                ),
                              ),
                              SizedBox(height: 20.sp),
                              TextButtonCustomV1(
                                text: "Kirim",
                                height: 50,
                                backgroundColor:
                                    MyColorsConst.primaryColor.withOpacity(0.1),
                                textColor: MyColorsConst.primaryColor,
                                onPressed: state is AddRealisasiDinasLoading
                                    ? null
                                    : () {
                                        print("INI DATA YANG DIKIRIM :");

                                        num parseCurrency(String currency) {
                                          try {
                                            final numberFormat =
                                                NumberFormat.currency(
                                                    locale: 'id_ID',
                                                    symbol: 'Rp ');
                                            // Hapus simbol mata uang dan koma, lalu parse sebagai num
                                            return numberFormat.parse(currency
                                                .replaceAll('Rp ', '')
                                                .replaceAll(',', ''));
                                          } catch (e) {
                                            return 0;
                                          }
                                        }

                                        // Parse formatted currency string to double
                                        num totalBiayaSelisih = parseCurrency(
                                            widget
                                                .totalBiayaRencanaSelisihController
                                                .value
                                                .text);
                                        print(totalBiayaSelisih);

                                        int idNomorSpd = int.parse(widget
                                            .idNomorSpdController.value.text);
                                        print(idNomorSpd);

                                        String keteranganUtama = widget
                                            .keteranganUtamaController
                                            .value
                                            .text;
                                        print(keteranganUtama);

                                        showDialog(
                                          context: context,
                                          builder: (_) => DialogCustom(
                                            state: DialogCustomItem.confirm,
                                            message:
                                                "Pastikan Data Sudah Benar",
                                            durationInSec: 5,
                                            onContinue: () => context
                                                .read<AddRealisasiDinasBloc>()
                                                .add(
                                                  AddRealisasiDinasSubmited(
                                                    tSpdId: idNomorSpd,
                                                    totalBiayaSelisih:
                                                        totalBiayaSelisih
                                                            .toDouble(),
                                                    keterangan: widget
                                                        .keteranganUtamaController
                                                        .value
                                                        .text,
                                                    tRpdDetList: expenseDetails
                                                        .map((expense) {
                                                      return {
                                                        "tipe_spd_id": expense
                                                            .idTipeController
                                                            .value
                                                            .text,
                                                        "is_kendaraan_dinas":
                                                            widget.kendDinasController
                                                                        .text ==
                                                                    "false"
                                                                ? 0
                                                                : 1,
                                                        "biaya": expense
                                                            .costController
                                                            .value
                                                            .text,
                                                        "biaya_realisasi": expense
                                                            .biayaRealisasiController
                                                            .value
                                                            .text,
                                                        "detail_transport": expense
                                                            .descriptionController
                                                            .value
                                                            .text,
                                                        "catatan_realisasi": expense
                                                            .catatanRealisasiController
                                                            .value
                                                            .text,
                                                      };
                                                    }).toList(),
                                                  ),
                                                ),
                                          ),
                                        );
                                      },
                              ),
                              const SizedBox(height: 30)
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ExpenseDetail {
  final TextEditingController idTipeController = TextEditingController();
  final TextEditingController valueTipeController = TextEditingController();
  final TextEditingController costController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController biayaRealisasiController =
      TextEditingController();
  final TextEditingController catatanRealisasiController =
      TextEditingController();
}

class DynamicFormField extends StatefulWidget {
  final ExpenseDetail expenseDetail;
  final VoidCallback onDelete;
  final VoidCallback onBiayaChanged;
  final int indexForm;

  const DynamicFormField({
    required this.expenseDetail,
    required this.onDelete,
    required this.onBiayaChanged,
    required this.indexForm,
  });

  @override
  State<DynamicFormField> createState() => _DynamicFormFieldState();
}

class _DynamicFormFieldState extends State<DynamicFormField> {
  var selectedTipe;
  String noteTopBiayaAwal = '';
  String noteTopRealisasi = '';

  @override
  void initState() {
    super.initState();
    print("Init State: ${widget.expenseDetail.costController.text}");
    updateNoteTop(widget.expenseDetail.costController.text, isBiayaAwal: false);
    widget.expenseDetail.costController.addListener(() {
      print(
          "Cost Controller Changed: ${widget.expenseDetail.costController.text}");
      if (widget.expenseDetail.costController.text.isNotEmpty) {
        updateNoteTop(widget.expenseDetail.costController.text,
            isBiayaAwal: false);
      }
    });
  }

  @override
  void dispose() {
    widget.expenseDetail.costController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var dataTipe = context.read<AddRealisasiDinasBloc>().listTipe;

    Future<DataGeneral?> showTipe(BuildContext context) async {
      if (dataTipe.isEmpty) {
        context.read<AddRealisasiDinasBloc>().add(OnSelectTipe());
        dataTipe = context.read<AddRealisasiDinasBloc>().listTipe;
      }

      if (dataTipe.isNotEmpty) {
        final selectedTipe = await showSearch<DataGeneral?>(
          context: context,
          delegate: GeneralSearchDelegate(
            dataList: dataTipe,
            filteredData: dataTipe,
          ),
        );

        if (selectedTipe != null) {
          widget.expenseDetail.idTipeController.text =
              selectedTipe.id?.toString() ?? '';
          widget.expenseDetail.valueTipeController.text =
              selectedTipe.value?.toString() ?? '';

          setState(() {
            this.selectedTipe = selectedTipe.value;
            print(selectedTipe.value);
            print("Selected ID Tipe: ${selectedTipe.id}");
          });

          return selectedTipe;
        } else {
          return null;
        }
      } else {
        print("Tidak Ada Item");
      }
      return null;
    }

    return Column(
      children: [
        FormDropDownData(
          input: '',
          onTap: () {
            showTipe(context);
          },
          idController: widget.expenseDetail.idTipeController,
          valueController: widget.expenseDetail.valueTipeController,
          hintText: 'Tipe',
          labelTag: 'Label-Tipe${widget.indexForm}',
          formTag: 'Form-Tipe${widget.indexForm}',
          labelForm: 'Tipe',
          validator: (value) {},
          errorTextStyle: GoogleFonts.poppins(fontSize: 8),
        ),
        FormInputDataWithNote(
          input: '',
          onTap: () {},
          onChanged: (value) {
            updateNoteTop(value!, isBiayaAwal: false);
          },
          noteTop: noteTopBiayaAwal,
          controller: widget.expenseDetail.costController,
          hintText: 'Biaya Awal',
          labelTag: 'Label-Biaya${widget.indexForm}',
          formTag: 'Form-Biaya${widget.indexForm}',
          labelForm: 'Biaya Awal',
          noteBottom: 'Jika terdapat koma isilah dengan titik(.).',
          inputType: TextInputType.number,
          validator: (value) {},
          enabled: true, // Sesuaikan dengan kebutuhan
          errorTextStyle: GoogleFonts.poppins(fontSize: 8),
        ),
        FormInputData(
          input: '',
          onTap: () {},
          controller: widget.expenseDetail.descriptionController,
          hintText: 'Keterangan',
          labelTag: 'Label-KeteranganBiaya${widget.indexForm}',
          formTag: 'Form-KeteranganBiaya${widget.indexForm}',
          labelForm: 'Keterangan',
          validator: (value) {},
          enabled: true, // Sesuaikan dengan kebutuhan
          errorTextStyle: GoogleFonts.poppins(fontSize: 8),
        ),
        FormInputDataWithNote(
          input: '',
          onTap: () {},
          onChanged: (value) {
            updateNoteTop(value!, isBiayaAwal: true);
            widget.onBiayaChanged();
          },
          controller: widget.expenseDetail.biayaRealisasiController,
          noteTop: noteTopRealisasi.toString(),
          hintText: 'Tuliskan Biaya',
          labelTag: 'Label-BiayaRealisasi${widget.indexForm}',
          formTag: 'Form-BiayaRealisasi${widget.indexForm}',
          labelForm: 'Biaya Realisasi',
          noteBottom: 'Jika terdapat koma isilah dengan titik(.).',
          inputType: TextInputType.number,
          validator: (value) {},
          enabled: true, // Sesuaikan dengan kebutuhan
          errorTextStyle: GoogleFonts.poppins(fontSize: 8),
        ),
        FormInputData(
          input: '',
          onTap: () {},
          controller: widget.expenseDetail.catatanRealisasiController,
          hintText: 'Tuliskan Catatan',
          labelTag: 'Label-CatatanRealisasi${widget.indexForm}',
          formTag: 'Form-CatatanRealisasi${widget.indexForm}',
          labelForm: 'Catatan Realisasi',
          validator: (value) {},
          enabled: true, // Sesuaikan dengan kebutuhan
          errorTextStyle: GoogleFonts.poppins(fontSize: 8),
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  widget.onDelete();
                  widget.onBiayaChanged();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade700),
                child: Text(
                  'Hapus Rincian Biaya',
                  style: GoogleFonts.poppins(
                      fontSize: 13.sp, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
        const Divider(
          height: 20,
          thickness: 0.5,
          color: MyColorsConst.lightDarkColor,
        ),
      ],
    );
  }

  void updateNoteTop(String value, {required bool isBiayaAwal}) {
    double inputValue = double.tryParse(value) ?? 0.0;
    String formattedCurrency = formatRupiah(inputValue);

    setState(() {
      if (isBiayaAwal) {
        noteTopRealisasi = formattedCurrency;
      } else {
        noteTopBiayaAwal = formattedCurrency;
      }
    });
  }

  String formatRupiah(double? value) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
    ).format(value ?? 0.0).replaceAll(",00", "");
  }
}
