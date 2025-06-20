# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/errors/authentication_error.proto

require 'google/protobuf'


descriptor_data = "\n:google/ads/googleads/v20/errors/authentication_error.proto\x12\x1fgoogle.ads.googleads.v20.errors\"\xfb\x05\n\x17\x41uthenticationErrorEnum\"\xdf\x05\n\x13\x41uthenticationError\x12\x0f\n\x0bUNSPECIFIED\x10\x00\x12\x0b\n\x07UNKNOWN\x10\x01\x12\x18\n\x14\x41UTHENTICATION_ERROR\x10\x02\x12\x1e\n\x1a\x43LIENT_CUSTOMER_ID_INVALID\x10\x05\x12\x16\n\x12\x43USTOMER_NOT_FOUND\x10\x08\x12\x1a\n\x16GOOGLE_ACCOUNT_DELETED\x10\t\x12!\n\x1dGOOGLE_ACCOUNT_COOKIE_INVALID\x10\n\x12(\n$GOOGLE_ACCOUNT_AUTHENTICATION_FAILED\x10\x19\x12-\n)GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH\x10\x0c\x12\x19\n\x15LOGIN_COOKIE_REQUIRED\x10\r\x12\x10\n\x0cNOT_ADS_USER\x10\x0e\x12\x17\n\x13OAUTH_TOKEN_INVALID\x10\x0f\x12\x17\n\x13OAUTH_TOKEN_EXPIRED\x10\x10\x12\x18\n\x14OAUTH_TOKEN_DISABLED\x10\x11\x12\x17\n\x13OAUTH_TOKEN_REVOKED\x10\x12\x12\x1e\n\x1aOAUTH_TOKEN_HEADER_INVALID\x10\x13\x12\x18\n\x14LOGIN_COOKIE_INVALID\x10\x14\x12\x13\n\x0fUSER_ID_INVALID\x10\x16\x12&\n\"TWO_STEP_VERIFICATION_NOT_ENROLLED\x10\x17\x12$\n ADVANCED_PROTECTION_NOT_ENROLLED\x10\x18\x12\x1f\n\x1bORGANIZATION_NOT_RECOGNIZED\x10\x1a\x12\x1d\n\x19ORGANIZATION_NOT_APPROVED\x10\x1b\x12\x34\n0ORGANIZATION_NOT_ASSOCIATED_WITH_DEVELOPER_TOKEN\x10\x1c\x12\x1b\n\x17\x44\x45VELOPER_TOKEN_INVALID\x10\x1d\x42\xf8\x01\n#com.google.ads.googleads.v20.errorsB\x18\x41uthenticationErrorProtoP\x01ZEgoogle.golang.org/genproto/googleapis/ads/googleads/v20/errors;errors\xa2\x02\x03GAA\xaa\x02\x1fGoogle.Ads.GoogleAds.V20.Errors\xca\x02\x1fGoogle\\Ads\\GoogleAds\\V20\\Errors\xea\x02#Google::Ads::GoogleAds::V20::Errorsb\x06proto3"

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
        module Errors
          AuthenticationErrorEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.errors.AuthenticationErrorEnum").msgclass
          AuthenticationErrorEnum::AuthenticationError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.errors.AuthenticationErrorEnum.AuthenticationError").enummodule
        end
      end
    end
  end
end
