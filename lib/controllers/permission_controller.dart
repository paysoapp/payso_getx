import 'package:get/get.dart';
import 'package:payso/screens/IntroSlider/intro_slider.dart';
import 'package:payso/screens/Permissions/components/permission_item.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionGetxController extends GetxController {
  var permissionItems = [
    PermissionItem(
      permissionText: 'Provide Contact Access to check who uses Payso ',
      permission: Permission.contacts,
    ),
    PermissionItem(
      permissionText: 'Allow Camera Access to scan QR codes by Camera',
      permission: Permission.camera,
    ),
    PermissionItem(
      permissionText: 'Provide Location Access get permissions',
      permission: Permission.location,
    ),
  ].obs;

  askForPermissions() async {
    Map<Permission, PermissionStatus> permissions = await [
      Permission.location,
      Permission.notification,
      Permission.camera,
      Permission.contacts,
    ].request();
  }

  askPermission(Permission permission) async {
    if (await permission.isGranted) {
      return true;
    }
    return false;
  }

  isAllPermissionAllowed() async {
    List<Permission> _allPermissions = [
      Permission.location,
      Permission.camera,
      Permission.contacts,
    ];
    await askForPermissions();
    _allPermissions.forEach((permission) async {
      if (await permission.isDenied || await permission.isRestricted) {
        await isAllPermissionAllowed();
      } else {
        Get.offAll(IntroSlider());
      }
    });
  }
//
//  checkPermission(Permission permission) async {
//    if (await permission.request().isGranted) {
//      return true;
//    }
//    return false;
//  }
}
