# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/enums/local_services_conversation_type.proto

require 'google/protobuf'


descriptor_data = "\nEgoogle/ads/googleads/v20/enums/local_services_conversation_type.proto\x12\x1egoogle.ads.googleads.v20.enums\"\xb3\x01\n%LocalServicesLeadConversationTypeEnum\"\x89\x01\n\x10\x43onversationType\x12\x0f\n\x0bUNSPECIFIED\x10\x00\x12\x0b\n\x07UNKNOWN\x10\x01\x12\t\n\x05\x45MAIL\x10\x02\x12\x0b\n\x07MESSAGE\x10\x03\x12\x0e\n\nPHONE_CALL\x10\x04\x12\x07\n\x03SMS\x10\x05\x12\x0b\n\x07\x42OOKING\x10\x06\x12\x0c\n\x08WHATSAPP\x10\x07\x12\x0b\n\x07\x41\x44S_API\x10\x08\x42\xfc\x01\n\"com.google.ads.googleads.v20.enumsB\"LocalServicesConversationTypeProtoP\x01ZCgoogle.golang.org/genproto/googleapis/ads/googleads/v20/enums;enums\xa2\x02\x03GAA\xaa\x02\x1eGoogle.Ads.GoogleAds.V20.Enums\xca\x02\x1eGoogle\\Ads\\GoogleAds\\V20\\Enums\xea\x02\"Google::Ads::GoogleAds::V20::Enumsb\x06proto3"

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
          LocalServicesLeadConversationTypeEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.LocalServicesLeadConversationTypeEnum").msgclass
          LocalServicesLeadConversationTypeEnum::ConversationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.LocalServicesLeadConversationTypeEnum.ConversationType").enummodule
        end
      end
    end
  end
end
