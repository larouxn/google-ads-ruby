# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/enums/conversion_action_type.proto

require 'google/protobuf'


descriptor_data = "\n;google/ads/googleads/v20/enums/conversion_action_type.proto\x12\x1egoogle.ads.googleads.v20.enums\"\x86\n\n\x18\x43onversionActionTypeEnum\"\xe9\t\n\x14\x43onversionActionType\x12\x0f\n\x0bUNSPECIFIED\x10\x00\x12\x0b\n\x07UNKNOWN\x10\x01\x12\x0b\n\x07\x41\x44_CALL\x10\x02\x12\x11\n\rCLICK_TO_CALL\x10\x03\x12\x18\n\x14GOOGLE_PLAY_DOWNLOAD\x10\x04\x12\x1f\n\x1bGOOGLE_PLAY_IN_APP_PURCHASE\x10\x05\x12\x10\n\x0cUPLOAD_CALLS\x10\x06\x12\x11\n\rUPLOAD_CLICKS\x10\x07\x12\x0b\n\x07WEBPAGE\x10\x08\x12\x10\n\x0cWEBSITE_CALL\x10\t\x12\x1d\n\x19STORE_SALES_DIRECT_UPLOAD\x10\n\x12\x0f\n\x0bSTORE_SALES\x10\x0b\x12\x1f\n\x1b\x46IREBASE_ANDROID_FIRST_OPEN\x10\x0c\x12$\n FIREBASE_ANDROID_IN_APP_PURCHASE\x10\r\x12\x1b\n\x17\x46IREBASE_ANDROID_CUSTOM\x10\x0e\x12\x1b\n\x17\x46IREBASE_IOS_FIRST_OPEN\x10\x0f\x12 \n\x1c\x46IREBASE_IOS_IN_APP_PURCHASE\x10\x10\x12\x17\n\x13\x46IREBASE_IOS_CUSTOM\x10\x11\x12\x30\n,THIRD_PARTY_APP_ANALYTICS_ANDROID_FIRST_OPEN\x10\x12\x12\x35\n1THIRD_PARTY_APP_ANALYTICS_ANDROID_IN_APP_PURCHASE\x10\x13\x12,\n(THIRD_PARTY_APP_ANALYTICS_ANDROID_CUSTOM\x10\x14\x12,\n(THIRD_PARTY_APP_ANALYTICS_IOS_FIRST_OPEN\x10\x15\x12\x31\n-THIRD_PARTY_APP_ANALYTICS_IOS_IN_APP_PURCHASE\x10\x16\x12(\n$THIRD_PARTY_APP_ANALYTICS_IOS_CUSTOM\x10\x17\x12 \n\x1c\x41NDROID_APP_PRE_REGISTRATION\x10\x18\x12#\n\x1f\x41NDROID_INSTALLS_ALL_OTHER_APPS\x10\x19\x12\x15\n\x11\x46LOODLIGHT_ACTION\x10\x1a\x12\x1a\n\x16\x46LOODLIGHT_TRANSACTION\x10\x1b\x12\x11\n\rGOOGLE_HOSTED\x10\x1c\x12\x14\n\x10LEAD_FORM_SUBMIT\x10\x1d\x12\x12\n\nSALESFORCE\x10\x1e\x1a\x02\x08\x01\x12\x12\n\x0eSEARCH_ADS_360\x10\x1f\x12$\n SMART_CAMPAIGN_AD_CLICKS_TO_CALL\x10 \x12%\n!SMART_CAMPAIGN_MAP_CLICKS_TO_CALL\x10!\x12!\n\x1dSMART_CAMPAIGN_MAP_DIRECTIONS\x10\"\x12 \n\x1cSMART_CAMPAIGN_TRACKED_CALLS\x10#\x12\x10\n\x0cSTORE_VISITS\x10$\x12\x14\n\x10WEBPAGE_CODELESS\x10%\x12\x1c\n\x18UNIVERSAL_ANALYTICS_GOAL\x10&\x12#\n\x1fUNIVERSAL_ANALYTICS_TRANSACTION\x10\'\x12\x1d\n\x19GOOGLE_ANALYTICS_4_CUSTOM\x10(\x12\x1f\n\x1bGOOGLE_ANALYTICS_4_PURCHASE\x10)B\xf3\x01\n\"com.google.ads.googleads.v20.enumsB\x19\x43onversionActionTypeProtoP\x01ZCgoogle.golang.org/genproto/googleapis/ads/googleads/v20/enums;enums\xa2\x02\x03GAA\xaa\x02\x1eGoogle.Ads.GoogleAds.V20.Enums\xca\x02\x1eGoogle\\Ads\\GoogleAds\\V20\\Enums\xea\x02\"Google::Ads::GoogleAds::V20::Enumsb\x06proto3"

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
          ConversionActionTypeEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.ConversionActionTypeEnum").msgclass
          ConversionActionTypeEnum::ConversionActionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.ConversionActionTypeEnum.ConversionActionType").enummodule
        end
      end
    end
  end
end
