import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
import 'package:sj_presensi_mobile/services/model/list_general/response_general.dart';
import 'package:sj_presensi_mobile/utils/const.dart';

class AddRealisasiDinasPage extends StatefulWidget {
  AddRealisasiDinasPage({super.key, required this.reloadDataCallback});
  final VoidCallback reloadDataCallback;
  static const routeName = '/AddRealisasiDinasPage';

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
  final TextEditingController totalBiayaRencanaSelisihController =
      TextEditingController();
  final TextEditingController keteranganUtamaController =
      TextEditingController();

  // Rincian biaya
  // final TextEditingController idTipeController = TextEditingController();
  // final TextEditingController valueTipeController = TextEditingController();
  final TextEditingController biayaController = TextEditingController();
  final TextEditingController keteranganController = TextEditingController();
  final TextEditingController biayaRealisasiController =
      TextEditingController();
  final TextEditingController catatanController = TextEditingController();

  @override
  State<AddRealisasiDinasPage> createState() => _AddRealisasiDinasPageState();
}

class _AddRealisasiDinasPageState extends State<AddRealisasiDinasPage> {
  String? selectedNomorSpd;
  String? selectedTipe;
  List<ExpenseDetail> expenseDetails = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.biayaRealisasiController.addListener(_updateTotalBiaya);

      final organisasiBloc = context.read<AddRealisasiDinasBloc>();

