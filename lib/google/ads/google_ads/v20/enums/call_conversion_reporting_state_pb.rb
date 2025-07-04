# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/enums/call_conversion_reporting_state.proto

require 'google/protobuf'


descriptor_data = "\nDgoogle/ads/googleads/v20/enums/call_conversion_reporting_state.proto\x12\x1egoogle.ads.googleads.v20.enums\"\xcc\x01\n CallConversionReportingStateEnum\"\xa7\x01\n\x1c\x43\x61llConversionReportingState\x12\x0f\n\x0bUNSPECIFIED\x10\x00\x12\x0b\n\x07UNKNOWN\x10\x01\x12\x0c\n\x08\x44ISABLED\x10\x02\x12,\n(USE_ACCOUNT_LEVEL_CALL_CONVERSION_ACTION\x10\x03\x12-\n)USE_RESOURCE_LEVEL_CALL_CONVERSION_ACTION\x10\x04\x42\xfb\x01\n\"com.google.ads.googleads.v20.enumsB!CallConversionReportingStateProtoP\x01ZCgoogle.golang.org/genproto/googleapis/ads/googleads/v20/enums;enums\xa2\x02\x03GAA\xaa\x02\x1eGoogle.Ads.GoogleAds.V20.Enums\xca\x02\x1eGoogle\\Ads\\GoogleAds\\V20\\Enums\xea\x02\"Google::Ads::GoogleAds::V20::Enumsb\x06proto3"

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
          CallConversionReportingStateEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.CallConversionReportingStateEnum").msgclass
          CallConversionReportingStateEnum::CallConversionReportingState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.CallConversionReportingStateEnum.CallConversionReportingState").enummodule
        end
      end
    end
  end
end
