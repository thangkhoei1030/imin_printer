import 'dart:typed_data';

import 'package:imin_printer/enums/print_size_imin.dart';
import 'package:imin_printer/print_style.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'imin_printer_method_channel.dart';

abstract class IminPrinterPlatform extends PlatformInterface {
  /// Constructs a IminPrinterPlatform.
  IminPrinterPlatform() : super(token: _token);

  static final Object _token = Object();

  static IminPrinterPlatform _instance = MethodChannelIminPrinter();

  /// The default instance of [IminPrinterPlatform] to use.
  ///
  /// Defaults to [MethodChannelIminPrinter].
  static IminPrinterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [IminPrinterPlatform] when
  /// they register themselves.
  static set instance(IminPrinterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> initPrinter(PrintSizeImin printSizeImin) {
    throw UnimplementedError('initPrinter() has not been implemented.');
  }

  Future<String?> setPrintSize(PrintSizeImin printSizeImin) {
    throw UnimplementedError('setPrintSize() has not been implemented.');
  }

  Future<String> getStatus() {
    throw UnimplementedError('getStatus() has not been implemented.');
  }

  Future<String> getModelName() {
    throw UnimplementedError('getModelName() has not been implemented.');
  }

  Future<String> printBytes(Uint8List bytes) {
    throw UnimplementedError('printBytes() has not been implemented.');
  }

  Future<String> printText(String text, PrintStyle printStyle) {
    throw UnimplementedError('printText() has not been implemented.');
  }

  Future<String> print2ColumnsText(List<String> listText, PrintStyle printStyle) {
    throw UnimplementedError('print2ColumnsText() has not been implemented.');
  }

  Future<String> printBitmap(Uint8List bytes) {
    throw UnimplementedError('printBitmap() has not been implemented.');
  }

  Future<String> printBitmapBase64(String base64) {
    throw UnimplementedError('printBitmapBase64() has not been implemented.');
  }

  Future<String> setStyle(PrintStyle printStyle) {
    throw UnimplementedError('setStyle() has not been implemented.');
  }
}
