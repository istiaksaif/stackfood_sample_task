import '../../core/utils/session_manager.dart';

extension CurrencyFormatter on Object {
  String asCurrency() {
    final symbol = SessionManager.getValue(kCurrencySymbol, value: "\$");
    final direction = SessionManager.getValue(
      kCurrencyDirection,
      value: "left",
    );

    final number = (this is num) ? this as num : num.tryParse(toString()) ?? 0;

    final formattedNumber = number.toString();

    return direction == "right"
        ? "$formattedNumber$symbol"
        : "$symbol$formattedNumber";
  }
}
