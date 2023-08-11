import '/app/features/auth/domain/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver.freezed.dart';
part 'driver.g.dart';

//   id           String    @id @default(cuid())
// namaLengkap  String
// alamat       String
// nik          String
// nokk         String
// noHp         String
// noPlatMobil  String
// maxPenumpang Int
// fotoKtp      String
// fotoMobil    String

@freezed
class Driver with _$Driver {
  const factory Driver({
    required String id,
    required String namaLengkap,
    required String alamat,
    required String nik,
    required String nokk,
    required String noHp,
    required String noPlatMobil,
    required String maxPenumpang,
    required String fotoKtp,
    required String fotoMobil,
    required User user,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}

enum UserRole { driver, passenger }
