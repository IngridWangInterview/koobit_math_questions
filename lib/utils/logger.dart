import 'package:flutter/material.dart';

import 'package:logger/logger.dart' as lg;

import '../config.dart';

class Logger {
  Logger._();

  static final _logger = lg.Logger(
      level: _getLevelDefaultSetting(Config.logLevel),
      printer: Config.logSupportANSI
          ? lg.PrettyPrinter(
              methodCount: Config.logMethodCount,
              errorMethodCount: Config.logErrMethodCount,
              lineLength: Config.lineLength,
              colors: Config.logColors)
          : lg.PrefixPrinter(lg.PrettyPrinter(
              methodCount: Config.logMethodCount,
              errorMethodCount: Config.logErrMethodCount,
              lineLength: Config.lineLength,
              colors: Config.logColors)));

  /// Log a message at level [Level.verbose].
  static void v(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.v(message, error, stackTrace);
  }

  /// Log a message at level [Level.debug].
  static void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.d(message, error, stackTrace);
  }

  /// Log a message at level [Level.info].
  static void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.i(message, error, stackTrace);
  }

  /// Log a message at level [Level.warning].
  static void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.w(message, error, stackTrace);
  }

  /// Log a message at level [Level.error].
  static void e(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(message, error, stackTrace);
  }

  /// Log a message at level [Level.wtf].
  static void wtf(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _logger.wtf(message, error, stackTrace);
  }

  static void log(lg.Level level, dynamic message,
      [dynamic error, StackTrace? stackTrace]) {
    _logger.log(level, error, stackTrace);
  }

  static lg.Level _getLevelDefaultSetting(String level) {
    var l = lg.Level.verbose;
    switch (level) {
      case 'debug':
        l = lg.Level.debug;
        break;
      case 'info':
        l = lg.Level.info;
        break;
      case 'warning':
        l = lg.Level.warning;
        break;
      case 'error':
        l = lg.Level.error;
        break;
      case 'wtf':
        l = lg.Level.wtf;
        break;
      case 'nothing':
        l = lg.Level.nothing;
        break;
      case 'verbose':
      default:
        l = lg.Level.verbose;
        break;
    }

    debugPrint("Log level setting is $level, now setting Log level to $l");
    return l;
  }
}
