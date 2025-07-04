# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/common/extensions.proto

require 'google/protobuf'

require 'google/ads/google_ads/v20/common/custom_parameter_pb'
require 'google/ads/google_ads/v20/enums/call_conversion_reporting_state_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n0google/ads/googleads/v20/common/extensions.proto\x12\x1fgoogle.ads.googleads.v20.common\x1a\x36google/ads/googleads/v20/common/custom_parameter.proto\x1a\x44google/ads/googleads/v20/enums/call_conversion_reporting_state.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xc3\x03\n\x0c\x43\x61llFeedItem\x12\x19\n\x0cphone_number\x18\x07 \x01(\tH\x00\x88\x01\x01\x12\x19\n\x0c\x63ountry_code\x18\x08 \x01(\tH\x01\x88\x01\x01\x12\"\n\x15\x63\x61ll_tracking_enabled\x18\t \x01(\x08H\x02\x88\x01\x01\x12#\n\x16\x63\x61ll_conversion_action\x18\n \x01(\tH\x03\x88\x01\x01\x12.\n!call_conversion_tracking_disabled\x18\x0b \x01(\x08H\x04\x88\x01\x01\x12\x86\x01\n\x1f\x63\x61ll_conversion_reporting_state\x18\x06 \x01(\x0e\x32].google.ads.googleads.v20.enums.CallConversionReportingStateEnum.CallConversionReportingStateB\x0f\n\r_phone_numberB\x0f\n\r_country_codeB\x18\n\x16_call_tracking_enabledB\x19\n\x17_call_conversion_actionB$\n\"_call_conversion_tracking_disabled\"=\n\x0f\x43\x61lloutFeedItem\x12\x19\n\x0c\x63\x61llout_text\x18\x02 \x01(\tH\x00\x88\x01\x01\x42\x0f\n\r_callout_text\"\xe6\x02\n\x10SitelinkFeedItem\x12\x16\n\tlink_text\x18\t \x01(\tH\x00\x88\x01\x01\x12\x12\n\x05line1\x18\n \x01(\tH\x01\x88\x01\x01\x12\x12\n\x05line2\x18\x0b \x01(\tH\x02\x88\x01\x01\x12\x12\n\nfinal_urls\x18\x0c \x03(\t\x12\x19\n\x11\x66inal_mobile_urls\x18\r \x03(\t\x12\"\n\x15tracking_url_template\x18\x0e \x01(\tH\x03\x88\x01\x01\x12O\n\x15url_custom_parameters\x18\x07 \x03(\x0b\x32\x30.google.ads.googleads.v20.common.CustomParameter\x12\x1d\n\x10\x66inal_url_suffix\x18\x0f \x01(\tH\x04\x88\x01\x01\x42\x0c\n\n_link_textB\x08\n\x06_line1B\x08\n\x06_line2B\x18\n\x16_tracking_url_templateB\x13\n\x11_final_url_suffixB\xef\x01\n#com.google.ads.googleads.v20.commonB\x0f\x45xtensionsProtoP\x01ZEgoogle.golang.org/genproto/googleapis/ads/googleads/v20/common;common\xa2\x02\x03GAA\xaa\x02\x1fGoogle.Ads.GoogleAds.V20.Common\xca\x02\x1fGoogle\\Ads\\GoogleAds\\V20\\Common\xea\x02#Google::Ads::GoogleAds::V20::Commonb\x06proto3"

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
    ["google.ads.googleads.v20.common.CustomParameter", "google/ads/googleads/v20/common/custom_parameter.proto"],
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
        module Common
          CallFeedItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.CallFeedItem").msgclass
          CalloutFeedItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.CalloutFeedItem").msgclass
          SitelinkFeedItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.SitelinkFeedItem").msgclass
        end
      end
    end
  end
end
