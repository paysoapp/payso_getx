import 'package:get/get.dart';
import 'package:payso/screens/IntroSlider/intro_slider.dart';
import 'package:payso/screens/Permissions/components/permission_item.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionGetxController extends GetxController {
  var permissionItems = [
    PermissionItem(
      permissionText: 'permissionText1'.tr,
      permission: Permission.contacts,
    ),
    PermissionItem(
      permissionText: 'permissionText2'.tr,
      permission: Permission.camera,
    ),
    PermissionItem(
      permissionText: 'permissionText3'.tr,
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
    _allPermissions.forEach((permission) async {
      if (await permission.isDenied || await permission.isRestricted) {
        await isAllPermissionAllowed();
      } else {
        Get.offAll(IntroSlider());
      }
    });
  }
}
