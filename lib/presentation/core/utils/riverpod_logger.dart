import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) =>
      debugPrint(
        'didUpdateProvider → ${provider.name ?? provider.runtimeType},  "newValue": "$newValue"',
      );

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) =>
      debugPrint(
        'didDisposeProvider → ${provider.name ?? provider.runtimeType}',
      );

  @override
  void didAddProvider(
          ProviderBase provider, Object? value, ProviderContainer container) =>
      debugPrint(
        'didAddProvider → ${provider.name ?? provider.runtimeType}',
      );
}
