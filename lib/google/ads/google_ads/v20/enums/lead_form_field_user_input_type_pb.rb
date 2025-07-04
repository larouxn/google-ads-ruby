# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/enums/lead_form_field_user_input_type.proto

require 'google/protobuf'


descriptor_data = "\nDgoogle/ads/googleads/v20/enums/lead_form_field_user_input_type.proto\x12\x1egoogle.ads.googleads.v20.enums\"\xc8\x13\n\x1eLeadFormFieldUserInputTypeEnum\"\xa5\x13\n\x1aLeadFormFieldUserInputType\x12\x0f\n\x0bUNSPECIFIED\x10\x00\x12\x0b\n\x07UNKNOWN\x10\x01\x12\r\n\tFULL_NAME\x10\x02\x12\t\n\x05\x45MAIL\x10\x03\x12\x10\n\x0cPHONE_NUMBER\x10\x04\x12\x0f\n\x0bPOSTAL_CODE\x10\x05\x12\x12\n\x0eSTREET_ADDRESS\x10\x08\x12\x08\n\x04\x43ITY\x10\t\x12\n\n\x06REGION\x10\n\x12\x0b\n\x07\x43OUNTRY\x10\x0b\x12\x0e\n\nWORK_EMAIL\x10\x0c\x12\x10\n\x0c\x43OMPANY_NAME\x10\r\x12\x0e\n\nWORK_PHONE\x10\x0e\x12\r\n\tJOB_TITLE\x10\x0f\x12\x1f\n\x1bGOVERNMENT_ISSUED_ID_CPF_BR\x10\x10\x12\x1f\n\x1bGOVERNMENT_ISSUED_ID_DNI_AR\x10\x11\x12\x1f\n\x1bGOVERNMENT_ISSUED_ID_DNI_PE\x10\x12\x12\x1f\n\x1bGOVERNMENT_ISSUED_ID_RUT_CL\x10\x13\x12\x1e\n\x1aGOVERNMENT_ISSUED_ID_CC_CO\x10\x14\x12\x1e\n\x1aGOVERNMENT_ISSUED_ID_CI_EC\x10\x15\x12\x1f\n\x1bGOVERNMENT_ISSUED_ID_RFC_MX\x10\x16\x12\x0e\n\nFIRST_NAME\x10\x17\x12\r\n\tLAST_NAME\x10\x18\x12\x12\n\rVEHICLE_MODEL\x10\xe9\x07\x12\x11\n\x0cVEHICLE_TYPE\x10\xea\x07\x12\x19\n\x14PREFERRED_DEALERSHIP\x10\xeb\x07\x12\x1e\n\x19VEHICLE_PURCHASE_TIMELINE\x10\xec\x07\x12\x16\n\x11VEHICLE_OWNERSHIP\x10\xed\x07\x12\x19\n\x14VEHICLE_PAYMENT_TYPE\x10\xf1\x07\x12\x16\n\x11VEHICLE_CONDITION\x10\xf2\x07\x12\x11\n\x0c\x43OMPANY_SIZE\x10\xee\x07\x12\x11\n\x0c\x41NNUAL_SALES\x10\xef\x07\x12\x16\n\x11YEARS_IN_BUSINESS\x10\xf0\x07\x12\x13\n\x0eJOB_DEPARTMENT\x10\xf3\x07\x12\r\n\x08JOB_ROLE\x10\xf4\x07\x12\x10\n\x0bOVER_18_AGE\x10\xb6\x08\x12\x10\n\x0bOVER_19_AGE\x10\xb7\x08\x12\x10\n\x0bOVER_20_AGE\x10\xb8\x08\x12\x10\n\x0bOVER_21_AGE\x10\xb9\x08\x12\x10\n\x0bOVER_22_AGE\x10\xba\x08\x12\x10\n\x0bOVER_23_AGE\x10\xbb\x08\x12\x10\n\x0bOVER_24_AGE\x10\xbc\x08\x12\x10\n\x0bOVER_25_AGE\x10\xbd\x08\x12\x10\n\x0bOVER_26_AGE\x10\xbe\x08\x12\x10\n\x0bOVER_27_AGE\x10\xbf\x08\x12\x10\n\x0bOVER_28_AGE\x10\xc0\x08\x12\x10\n\x0bOVER_29_AGE\x10\xc1\x08\x12\x10\n\x0bOVER_30_AGE\x10\xc2\x08\x12\x10\n\x0bOVER_31_AGE\x10\xc3\x08\x12\x10\n\x0bOVER_32_AGE\x10\xc4\x08\x12\x10\n\x0bOVER_33_AGE\x10\xc5\x08\x12\x10\n\x0bOVER_34_AGE\x10\xc6\x08\x12\x10\n\x0bOVER_35_AGE\x10\xc7\x08\x12\x10\n\x0bOVER_36_AGE\x10\xc8\x08\x12\x10\n\x0bOVER_37_AGE\x10\xc9\x08\x12\x10\n\x0bOVER_38_AGE\x10\xca\x08\x12\x10\n\x0bOVER_39_AGE\x10\xcb\x08\x12\x10\n\x0bOVER_40_AGE\x10\xcc\x08\x12\x10\n\x0bOVER_41_AGE\x10\xcd\x08\x12\x10\n\x0bOVER_42_AGE\x10\xce\x08\x12\x10\n\x0bOVER_43_AGE\x10\xcf\x08\x12\x10\n\x0bOVER_44_AGE\x10\xd0\x08\x12\x10\n\x0bOVER_45_AGE\x10\xd1\x08\x12\x10\n\x0bOVER_46_AGE\x10\xd2\x08\x12\x10\n\x0bOVER_47_AGE\x10\xd3\x08\x12\x10\n\x0bOVER_48_AGE\x10\xd4\x08\x12\x10\n\x0bOVER_49_AGE\x10\xd5\x08\x12\x10\n\x0bOVER_50_AGE\x10\xd6\x08\x12\x10\n\x0bOVER_51_AGE\x10\xd7\x08\x12\x10\n\x0bOVER_52_AGE\x10\xd8\x08\x12\x10\n\x0bOVER_53_AGE\x10\xd9\x08\x12\x10\n\x0bOVER_54_AGE\x10\xda\x08\x12\x10\n\x0bOVER_55_AGE\x10\xdb\x08\x12\x10\n\x0bOVER_56_AGE\x10\xdc\x08\x12\x10\n\x0bOVER_57_AGE\x10\xdd\x08\x12\x10\n\x0bOVER_58_AGE\x10\xde\x08\x12\x10\n\x0bOVER_59_AGE\x10\xdf\x08\x12\x10\n\x0bOVER_60_AGE\x10\xe0\x08\x12\x10\n\x0bOVER_61_AGE\x10\xe1\x08\x12\x10\n\x0bOVER_62_AGE\x10\xe2\x08\x12\x10\n\x0bOVER_63_AGE\x10\xe3\x08\x12\x10\n\x0bOVER_64_AGE\x10\xe4\x08\x12\x10\n\x0bOVER_65_AGE\x10\xe5\x08\x12\x16\n\x11\x45\x44UCATION_PROGRAM\x10\xf5\x07\x12\x15\n\x10\x45\x44UCATION_COURSE\x10\xf6\x07\x12\x0c\n\x07PRODUCT\x10\xf8\x07\x12\x0c\n\x07SERVICE\x10\xf9\x07\x12\n\n\x05OFFER\x10\xfa\x07\x12\r\n\x08\x43\x41TEGORY\x10\xfb\x07\x12\x1d\n\x18PREFERRED_CONTACT_METHOD\x10\xfc\x07\x12\x17\n\x12PREFERRED_LOCATION\x10\xfd\x07\x12\x1b\n\x16PREFERRED_CONTACT_TIME\x10\xfe\x07\x12\x16\n\x11PURCHASE_TIMELINE\x10\xff\x07\x12\x18\n\x13YEARS_OF_EXPERIENCE\x10\x98\x08\x12\x11\n\x0cJOB_INDUSTRY\x10\x99\x08\x12\x17\n\x12LEVEL_OF_EDUCATION\x10\x9a\x08\x12\x12\n\rPROPERTY_TYPE\x10\x80\x08\x12\x16\n\x11REALTOR_HELP_GOAL\x10\x81\x08\x12\x17\n\x12PROPERTY_COMMUNITY\x10\x82\x08\x12\x10\n\x0bPRICE_RANGE\x10\x83\x08\x12\x17\n\x12NUMBER_OF_BEDROOMS\x10\x84\x08\x12\x17\n\x12\x46URNISHED_PROPERTY\x10\x85\x08\x12\x1a\n\x15PETS_ALLOWED_PROPERTY\x10\x86\x08\x12\x1a\n\x15NEXT_PLANNED_PURCHASE\x10\x87\x08\x12\x1a\n\x15\x45VENT_SIGNUP_INTEREST\x10\x89\x08\x12\x1e\n\x19PREFERRED_SHOPPING_PLACES\x10\x8a\x08\x12\x13\n\x0e\x46\x41VORITE_BRAND\x10\x8b\x08\x12+\n&TRANSPORTATION_COMMERCIAL_LICENSE_TYPE\x10\x8c\x08\x12\x1b\n\x16\x45VENT_BOOKING_INTEREST\x10\x8e\x08\x12\x18\n\x13\x44\x45STINATION_COUNTRY\x10\x8f\x08\x12\x15\n\x10\x44\x45STINATION_CITY\x10\x90\x08\x12\x16\n\x11\x44\x45PARTURE_COUNTRY\x10\x91\x08\x12\x13\n\x0e\x44\x45PARTURE_CITY\x10\x92\x08\x12\x13\n\x0e\x44\x45PARTURE_DATE\x10\x93\x08\x12\x10\n\x0bRETURN_DATE\x10\x94\x08\x12\x18\n\x13NUMBER_OF_TRAVELERS\x10\x95\x08\x12\x12\n\rTRAVEL_BUDGET\x10\x96\x08\x12\x19\n\x14TRAVEL_ACCOMMODATION\x10\x97\x08\x42\xf9\x01\n\"com.google.ads.googleads.v20.enumsB\x1fLeadFormFieldUserInputTypeProtoP\x01ZCgoogle.golang.org/genproto/googleapis/ads/googleads/v20/enums;enums\xa2\x02\x03GAA\xaa\x02\x1eGoogle.Ads.GoogleAds.V20.Enums\xca\x02\x1eGoogle\\Ads\\GoogleAds\\V20\\Enums\xea\x02\"Google::Ads::GoogleAds::V20::Enumsb\x06proto3"

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
          LeadFormFieldUserInputTypeEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.LeadFormFieldUserInputTypeEnum").msgclass
          LeadFormFieldUserInputTypeEnum::LeadFormFieldUserInputType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.enums.LeadFormFieldUserInputTypeEnum.LeadFormFieldUserInputType").enummodule
        end
      end
    end
  end
end
