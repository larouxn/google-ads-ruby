# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/enums/income_range_type.proto

require 'google/protobuf'


descriptor_data = "\n6google/ads/googleads/v20/enums/income_range_type.proto\x12\x1egoogle.ads.googleads.v20.enums\"\x83\x02\n\x13IncomeRangeTypeEnum\"\xeb\x01\n\x0fIncomeRangeType\x12\x0f\n\x0bUNSPECIFIED\x10\x00\x12\x0b\n\x07UNKNOWN\x10\x01\x12\x17\n\x11INCOME_RANGE_0_50\x10\xb1\x90\x1f\x12\x18\n\x12INCOME_RANGE_50_60\x10\xb2\x90\x1f\x12\x18\n\x12INCOME_RANGE_60_70\x10\xb3\x90\x1f\x12\x18\n\x12INCOME_RANGE_70_80\x10\xb4\x90\x1f\x12\x18\n\x12INCOME_RANGE_80_90\x10\xb5\x90\x1f\x12\x18\n\x12INCOME_RANGE_90_UP\x10\xb6\x90\x1f\x12\x1f\n\x19INCOME_RANGE_UNDETERMINED\x10\xb0\x90\x1f\x42\xee\x01\n\"com.google.ads.googleads.v20.enumsB\x14IncomeRangeTypeProtoP\x01ZCgoogle.golang.org/genproto/googleapis/ads/googleads/v20/enums;enums\xa2\x02\x03GAA\xaa\x02\x1eGoogle.Ads.GoogleAds.V20.Enums\xca\x02\x1eGoogle\\Ads\\GoogleAds\\V20\\Enums\xea\x02\"Google::Ads::GoogleAds::V20::Enumsb\x06proto3"

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
          IncomeRangeTypeEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.IncomeRangeTypeEnum").msgclass
          IncomeRangeTypeEnum::IncomeRangeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.IncomeRangeTypeEnum.IncomeRangeType").enummodule
        end
      end
    end
  end
end
