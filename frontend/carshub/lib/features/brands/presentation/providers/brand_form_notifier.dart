import 'package:carshub/features/brands/domain/models/brand.dart';
import 'package:carshub/features/brands/presentation/providers/brands_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BrandFormNotifier extends StateNotifier<Brand> {
  Ref ref;
  BrandFormNotifier(this.ref) : super(const Brand());

  void updateName(String value) {
    state = state.copyWith(
      name: value,
    );
  }

  void updateCountryOfOrigin(String value) {
    state = state.copyWith(countryOfOrigin: value);
  }

  void addBrand() async {
    var response = await ref.read(brandsRepositoryImplProvider).addBrand(state);
    response.fold((l) => null, (r) => null);
  }

  void updateBrand() async {
    var response =
        await ref.read(brandsRepositoryImplProvider).updateBrand(state);
    response.fold((l) => null, (r) => null);
  }
}

final brandFormNotifierProvider =
    StateNotifierProvider.autoDispose<BrandFormNotifier, Brand>(
        (ref) => BrandFormNotifier(ref));
