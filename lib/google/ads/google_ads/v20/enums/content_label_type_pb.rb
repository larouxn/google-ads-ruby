# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/enums/content_label_type.proto

require 'google/protobuf'


descriptor_data = "\n7google/ads/googleads/v20/enums/content_label_type.proto\x12\x1egoogle.ads.googleads.v20.enums\"\xff\x05\n\x14\x43ontentLabelTypeEnum\"\xe6\x05\n\x10\x43ontentLabelType\x12\x0f\n\x0bUNSPECIFIED\x10\x00\x12\x0b\n\x07UNKNOWN\x10\x01\x12\x17\n\x13SEXUALLY_SUGGESTIVE\x10\x02\x12\x12\n\x0e\x42\x45LOW_THE_FOLD\x10\x03\x12\x11\n\rPARKED_DOMAIN\x10\x04\x12\x0c\n\x08JUVENILE\x10\x06\x12\r\n\tPROFANITY\x10\x07\x12\x0b\n\x07TRAGEDY\x10\x08\x12\t\n\x05VIDEO\x10\t\x12\x15\n\x11VIDEO_RATING_DV_G\x10\n\x12\x16\n\x12VIDEO_RATING_DV_PG\x10\x0b\x12\x15\n\x11VIDEO_RATING_DV_T\x10\x0c\x12\x16\n\x12VIDEO_RATING_DV_MA\x10\r\x12\x17\n\x13VIDEO_NOT_YET_RATED\x10\x0e\x12\x12\n\x0e\x45MBEDDED_VIDEO\x10\x0f\x12\x18\n\x14LIVE_STREAMING_VIDEO\x10\x10\x12\x11\n\rSOCIAL_ISSUES\x10\x11\x12*\n&BRAND_SUITABILITY_CONTENT_FOR_FAMILIES\x10\x12\x12$\n BRAND_SUITABILITY_GAMES_FIGHTING\x10\x13\x12\"\n\x1e\x42RAND_SUITABILITY_GAMES_MATURE\x10\x14\x12&\n\"BRAND_SUITABILITY_HEALTH_SENSITIVE\x10\x15\x12\x30\n,BRAND_SUITABILITY_HEALTH_SOURCE_UNDETERMINED\x10\x16\x12!\n\x1d\x42RAND_SUITABILITY_NEWS_RECENT\x10\x17\x12$\n BRAND_SUITABILITY_NEWS_SENSITIVE\x10\x18\x12.\n*BRAND_SUITABILITY_NEWS_SOURCE_NOT_FEATURED\x10\x19\x12\x1e\n\x1a\x42RAND_SUITABILITY_POLITICS\x10\x1a\x12\x1e\n\x1a\x42RAND_SUITABILITY_RELIGION\x10\x1b\x42\xef\x01\n\"com.google.ads.googleads.v20.enumsB\x15\x43ontentLabelTypeProtoP\x01ZCgoogle.golang.org/genproto/googleapis/ads/googleads/v20/enums;enums\xa2\x02\x03GAA\xaa\x02\x1eGoogle.Ads.GoogleAds.V20.Enums\xca\x02\x1eGoogle\\Ads\\GoogleAds\\V20\\Enums\xea\x02\"Google::Ads::GoogleAds::V20::Enumsb\x06proto3"

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
          ContentLabelTypeEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.ContentLabelTypeEnum").msgclass
          ContentLabelTypeEnum::ContentLabelType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.ContentLabelTypeEnum.ContentLabelType").enummodule
        end
      end
    end
  end
end
