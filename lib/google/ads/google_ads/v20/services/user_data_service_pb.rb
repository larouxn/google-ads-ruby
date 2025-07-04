# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/services/user_data_service.proto

require 'google/protobuf'

require 'google/ads/google_ads/v20/common/offline_user_data_pb'
require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'


descriptor_data = "\n9google/ads/googleads/v20/services/user_data_service.proto\x12!google.ads.googleads.v20.services\x1a\x37google/ads/googleads/v20/common/offline_user_data.proto\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\"\xf9\x01\n\x15UploadUserDataRequest\x12\x18\n\x0b\x63ustomer_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12M\n\noperations\x18\x03 \x03(\x0b\x32\x34.google.ads.googleads.v20.services.UserDataOperationB\x03\xe0\x41\x02\x12k\n!customer_match_user_list_metadata\x18\x02 \x01(\x0b\x32>.google.ads.googleads.v20.common.CustomerMatchUserListMetadataH\x00\x42\n\n\x08metadata\"\x9a\x01\n\x11UserDataOperation\x12;\n\x06\x63reate\x18\x01 \x01(\x0b\x32).google.ads.googleads.v20.common.UserDataH\x00\x12;\n\x06remove\x18\x02 \x01(\x0b\x32).google.ads.googleads.v20.common.UserDataH\x00\x42\x0b\n\toperation\"\x92\x01\n\x16UploadUserDataResponse\x12\x1d\n\x10upload_date_time\x18\x03 \x01(\tH\x00\x88\x01\x01\x12&\n\x19received_operations_count\x18\x04 \x01(\x05H\x01\x88\x01\x01\x42\x13\n\x11_upload_date_timeB\x1c\n\x1a_received_operations_count2\x9a\x02\n\x0fUserDataService\x12\xbf\x01\n\x0eUploadUserData\x12\x38.google.ads.googleads.v20.services.UploadUserDataRequest\x1a\x39.google.ads.googleads.v20.services.UploadUserDataResponse\"8\x82\xd3\xe4\x93\x02\x32\"-/v20/customers/{customer_id=*}:uploadUserData:\x01*\x1a\x45\xca\x41\x18googleads.googleapis.com\xd2\x41\'https://www.googleapis.com/auth/adwordsB\x80\x02\n%com.google.ads.googleads.v20.servicesB\x14UserDataServiceProtoP\x01ZIgoogle.golang.org/genproto/googleapis/ads/googleads/v20/services;services\xa2\x02\x03GAA\xaa\x02!Google.Ads.GoogleAds.V20.Services\xca\x02!Google\\Ads\\GoogleAds\\V20\\Services\xea\x02%Google::Ads::GoogleAds::V20::Servicesb\x06proto3"

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
    ["google.ads.googleads.v20.common.CustomerMatchUserListMetadata", "google/ads/googleads/v20/common/offline_user_data.proto"],
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
        module Services
          UploadUserDataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.services.UploadUserDataRequest").msgclass
          UserDataOperation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.services.UserDataOperation").msgclass
          UploadUserDataResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.services.UploadUserDataResponse").msgclass
        end
      end
    end
  end
end
