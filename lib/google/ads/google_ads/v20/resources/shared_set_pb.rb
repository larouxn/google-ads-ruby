# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/resources/shared_set.proto

require 'google/protobuf'

require 'google/ads/google_ads/v20/enums/shared_set_status_pb'
require 'google/ads/google_ads/v20/enums/shared_set_type_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n3google/ads/googleads/v20/resources/shared_set.proto\x12\"google.ads.googleads.v20.resources\x1a\x36google/ads/googleads/v20/enums/shared_set_status.proto\x1a\x34google/ads/googleads/v20/enums/shared_set_type.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xfa\x03\n\tSharedSet\x12\x41\n\rresource_name\x18\x01 \x01(\tB*\xe0\x41\x05\xfa\x41$\n\"googleads.googleapis.com/SharedSet\x12\x14\n\x02id\x18\x08 \x01(\x03\x42\x03\xe0\x41\x03H\x00\x88\x01\x01\x12R\n\x04type\x18\x03 \x01(\x0e\x32?.google.ads.googleads.v20.enums.SharedSetTypeEnum.SharedSetTypeB\x03\xe0\x41\x05\x12\x11\n\x04name\x18\t \x01(\tH\x01\x88\x01\x01\x12X\n\x06status\x18\x05 \x01(\x0e\x32\x43.google.ads.googleads.v20.enums.SharedSetStatusEnum.SharedSetStatusB\x03\xe0\x41\x03\x12\x1e\n\x0cmember_count\x18\n \x01(\x03\x42\x03\xe0\x41\x03H\x02\x88\x01\x01\x12!\n\x0freference_count\x18\x0b \x01(\x03\x42\x03\xe0\x41\x03H\x03\x88\x01\x01:[\xea\x41X\n\"googleads.googleapis.com/SharedSet\x12\x32\x63ustomers/{customer_id}/sharedSets/{shared_set_id}B\x05\n\x03_idB\x07\n\x05_nameB\x0f\n\r_member_countB\x12\n\x10_reference_countB\x80\x02\n&com.google.ads.googleads.v20.resourcesB\x0eSharedSetProtoP\x01ZKgoogle.golang.org/genproto/googleapis/ads/googleads/v20/resources;resources\xa2\x02\x03GAA\xaa\x02\"Google.Ads.GoogleAds.V20.Resources\xca\x02\"Google\\Ads\\GoogleAds\\V20\\Resources\xea\x02&Google::Ads::GoogleAds::V20::Resourcesb\x06proto3"

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
        module Resources
          SharedSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.resources.SharedSet").msgclass
        end
      end
    end
  end
end
