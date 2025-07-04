# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/resources/ad_group_bid_modifier.proto

require 'google/protobuf'

require 'google/ads/google_ads/v20/common/criteria_pb'
require 'google/ads/google_ads/v20/enums/bid_modifier_source_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n>google/ads/googleads/v20/resources/ad_group_bid_modifier.proto\x12\"google.ads.googleads.v20.resources\x1a.google/ads/googleads/v20/common/criteria.proto\x1a\x38google/ads/googleads/v20/enums/bid_modifier_source.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\x8b\t\n\x12\x41\x64GroupBidModifier\x12J\n\rresource_name\x18\x01 \x01(\tB3\xe0\x41\x05\xfa\x41-\n+googleads.googleapis.com/AdGroupBidModifier\x12?\n\x08\x61\x64_group\x18\r \x01(\tB(\xe0\x41\x05\xfa\x41\"\n googleads.googleapis.com/AdGroupH\x01\x88\x01\x01\x12\x1e\n\x0c\x63riterion_id\x18\x0e \x01(\x03\x42\x03\xe0\x41\x03H\x02\x88\x01\x01\x12\x19\n\x0c\x62id_modifier\x18\x0f \x01(\x01H\x03\x88\x01\x01\x12\x44\n\rbase_ad_group\x18\x10 \x01(\tB(\xe0\x41\x03\xfa\x41\"\n googleads.googleapis.com/AdGroupH\x04\x88\x01\x01\x12i\n\x13\x62id_modifier_source\x18\n \x01(\x0e\x32G.google.ads.googleads.v20.enums.BidModifierSourceEnum.BidModifierSourceB\x03\xe0\x41\x03\x12\x65\n\x19hotel_date_selection_type\x18\x05 \x01(\x0b\x32;.google.ads.googleads.v20.common.HotelDateSelectionTypeInfoB\x03\xe0\x41\x05H\x00\x12k\n\x1chotel_advance_booking_window\x18\x06 \x01(\x0b\x32>.google.ads.googleads.v20.common.HotelAdvanceBookingWindowInfoB\x03\xe0\x41\x05H\x00\x12[\n\x14hotel_length_of_stay\x18\x07 \x01(\x0b\x32\x36.google.ads.googleads.v20.common.HotelLengthOfStayInfoB\x03\xe0\x41\x05H\x00\x12W\n\x12hotel_check_in_day\x18\x08 \x01(\x0b\x32\x34.google.ads.googleads.v20.common.HotelCheckInDayInfoB\x03\xe0\x41\x05H\x00\x12\x42\n\x06\x64\x65vice\x18\x0b \x01(\x0b\x32+.google.ads.googleads.v20.common.DeviceInfoB\x03\xe0\x41\x05H\x00\x12\x64\n\x19hotel_check_in_date_range\x18\x11 \x01(\x0b\x32:.google.ads.googleads.v20.common.HotelCheckInDateRangeInfoB\x03\xe0\x41\x05H\x00:z\xea\x41w\n+googleads.googleapis.com/AdGroupBidModifier\x12Hcustomers/{customer_id}/adGroupBidModifiers/{ad_group_id}~{criterion_id}B\x0b\n\tcriterionB\x0b\n\t_ad_groupB\x0f\n\r_criterion_idB\x0f\n\r_bid_modifierB\x10\n\x0e_base_ad_groupB\x89\x02\n&com.google.ads.googleads.v20.resourcesB\x17\x41\x64GroupBidModifierProtoP\x01ZKgoogle.golang.org/genproto/googleapis/ads/googleads/v20/resources;resources\xa2\x02\x03GAA\xaa\x02\"Google.Ads.GoogleAds.V20.Resources\xca\x02\"Google\\Ads\\GoogleAds\\V20\\Resources\xea\x02&Google::Ads::GoogleAds::V20::Resourcesb\x06proto3"

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
    ["google.ads.googleads.v20.common.HotelDateSelectionTypeInfo", "google/ads/googleads/v20/common/criteria.proto"],
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
          AdGroupBidModifier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.resources.AdGroupBidModifier").msgclass
        end
      end
    end
  end
end
