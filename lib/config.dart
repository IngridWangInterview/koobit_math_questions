class Config {
  // logger setting
  static const logSupportANSI =
      bool.fromEnvironment('LOG_SUPPORT_ANSI', defaultValue: false);
  static const logLevel =
      String.fromEnvironment('LOG_LEVEL', defaultValue: 'verbose');
  static const logMethodCount =
      int.fromEnvironment('LOG_METHOD_COUNT', defaultValue: 0);
  static const logErrMethodCount =
      int.fromEnvironment('LOG_ERR_METHOD_COUNT', defaultValue: 20);
  static const lineLength =
      int.fromEnvironment('LOG_LINE_LENGTH', defaultValue: 250);
  static const logColors =
      bool.fromEnvironment('LOG_COLORS', defaultValue: false);

  static const version =
      String.fromEnvironment('VERSION', defaultValue: 'no version info');
}
