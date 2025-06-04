sealed class HijriAdjustmentConfiguration {
  const HijriAdjustmentConfiguration({this.adjustments = const <int, int>{}});

  final Map<int, int> adjustments;
}

class DefaultAdjustmentConfiguration extends HijriAdjustmentConfiguration {
  const DefaultAdjustmentConfiguration({
    this.adjustments = const <int, int>{},
  }) : super(adjustments: adjustments);

  final Map<int, int> adjustments;
}

class KnownAdjustmentConfiguration extends HijriAdjustmentConfiguration {
  const KnownAdjustmentConfiguration({required super.adjustments});
}

class IndiaAdjustmentConfiguration extends HijriAdjustmentConfiguration {
  const IndiaAdjustmentConfiguration({required super.adjustments});
}
