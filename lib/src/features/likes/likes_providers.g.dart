// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'likes_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$likesHash() => r'3c70e38b0f7cd20a29221ddc63b30c547c6297ce';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$Likes extends BuildlessNotifier<Map<String, int>> {
  late final int id;

  Map<String, int> build({
    required int id,
  });
}

/// See also [Likes].
@ProviderFor(Likes)
const likesProvider = LikesFamily();

/// See also [Likes].
class LikesFamily extends Family<Map<String, int>> {
  /// See also [Likes].
  const LikesFamily();

  /// See also [Likes].
  LikesProvider call({
    required int id,
  }) {
    return LikesProvider(
      id: id,
    );
  }

  @override
  LikesProvider getProviderOverride(
    covariant LikesProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'likesProvider';
}

/// See also [Likes].
class LikesProvider extends NotifierProviderImpl<Likes, Map<String, int>> {
  /// See also [Likes].
  LikesProvider({
    required this.id,
  }) : super.internal(
          () => Likes()..id = id,
          from: likesProvider,
          name: r'likesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$likesHash,
          dependencies: LikesFamily._dependencies,
          allTransitiveDependencies: LikesFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is LikesProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Map<String, int> runNotifierBuild(
    covariant Likes notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
