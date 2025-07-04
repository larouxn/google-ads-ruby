# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/resources/audience.proto

require 'google/protobuf'

require 'google/ads/google_ads/v20/common/audiences_pb'
require 'google/ads/google_ads/v20/enums/audience_scope_pb'
require 'google/ads/google_ads/v20/enums/audience_status_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n1google/ads/googleads/v20/resources/audience.proto\x12\"google.ads.googleads.v20.resources\x1a/google/ads/googleads/v20/common/audiences.proto\x1a\x33google/ads/googleads/v20/enums/audience_scope.proto\x1a\x34google/ads/googleads/v20/enums/audience_status.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xf3\x04\n\x08\x41udience\x12@\n\rresource_name\x18\x01 \x01(\tB)\xe0\x41\x05\xfa\x41#\n!googleads.googleapis.com/Audience\x12\x0f\n\x02id\x18\x02 \x01(\x03\x42\x03\xe0\x41\x03\x12V\n\x06status\x18\x03 \x01(\x0e\x32\x41.google.ads.googleads.v20.enums.AudienceStatusEnum.AudienceStatusB\x03\xe0\x41\x03\x12\x11\n\x04name\x18\n \x01(\tH\x00\x88\x01\x01\x12\x13\n\x0b\x64\x65scription\x18\x05 \x01(\t\x12\x46\n\ndimensions\x18\x06 \x03(\x0b\x32\x32.google.ads.googleads.v20.common.AudienceDimension\x12X\n\x13\x65xclusion_dimension\x18\x07 \x01(\x0b\x32;.google.ads.googleads.v20.common.AudienceExclusionDimension\x12N\n\x05scope\x18\x08 \x01(\x0e\x32?.google.ads.googleads.v20.enums.AudienceScopeEnum.AudienceScope\x12@\n\x0b\x61sset_group\x18\t \x01(\tB+\xe0\x41\x05\xfa\x41%\n#googleads.googleapis.com/AssetGroup:W\xea\x41T\n!googleads.googleapis.com/Audience\x12/customers/{customer_id}/audiences/{audience_id}B\x07\n\x05_nameB\xff\x01\n&com.google.ads.googleads.v20.resourcesB\rAudienceProtoP\x01ZKgoogle.golang.org/genproto/googleapis/ads/googleads/v20/resources;resources\xa2\x02\x03GAA\xaa\x02\"Google.Ads.GoogleAds.V20.Resources\xca\x02\"Google\\Ads\\GoogleAds\\V20\\Resources\xea\x02&Google::Ads::GoogleAds::V20::Resourcesb\x06proto3"

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
    ["google.ads.googleads.v20.common.AudienceDimension", "google/ads/googleads/v20/common/audiences.proto"],
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
          Audience = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.resources.Audience").msgclass
        end
      end
    end
  end
end
