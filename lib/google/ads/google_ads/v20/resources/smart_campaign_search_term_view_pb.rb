# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/resources/smart_campaign_search_term_view.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\nHgoogle/ads/googleads/v20/resources/smart_campaign_search_term_view.proto\x12\"google.ads.googleads.v20.resources\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xd2\x02\n\x1bSmartCampaignSearchTermView\x12S\n\rresource_name\x18\x01 \x01(\tB<\xe0\x41\x03\xfa\x41\x36\n4googleads.googleapis.com/SmartCampaignSearchTermView\x12\x18\n\x0bsearch_term\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12;\n\x08\x63\x61mpaign\x18\x03 \x01(\tB)\xe0\x41\x03\xfa\x41#\n!googleads.googleapis.com/Campaign:\x86\x01\xea\x41\x82\x01\n4googleads.googleapis.com/SmartCampaignSearchTermView\x12Jcustomers/{customer_id}/smartCampaignSearchTermViews/{campaign_id}~{query}B\x92\x02\n&com.google.ads.googleads.v20.resourcesB SmartCampaignSearchTermViewProtoP\x01ZKgoogle.golang.org/genproto/googleapis/ads/googleads/v20/resources;resources\xa2\x02\x03GAA\xaa\x02\"Google.Ads.GoogleAds.V20.Resources\xca\x02\"Google\\Ads\\GoogleAds\\V20\\Resources\xea\x02&Google::Ads::GoogleAds::V20::Resourcesb\x06proto3"

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
          SmartCampaignSearchTermView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.resources.SmartCampaignSearchTermView").msgclass
        end
      end
    end
  end
end