      organisasiBloc.add(OnSelectDinasApproved());
      organisasiBloc.add(OnSelectTipe());
    });
  }

  void _updateTotalBiaya() {
    double totalBiaya = 0.0;

    // Hitung total biaya dari semua expenseDetails
    for (ExpenseDetail expenseDetail in expenseDetails) {
      double biayaRealisasi =
          double.tryParse(expenseDetail.biayaRealisasiController.text) ?? 0.0;
      totalBiaya += biayaRealisasi;
    }

    // Set nilai totalBiaya ke totalBiayaRencanaSelisihController
    widget.totalBiayaRencanaSelisihController.text = totalBiaya.toString();
  }

  @override
  void dispose() {
    // Hapus listener saat widget di dispose
    widget.biayaRealisasiController.removeListener(_updateTotalBiaya);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var dataDinasApproved =
        context.read<AddRealisasiDinasBloc>().listDinasApproved;
    var dataTipe = context.read<AddRealisasiDinasBloc>().listTipe;

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
          widget.valueNomorSpdController.text =
              selectedNomorSpd.nomor?.toString() ?? '';
          widget.idNomorSpdController.text =
              selectedNomorSpd.id?.toString() ?? '';

          widget.valueDivisiController.text =
              selectedNomorSpd.mDivisiNama?.toString() ?? '';
          widget.idDivisiController.text =
              selectedNomorSpd.mDivisiId?.toString() ?? '';

          widget.valueDepartemenController.text =
              selectedNomorSpd.mDeptNama?.toString() ?? '';
          widget.idDepartemenController.text =
              selectedNomorSpd.mDeptId?.toString() ?? '';

          widget.valuePosisiController.text =
              selectedNomorSpd.mPosisiDescKerja?.toString() ?? '';
          widget.idPosisiController.text =
              selectedNomorSpd.mPosisiId?.toString() ?? '';

          widget.valueDirektoratController.text =
              selectedNomorSpd.mDirNama?.toString() ?? '';
          widget.idDirektoratController.text =
              selectedNomorSpd.mDirId?.toString() ?? '';

          widget.tanggalController.text =
              selectedNomorSpd.tanggal?.toString() ?? '';
          widget.tanggalAwalController.text =
              selectedNomorSpd.tglAcaraAwal?.toString() ?? '';
          widget.tanggalAkhirController.text =
              selectedNomorSpd.tglAcaraAkhir?.toString() ?? '';
          // widget.jumlahHariController.text =
          //     selectedNomorSpd.?.toString() ?? '';

          widget.valueZonaAsalController.text =
              selectedNomorSpd.mZonaAsalNama?.toString() ?? '';
          widget.idZonaAsalController.text =
              selectedNomorSpd.mZonaAsalId?.toString() ?? '';

          widget.valueZonaTujuanController.text =
              selectedNomorSpd.mZonaTujuanNama?.toString() ?? '';
          widget.idZonaTujuanController.text =
              selectedNomorSpd.mZonaTujuanId?.toString() ?? '';

          widget.valueLokasiTujuanController.text =
              selectedNomorSpd.mLokasiTujuanNama?.toString() ?? '';
          widget.idLokasiTujuanController.text =
              selectedNomorSpd.mLokasiTujuanId?.toString() ?? '';

          widget.nikController.text =
              selectedNomorSpd.mKaryNik?.toString() ?? '';

          widget.valuePicController.text =
              selectedNomorSpd.picNamaLengkap?.toString() ?? '';
          widget.idPicController.text =
              selectedNomorSpd.picId?.toString() ?? '';

          widget.statusController.text =
              selectedNomorSpd.status?.toString() ?? '';

          widget.totalBiayaController.text =
              selectedNomorSpd.totalBiaya?.toString() ?? '';

          widget.kendDinasController.text =
              selectedNomorSpd.isKendDinas?.toString() ?? '';
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
          Navigator.of(context).pop();
          widget.reloadDataCallback();
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
                      width: size.width * 0.5 / 4,
                    ),
                    Expanded(
                      child: Text(
                        "Realisasi Perjalanan Dinas",
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: BlocBuilder<AddRealisasiDinasBloc,
                        AddRealisasiDinasState>(
                      builder: (context, state) {
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.nomorController,
                                hintText: 'Nomor',
                                labelTag: 'Label-NomorRspd',
                                formTag: 'Form-NomorRspd',
                                labelForm: 'Nomor',
                                validator: (value) {
                                  return null;
                                },
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
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
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.valueDirektoratController,
                                hintText: 'Pilih Direktorat',
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
                                hintText: 'Pilih Divisi',
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
                                hintText: 'Pilih Departemen',
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
                                hintText: 'Pilih Posisi',
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
                                hintText: 'Pilih Tanggal',
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
                                hintText: 'Pilih Tanggal',
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
                                hintText: 'Pilih Tanggal',
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
                                hintText: 'Jumlah',
                                labelTag: 'Label-JumlahHari',
                                formTag: 'Form-JumlahHari',
                                labelForm: 'Jumlah Hari',
                                validator: (value) {},
                                enabled: false,
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.valueZonaAsalController,
                                hintText: 'Pilih Zona',
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
                                hintText: 'Pilih Zona',
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
                                hintText: 'Pilih Lokasi',
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
                                hintText: 'NIK',
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
                                hintText: 'Pic',
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
                                hintText: 'Total Biaya',
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
                                    widget.totalBiayaRencanaSelisihController,
                                hintText: 'Total Biaya Rencana Selisih',
                                labelTag: 'Label-TotalBRS',
                                formTag: 'Form-TotalBRS',
                                labelForm: 'Total Biaya Rencana Selisih',
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Pilih Alasan Cuti';
                                  }
                                  return null;
                                },
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
                                validator: (value) {},
                                errorTextStyle:
                                    GoogleFonts.poppins(fontSize: 8),
                              ),
                              FormInputData(
                                input: '',
                                onTap: () {},
                                controller: widget.statusController,
                                hintText: 'Status',
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
                                        onChanged: (bool? value) {
                                          // Tidak melakukan perubahan karena radio tidak dapat diubah
                                        },
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
                                        onChanged: (bool? value) {
                                          // Tidak melakukan perubahan karena radio tidak dapat diubah
                                        },
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
                              SizedBox(height: 30.sp),
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
                                      indexForm: index,
                                    );
                                  },
                                ),
                              },
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    expenseDetails.add(ExpenseDetail());
                                  });
                                },
                                child: Text('Tambah Biaya'),
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
                                        print(double.parse(widget
                                            .totalBiayaRencanaSelisihController
                                            .value
                                            .text));
                                        print(int.parse(widget
                                            .idNomorSpdController.value.text));
                                        print(widget.keteranganUtamaController
                                            .value.text);
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
                                                      tSpdId: int.parse(widget
                                                          .idNomorSpdController
                                                          .value
                                                          .text),
                                                      totalBiayaSelisih:
                                                          double.parse(widget
                                                              .totalBiayaRencanaSelisihController
                                                              .value
                                                              .text),
                                                      // totalBiayaSelisih:
                                                      //     double.parse("2000000"),
                                                      keterangan: widget
                                                          .keteranganController
                                                          .text,
                                                      tRpdDetList:
                                                          expenseDetails
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
                                                          "biaya_realisasi": expense
                                                              .biayaRealisasiController
                                                              .value
                                                              .text,
                                                          "detail_transport":
                                                              expense
                                                                  .descriptionController
                                                                  .value
                                                                  .text,
                                                          "catatan_realisas":
                                                              expense
                                                                  .catatanRealisasiController
                                                                  .value
                                                                  .text,
                                                        };
                                                      }).toList(),
                                                    ),
                                                  )),
                                        );
                                      },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
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
  final int indexForm;

  const DynamicFormField({
    required this.expenseDetail,
    required this.onDelete,
    required this.indexForm,
  });

  @override
  State<DynamicFormField> createState() => _DynamicFormFieldState();
}

class _DynamicFormFieldState extends State<DynamicFormField> {
  var selectedTipe;

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
        FormInputData(
          input: '',
          onTap: () {},
          controller: widget.expenseDetail.costController,
          hintText: 'Biaya',
          labelTag: 'Label-Biaya${widget.indexForm}',
          formTag: 'Form-Biaya${widget.indexForm}',
          labelForm: 'Biaya',
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
        FormInputData(
          input: '',
          onTap: () {},
          controller: widget.expenseDetail.biayaRealisasiController,
          hintText: 'Tuliskan Biaya',
          labelTag: 'Label-BiayaRealisasi${widget.indexForm}',
          formTag: 'Form-BiayaRealisasi${widget.indexForm}',
          labelForm: 'Biaya Realisasi',
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
                onPressed: widget.onDelete,
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
}
