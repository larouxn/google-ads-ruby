# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/enums/ad_network_type.proto

require 'google/protobuf'


descriptor_data = "\n4google/ads/googleads/v20/enums/ad_network_type.proto\x12\x1egoogle.ads.googleads.v20.enums\"\xd6\x01\n\x11\x41\x64NetworkTypeEnum\"\xc0\x01\n\rAdNetworkType\x12\x0f\n\x0bUNSPECIFIED\x10\x00\x12\x0b\n\x07UNKNOWN\x10\x01\x12\n\n\x06SEARCH\x10\x02\x12\x13\n\x0fSEARCH_PARTNERS\x10\x03\x12\x0b\n\x07\x43ONTENT\x10\x04\x12\t\n\x05MIXED\x10\x07\x12\x0b\n\x07YOUTUBE\x10\x08\x12\r\n\tGOOGLE_TV\x10\t\x12\x19\n\x15GOOGLE_OWNED_CHANNELS\x10\n\x12\t\n\x05GMAIL\x10\x0b\x12\x0c\n\x08\x44ISCOVER\x10\x0c\x12\x08\n\x04MAPS\x10\rB\xec\x01\n\"com.google.ads.googleads.v20.enumsB\x12\x41\x64NetworkTypeProtoP\x01ZCgoogle.golang.org/genproto/googleapis/ads/googleads/v20/enums;enums\xa2\x02\x03GAA\xaa\x02\x1eGoogle.Ads.GoogleAds.V20.Enums\xca\x02\x1eGoogle\\Ads\\GoogleAds\\V20\\Enums\xea\x02\"Google::Ads::GoogleAds::V20::Enumsb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Ads
    module GoogleAds
      module V20
        module Enums
          AdNetworkTypeEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.AdNetworkTypeEnum").msgclass
          AdNetworkTypeEnum::AdNetworkType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.AdNetworkTypeEnum.AdNetworkType").enummodule
        end
      end
    end
  end
end
