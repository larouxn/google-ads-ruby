# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/resources/ad_group_criterion_simulation.proto

require 'google/protobuf'

require 'google/ads/google_ads/v20/common/simulation_pb'
require 'google/ads/google_ads/v20/enums/simulation_modification_method_pb'
require 'google/ads/google_ads/v20/enums/simulation_type_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\nFgoogle/ads/googleads/v20/resources/ad_group_criterion_simulation.proto\x12\"google.ads.googleads.v20.resources\x1a\x30google/ads/googleads/v20/common/simulation.proto\x1a\x43google/ads/googleads/v20/enums/simulation_modification_method.proto\x1a\x34google/ads/googleads/v20/enums/simulation_type.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\x9c\x07\n\x1a\x41\x64GroupCriterionSimulation\x12R\n\rresource_name\x18\x01 \x01(\tB;\xe0\x41\x03\xfa\x41\x35\n3googleads.googleapis.com/AdGroupCriterionSimulation\x12\x1d\n\x0b\x61\x64_group_id\x18\t \x01(\x03\x42\x03\xe0\x41\x03H\x01\x88\x01\x01\x12\x1e\n\x0c\x63riterion_id\x18\n \x01(\x03\x42\x03\xe0\x41\x03H\x02\x88\x01\x01\x12T\n\x04type\x18\x04 \x01(\x0e\x32\x41.google.ads.googleads.v20.enums.SimulationTypeEnum.SimulationTypeB\x03\xe0\x41\x03\x12\x7f\n\x13modification_method\x18\x05 \x01(\x0e\x32].google.ads.googleads.v20.enums.SimulationModificationMethodEnum.SimulationModificationMethodB\x03\xe0\x41\x03\x12\x1c\n\nstart_date\x18\x0b \x01(\tB\x03\xe0\x41\x03H\x03\x88\x01\x01\x12\x1a\n\x08\x65nd_date\x18\x0c \x01(\tB\x03\xe0\x41\x03H\x04\x88\x01\x01\x12]\n\x12\x63pc_bid_point_list\x18\x08 \x01(\x0b\x32:.google.ads.googleads.v20.common.CpcBidSimulationPointListB\x03\xe0\x41\x03H\x00\x12l\n\x1apercent_cpc_bid_point_list\x18\r \x01(\x0b\x32\x41.google.ads.googleads.v20.common.PercentCpcBidSimulationPointListB\x03\xe0\x41\x03H\x00:\xc1\x01\xea\x41\xbd\x01\n3googleads.googleapis.com/AdGroupCriterionSimulation\x12\x85\x01\x63ustomers/{customer_id}/adGroupCriterionSimulations/{ad_group_id}~{criterion_id}~{type}~{modification_method}~{start_date}~{end_date}B\x0c\n\npoint_listB\x0e\n\x0c_ad_group_idB\x0f\n\r_criterion_idB\r\n\x0b_start_dateB\x0b\n\t_end_dateB\x91\x02\n&com.google.ads.googleads.v20.resourcesB\x1f\x41\x64GroupCriterionSimulationProtoP\x01ZKgoogle.golang.org/genproto/googleapis/ads/googleads/v20/resources;resources\xa2\x02\x03GAA\xaa\x02\"Google.Ads.GoogleAds.V20.Resources\xca\x02\"Google\\Ads\\GoogleAds\\V20\\Resources\xea\x02&Google::Ads::GoogleAds::V20::Resourcesb\x06proto3"

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
    ["google.ads.googleads.v20.common.CpcBidSimulationPointList", "google/ads/googleads/v20/common/simulation.proto"],
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
          AdGroupCriterionSimulation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.resources.AdGroupCriterionSimulation").msgclass
        end
      end
    end
  end
end
