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
  final TextEditingController idTipeController = TextEditingController();
  final TextEditingController valueTipeController = TextEditingController();
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

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final organisasiBloc = context.read<AddRealisasiDinasBloc>();

      organisasiBloc.add(OnSelectDinasApproved());
      organisasiBloc.add(OnSelectTipe());
    });
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
        print("Tidak Ada Item");
      }
    }

    void showTipe(BuildContext context) async {
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
          widget.idTipeController.text = selectedTipe.id?.toString() ?? '';
          widget.valueTipeController.text =
              selectedTipe.value?.toString() ?? '';

          setState(() {
            this.selectedTipe = selectedTipe.value;
            print(selectedTipe.value);
            print("Selected ID Tipe: ${selectedTipe.id}");
          });
        }
      } else {
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
                        return Column(
                          children: [
                            Expanded(
                              child: ListView(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        validator: (value) {},
                                        enabled: false,
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      FormDropDownData(
                                        input: '',
                                        onTap: () {
                                          _showNomoreSpd(context);
                                        },
                                        idController:
                                            widget.idNomorSpdController,
                                        valueController:
                                            widget.valueNomorSpdController,
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
                                        controller:
                                            widget.valueDirektoratController,
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
                                        controller:
                                            widget.valueDivisiController,
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
                                        controller:
                                            widget.valueDepartemenController,
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
                                        controller:
                                            widget.valuePosisiController,
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
                                        controller:
                                            widget.tanggalAwalController,
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
                                        controller:
                                            widget.tanggalAwalController,
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
                                        controller:
                                            widget.valueZonaAsalController,
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
                                        controller:
                                            widget.valueZonaTujuanController,
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
                                        controller:
                                            widget.valueLokasiTujuanController,
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
                                        controller: widget
                                            .totalBiayaRencanaSelisihController,
                                        hintText: 'Total Biaya Rencana Selisih',
                                        labelTag: 'Label-TotalBRS',
                                        formTag: 'Form-TotalBRS',
                                        labelForm:
                                            'Total Biaya Rencana Selisih',
                                        validator: (value) {},
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      FormInputData(
                                        input: '',
                                        onTap: () {},
                                        controller:
                                            widget.keteranganUtamaController,
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
                                            label:
                                                'Menggunakan Kendaraan Dinas',
                                            labelColor: MyColorsConst.darkColor,
                                          ),
                                          SizedBox(width: 2.sp),
                                          Text(
                                            '*',
                                            style: GoogleFonts.poppins(
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Row(
                                            children: [
                                              Radio(
                                                value: true,
                                                groupValue: widget
                                                            .kendDinasController
                                                            .text ==
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
                                                groupValue: widget
                                                            .kendDinasController
                                                            .text ==
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
                                      FormDropDownData(
                                        input: '',
                                        onTap: () {
                                          showTipe(context);
                                        },
                                        idController: widget.idTipeController,
                                        valueController: widget.valueTipeController,
                                        hintText: 'Tipe',
                                        labelTag: 'Label-Tipe',
                                        formTag: 'Form-Tipe',
                                        labelForm: 'Tipe',
                                        validator: (value) {},
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      FormInputData(
                                        inputType: TextInputType.number,
                                        input: '',
                                        onTap: () {},
                                        controller: widget.biayaController,
                                        hintText: 'Biaya',
                                        labelTag: 'Label-Biaya',
                                        formTag: 'Form-Biaya',
                                        labelForm: 'Biaya',
                                        validator: (value) {},
                                        enabled: true,
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      FormInputData(
                                        input: '',
                                        onTap: () {},
                                        controller: widget.keteranganController,
                                        hintText: 'Keterangan',
                                        labelTag: 'Label-KeteranganBiaya',
                                        formTag: 'Form-KeteranganBiaya',
                                        labelForm: 'Keterangan',
                                        validator: (value) {},
                                        enabled: true,
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      FormInputData(
                                        inputType: TextInputType.number,
                                        input: '',
                                        onTap: () {},
                                        controller: widget.biayaRealisasiController,
                                        hintText: 'Tuliskan Biaya',
                                        labelTag: 'Label-BiayaRealisasi',
                                        formTag: 'Form-BiayaRealisasi',
                                        labelForm: 'Biaya Realisasi',
                                        validator: (value) {},
                                        enabled: true,
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      FormInputData(
                                        input: '',
                                        onTap: () {},
                                        controller: widget.catatanController,
                                        hintText: 'Tuliskan Catatan',
                                        labelTag: 'Label-CatatanRealisasi',
                                        formTag: 'Form-CatatanRealisasi',
                                        labelForm: 'Catatan Realisasi',
                                        validator: (value) {},
                                        enabled: true,
                                        errorTextStyle:
                                            GoogleFonts.poppins(fontSize: 8),
                                      ),
                                      SizedBox(height: 10.sp),
                                      TextButtonCustomV1(
                                        text: "Kirim",
                                        height: 50,
                                        backgroundColor: MyColorsConst
                                            .primaryColor
                                            .withOpacity(0.1),
                                        textColor: MyColorsConst.primaryColor,
                                        onPressed:
                                            state is AddRealisasiDinasLoading
                                                ? null
                                                : () {
                                                    context
                                                        .read<
                                                            AddRealisasiDinasBloc>()
                                                        .add(
                                                          AddRealisasiDinasSubmited(
                                                            tSpdId: int.parse(widget
                                                                .idNomorSpdController
                                                                .text),
                                                            totalBiayaSelisih:
                                                                double.parse(widget
                                                                    .totalBiayaRencanaSelisihController
                                                                    .text),
                                                            keterangan: widget
                                                                .keteranganController
                                                                .text,
                                                            // tRpdDetList: [],
                                                          ),
                                                        );
                                                  },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
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

// class RincianBiayaModel {
//   Map<String, dynamic> toMap() {
//     return {
//       'idTipe': idTipeController.text,
//       'valueTipe': valueTipeController.text,
//       'biaya': biayaController.text,
//       'keterangan': keteranganController.text,
//       'biayaRealisasi': biayaRealisasiController.text,
//       'catatan': catatanController.text,
//       // Add more fields if needed
//     };
//   }
// }

// class DynamicFormField extends StatelessWidget {
//   final ExpenseDetail expenseDetail;
//   final VoidCallback onDelete;
//   final VoidCallback showTipeCallback; // New callback

//   const DynamicFormField({
//     required this.expenseDetail,
//     required this.onDelete,
//     required this.showTipeCallback, // Pass the callback from the parent
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         FormDropDownData(
//           input: '',
//           onTap: showTipeCallback,
//           idController: expenseDetail.idTipeController,
//           valueController: expenseDetail.valueTipeController,
//           hintText: 'Tipe',
//           labelTag: 'Label-Tipe',
//           formTag: 'Form-Tipe',
//           labelForm: 'Tipe',
//           validator: (value) {},
//           errorTextStyle: GoogleFonts.poppins(fontSize: 8),
//         ),
//         FormInputData(
//           input: '',
//           onTap: () {},
//           controller: expenseDetail.costController,
//           hintText: 'Biaya',
//           labelTag: 'Label-Biaya',
//           formTag: 'Form-Biaya',
//           labelForm: 'Biaya',
//           validator: (value) {},
//           enabled: true, // Sesuaikan dengan kebutuhan
//           errorTextStyle: GoogleFonts.poppins(fontSize: 8),
//         ),
//         FormInputData(
//           input: '',
//           onTap: () {},
//           controller: expenseDetail.descriptionController,
//           hintText: 'Keterangan',
//           labelTag: 'Label-KeteranganBiaya',
//           formTag: 'Form-KeteranganBiaya',
//           labelForm: 'Keterangan',
//           validator: (value) {},
//           enabled: true, // Sesuaikan dengan kebutuhan
//           errorTextStyle: GoogleFonts.poppins(fontSize: 8),
//         ),
//         FormInputData(
//           input: '',
//           onTap: () {},
//           controller: expenseDetail.biayaRealisasiController,
//           hintText: 'Tuliskan Biaya',
//           labelTag: 'Label-BiayaRealisasi',
//           formTag: 'Form-BiayaRealisasi',
//           labelForm: 'Biaya Realisasi',
//           validator: (value) {},
//           enabled: true, // Sesuaikan dengan kebutuhan
//           errorTextStyle: GoogleFonts.poppins(fontSize: 8),
//         ),
//         FormInputData(
//           input: '',
//           onTap: () {},
//           controller: expenseDetail.catatanRealisasiController,
//           hintText: 'Tuliskan Catatan',
//           labelTag: 'Label-CatatanRealisasi',
//           formTag: 'Form-CatatanRealisasi',
//           labelForm: 'Catatan Realisasi',
//           validator: (value) {},
//           enabled: true, // Sesuaikan dengan kebutuhan
//           errorTextStyle: GoogleFonts.poppins(fontSize: 8),
//         ),
//         Row(
//           children: [
//             Expanded(
//               child: ElevatedButton(
//                 onPressed: onDelete,
//                 child: Text('Hapus Rincian Biaya'),
//               ),
//             ),
//           ],
//         ),
//         const Divider(
//           height: 10,
//           thickness: 0.5,
//           color: MyColorsConst.lightDarkColor,
//         ),
//       ],
//     );
//   }
// }
