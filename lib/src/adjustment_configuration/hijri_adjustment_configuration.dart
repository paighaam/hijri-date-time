part 'hijri_global_adjustments.dart';

sealed class AdjustmentConfiguration {
  const AdjustmentConfiguration({this.adjustments = const <int, int>{}});

  final Map<int, int> adjustments;
}

class DefaultHijriAdjustmentConfiguration extends AdjustmentConfiguration {
  const DefaultHijriAdjustmentConfiguration({
    this.adjustments = const <int, int>{},
  }) : super(adjustments: adjustments);

  @override
  final Map<int, int> adjustments;
}

class GlobalHijriAdjustmentConfiguration extends AdjustmentConfiguration {
  const GlobalHijriAdjustmentConfiguration()
      : super(adjustments: globalHijriAdjustments);
}

class IndiaHijriAdjustmentConfiguration extends AdjustmentConfiguration {
  const IndiaHijriAdjustmentConfiguration({required super.adjustments});
}
