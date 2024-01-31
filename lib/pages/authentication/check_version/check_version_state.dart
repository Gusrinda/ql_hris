part of 'check_version_bloc.dart';

abstract class CheckVersionState extends Equatable {
  const CheckVersionState();

  @override
  List<Object> get props => [];
}

class CheckVersionInitial extends CheckVersionState {}

class CheckVersionLoading extends CheckVersionState {}

class CheckVersionSuccess extends CheckVersionState {
  final DataVersion? dataVersion;

  Future<bool> get isVersionMatch async {
    print("isVersionMatch Dijalankan");

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final String? pubspecVersion = packageInfo.version;
    print("Current App Version From pubspec.yaml: $pubspecVersion");

    // Ubah Versinya Manual ambil dari version pubspec.yaml
    String staticPubspecVersion = "5.5.0";

    if (dataVersion != null && dataVersion!.version != null) {
      final String appVersion = dataVersion!.version!;
      print("New App Version: $appVersion");

      final String pubspecAppVersion = pubspecVersion ?? staticPubspecVersion;
      print("Current App Version: $pubspecAppVersion");

      return appVersion == pubspecAppVersion;
    }

    return false;
  }

  // String? _getPubspecVersion() {
  //   try {
  //     String currentDirectory = Directory.current.path;

  //     String pubspecPath = join(currentDirectory, 'pubspec.yaml');
  //     final File pubspecFile = File(pubspecPath);

  //     final String pubspecContent = pubspecFile.readAsStringSync();
  //     final YamlMap yamlMap = loadYaml(pubspecContent);

  //     final String? pubspecVersion = yamlMap['version'];
  //     print('Pubspec Version: $pubspecVersion');

  //     return pubspecVersion;
  //   } catch (e) {
  //     print('Error getting version from pubspec.yaml: $e');

  //     return null;
  //   }
  // }

  CheckVersionSuccess({required this.dataVersion});
}

class CheckVersionFailed extends CheckVersionState {
  String message;
  CheckVersionFailed({required this.message});

  @override
  List<Object> get props => [message];
}

class CheckVersionFailedUserExpired extends CheckVersionState {
  String message;

  CheckVersionFailedUserExpired({required this.message});

  @override
  List<Object> get props => [message];
}
