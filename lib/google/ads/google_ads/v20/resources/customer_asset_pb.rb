# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/resources/customer_asset.proto

require 'google/protobuf'

require 'google/ads/google_ads/v20/common/asset_policy_pb'
require 'google/ads/google_ads/v20/enums/asset_field_type_pb'
require 'google/ads/google_ads/v20/enums/asset_link_primary_status_pb'
require 'google/ads/google_ads/v20/enums/asset_link_primary_status_reason_pb'
require 'google/ads/google_ads/v20/enums/asset_link_status_pb'
require 'google/ads/google_ads/v20/enums/asset_source_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n7google/ads/googleads/v20/resources/customer_asset.proto\x12\"google.ads.googleads.v20.resources\x1a\x32google/ads/googleads/v20/common/asset_policy.proto\x1a\x35google/ads/googleads/v20/enums/asset_field_type.proto\x1a>google/ads/googleads/v20/enums/asset_link_primary_status.proto\x1a\x45google/ads/googleads/v20/enums/asset_link_primary_status_reason.proto\x1a\x36google/ads/googleads/v20/enums/asset_link_status.proto\x1a\x31google/ads/googleads/v20/enums/asset_source.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xdd\x06\n\rCustomerAsset\x12\x45\n\rresource_name\x18\x01 \x01(\tB.\xe0\x41\x05\xfa\x41(\n&googleads.googleapis.com/CustomerAsset\x12\x38\n\x05\x61sset\x18\x02 \x01(\tB)\xe0\x41\x02\xe0\x41\x05\xfa\x41 \n\x1egoogleads.googleapis.com/Asset\x12]\n\nfield_type\x18\x03 \x01(\x0e\x32\x41.google.ads.googleads.v20.enums.AssetFieldTypeEnum.AssetFieldTypeB\x06\xe0\x41\x02\xe0\x41\x05\x12P\n\x06source\x18\x05 \x01(\x0e\x32;.google.ads.googleads.v20.enums.AssetSourceEnum.AssetSourceB\x03\xe0\x41\x03\x12S\n\x06status\x18\x04 \x01(\x0e\x32\x43.google.ads.googleads.v20.enums.AssetLinkStatusEnum.AssetLinkStatus\x12n\n\x0eprimary_status\x18\x06 \x01(\x0e\x32Q.google.ads.googleads.v20.enums.AssetLinkPrimaryStatusEnum.AssetLinkPrimaryStatusB\x03\xe0\x41\x03\x12\x63\n\x16primary_status_details\x18\x07 \x03(\x0b\x32>.google.ads.googleads.v20.common.AssetLinkPrimaryStatusDetailsB\x03\xe0\x41\x03\x12\x82\x01\n\x16primary_status_reasons\x18\x08 \x03(\x0e\x32].google.ads.googleads.v20.enums.AssetLinkPrimaryStatusReasonEnum.AssetLinkPrimaryStatusReasonB\x03\xe0\x41\x03:k\xea\x41h\n&googleads.googleapis.com/CustomerAsset\x12>customers/{customer_id}/customerAssets/{asset_id}~{field_type}B\x84\x02\n&com.google.ads.googleads.v20.resourcesB\x12\x43ustomerAssetProtoP\x01ZKgoogle.golang.org/genproto/googleapis/ads/googleads/v20/resources;resources\xa2\x02\x03GAA\xaa\x02\"Google.Ads.GoogleAds.V20.Resources\xca\x02\"Google\\Ads\\GoogleAds\\V20\\Resources\xea\x02&Google::Ads::GoogleAds::V20::Resourcesb\x06proto3"

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
    ["google.ads.googleads.v20.common.AssetLinkPrimaryStatusDetails", "google/ads/googleads/v20/common/asset_policy.proto"],
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
          CustomerAsset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.resources.CustomerAsset").msgclass
        end
      end
    end
  end
end
