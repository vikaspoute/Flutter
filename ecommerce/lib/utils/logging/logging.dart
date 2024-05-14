import 'package:logger/logger.dart';

class Logging {
  static final Logger _log = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void debug(String message) {
    _log.d(message);
  }

  static void info(String message) {
    _log.i(message);
  }

  static void warning(String message) {
    _log.w(message);
  }

  static void error(String message, [dynamic error]) {
    _log.e(message, error: error, stackTrace: StackTrace.current);
  }

  static void exception(e) {
    _log.e(e.toString());
  }

  static void log(String message) {
    _log.i(message);
  }

  static void logException(e) {
    _log.i(e.toString());
  }

  static void logWarning(String message) {
    _log.w(message);
  }

  static void logError(String message) {
    _log.e(message);
  }

  static void logInfo(String message) {
    _log.i(message);
  }

  static void logDebug(String message) {
    _log.d(message);
  }

  static void logPrint(String message) {
    _log.i(message);
  }

  static void logPrintException(e) {
    _log.i(e.toString());
  }

  static void logPrintWarning(String message) {
    _log.w(message);
  }

  static void logPrintError(String message) {
    _log.e(message);
  }

  static void logPrintInfo(String message) {
    _log.i(message);
  }

  static void logPrintDebug(String message) {
    _log.d(message);
  }
}
