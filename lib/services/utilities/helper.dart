

// ignore_for_file: prefer_const_constructors

part of 'utilities.dart';

// import 'package:flutter/services.dart';

enum DataLoad { loading, done, failed }

class Helper {
  static copyData({required String data}) async {
    await Clipboard.setData(ClipboardData(text: data)).then((value) {
      setSnackbar("Berhasil Menyalin");
    });
  }

  static void loadingScreen({String title = "Loading"}) {
    Get.closeAllSnackbars();
    Get.dialog(
        Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircularProgressIndicator()),
          ],
        )),
        useSafeArea: false,
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.5));
  }

  static setSnackbar(String message, {durations = 2}) {
    Get.snackbar(
      '',
      "",
      borderRadius: 8,
      titleText: const SizedBox(),
      margin: const EdgeInsets.all(16),
      messageText: Container(
        padding: const EdgeInsets.only(bottom: 4),
        child: Text(
          message,
          // style: TStyle.paragraphSmallRegular.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      padding: const EdgeInsets.only(top: 4, bottom: 6, left: 16, right: 16),
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.white,
      backgroundColor: Colors.red,
      duration: Duration(seconds: durations),
    );
  }
}
