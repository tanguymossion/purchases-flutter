import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_discount.freezed.dart';
part 'payment_discount.g.dart';

@freezed

/// The signed discount applied to a payment
class PaymentDiscount with _$PaymentDiscount {
  const factory PaymentDiscount(
    /// Identifier agreed upon with the App Store for a discount of your choosing.
    @JsonKey(name: 'identifier') String identifier,

    /// The identifier of the public/private key pair agreed upon with the
    /// App Store when the keys were generated.
    @JsonKey(name: 'keyIdentifier') String keyIdentifier,

    /// One-time use random entropy-adding value for security.
    @JsonKey(name: 'nonce') String nonce,

    /// The cryptographic signature generated by your private key.
    @JsonKey(name: 'signature') String signature,

    /// Timestamp of when the signature is created.
    @JsonKey(name: 'timestamp') int timestamp,
  ) = _PaymentDiscount;

  factory PaymentDiscount.fromJson(Map<String, dynamic> json) =>
      _$PaymentDiscountFromJson(json);
}