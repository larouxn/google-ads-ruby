# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/googleads/v20/common/user_lists.proto

require 'google/protobuf'

require 'google/ads/google_ads/v20/enums/customer_match_upload_key_type_pb'
require 'google/ads/google_ads/v20/enums/lookalike_expansion_level_pb'
require 'google/ads/google_ads/v20/enums/user_list_crm_data_source_type_pb'
require 'google/ads/google_ads/v20/enums/user_list_date_rule_item_operator_pb'
require 'google/ads/google_ads/v20/enums/user_list_flexible_rule_operator_pb'
require 'google/ads/google_ads/v20/enums/user_list_logical_rule_operator_pb'
require 'google/ads/google_ads/v20/enums/user_list_number_rule_item_operator_pb'
require 'google/ads/google_ads/v20/enums/user_list_prepopulation_status_pb'
require 'google/ads/google_ads/v20/enums/user_list_rule_type_pb'
require 'google/ads/google_ads/v20/enums/user_list_string_rule_item_operator_pb'


descriptor_data = "\n0google/ads/googleads/v20/common/user_lists.proto\x12\x1fgoogle.ads.googleads.v20.common\x1a\x43google/ads/googleads/v20/enums/customer_match_upload_key_type.proto\x1a>google/ads/googleads/v20/enums/lookalike_expansion_level.proto\x1a\x43google/ads/googleads/v20/enums/user_list_crm_data_source_type.proto\x1a\x46google/ads/googleads/v20/enums/user_list_date_rule_item_operator.proto\x1a\x45google/ads/googleads/v20/enums/user_list_flexible_rule_operator.proto\x1a\x44google/ads/googleads/v20/enums/user_list_logical_rule_operator.proto\x1aHgoogle/ads/googleads/v20/enums/user_list_number_rule_item_operator.proto\x1a\x43google/ads/googleads/v20/enums/user_list_prepopulation_status.proto\x1a\x38google/ads/googleads/v20/enums/user_list_rule_type.proto\x1aHgoogle/ads/googleads/v20/enums/user_list_string_rule_item_operator.proto\"\xb8\x01\n\x15LookalikeUserListInfo\x12\x1a\n\x12seed_user_list_ids\x18\x01 \x03(\x03\x12l\n\x0f\x65xpansion_level\x18\x02 \x01(\x0e\x32S.google.ads.googleads.v20.enums.LookalikeExpansionLevelEnum.LookalikeExpansionLevel\x12\x15\n\rcountry_codes\x18\x03 \x03(\t\"E\n\x13SimilarUserListInfo\x12\x1b\n\x0eseed_user_list\x18\x02 \x01(\tH\x00\x88\x01\x01\x42\x11\n\x0f_seed_user_list\"\x9d\x02\n\x14\x43rmBasedUserListInfo\x12\x13\n\x06\x61pp_id\x18\x04 \x01(\tH\x00\x88\x01\x01\x12r\n\x0fupload_key_type\x18\x02 \x01(\x0e\x32Y.google.ads.googleads.v20.enums.CustomerMatchUploadKeyTypeEnum.CustomerMatchUploadKeyType\x12q\n\x10\x64\x61ta_source_type\x18\x03 \x01(\x0e\x32W.google.ads.googleads.v20.enums.UserListCrmDataSourceTypeEnum.UserListCrmDataSourceTypeB\t\n\x07_app_id\"\xc2\x01\n\x10UserListRuleInfo\x12X\n\trule_type\x18\x01 \x01(\x0e\x32\x45.google.ads.googleads.v20.enums.UserListRuleTypeEnum.UserListRuleType\x12T\n\x10rule_item_groups\x18\x02 \x03(\x0b\x32:.google.ads.googleads.v20.common.UserListRuleItemGroupInfo\"f\n\x19UserListRuleItemGroupInfo\x12I\n\nrule_items\x18\x01 \x03(\x0b\x32\x35.google.ads.googleads.v20.common.UserListRuleItemInfo\"\xc6\x02\n\x14UserListRuleItemInfo\x12\x11\n\x04name\x18\x05 \x01(\tH\x01\x88\x01\x01\x12W\n\x10number_rule_item\x18\x02 \x01(\x0b\x32;.google.ads.googleads.v20.common.UserListNumberRuleItemInfoH\x00\x12W\n\x10string_rule_item\x18\x03 \x01(\x0b\x32;.google.ads.googleads.v20.common.UserListStringRuleItemInfoH\x00\x12S\n\x0e\x64\x61te_rule_item\x18\x04 \x01(\x0b\x32\x39.google.ads.googleads.v20.common.UserListDateRuleItemInfoH\x00\x42\x0b\n\trule_itemB\x07\n\x05_name\"\xd9\x01\n\x18UserListDateRuleItemInfo\x12o\n\x08operator\x18\x01 \x01(\x0e\x32].google.ads.googleads.v20.enums.UserListDateRuleItemOperatorEnum.UserListDateRuleItemOperator\x12\x12\n\x05value\x18\x04 \x01(\tH\x00\x88\x01\x01\x12\x1b\n\x0eoffset_in_days\x18\x05 \x01(\x03H\x01\x88\x01\x01\x42\x08\n\x06_valueB\x11\n\x0f_offset_in_days\"\xaf\x01\n\x1aUserListNumberRuleItemInfo\x12s\n\x08operator\x18\x01 \x01(\x0e\x32\x61.google.ads.googleads.v20.enums.UserListNumberRuleItemOperatorEnum.UserListNumberRuleItemOperator\x12\x12\n\x05value\x18\x03 \x01(\x01H\x00\x88\x01\x01\x42\x08\n\x06_value\"\xaf\x01\n\x1aUserListStringRuleItemInfo\x12s\n\x08operator\x18\x01 \x01(\x0e\x32\x61.google.ads.googleads.v20.enums.UserListStringRuleItemOperatorEnum.UserListStringRuleItemOperator\x12\x12\n\x05value\x18\x03 \x01(\tH\x00\x88\x01\x01\x42\x08\n\x06_value\"\x96\x01\n\x17\x46lexibleRuleOperandInfo\x12?\n\x04rule\x18\x01 \x01(\x0b\x32\x31.google.ads.googleads.v20.common.UserListRuleInfo\x12!\n\x14lookback_window_days\x18\x02 \x01(\x03H\x00\x88\x01\x01\x42\x17\n\x15_lookback_window_days\"\xc6\x02\n\x18\x46lexibleRuleUserListInfo\x12~\n\x17inclusive_rule_operator\x18\x01 \x01(\x0e\x32].google.ads.googleads.v20.enums.UserListFlexibleRuleOperatorEnum.UserListFlexibleRuleOperator\x12T\n\x12inclusive_operands\x18\x02 \x03(\x0b\x32\x38.google.ads.googleads.v20.common.FlexibleRuleOperandInfo\x12T\n\x12\x65xclusive_operands\x18\x03 \x03(\x0b\x32\x38.google.ads.googleads.v20.common.FlexibleRuleOperandInfo\"\xee\x01\n\x15RuleBasedUserListInfo\x12y\n\x14prepopulation_status\x18\x01 \x01(\x0e\x32[.google.ads.googleads.v20.enums.UserListPrepopulationStatusEnum.UserListPrepopulationStatus\x12Z\n\x17\x66lexible_rule_user_list\x18\x05 \x01(\x0b\x32\x39.google.ads.googleads.v20.common.FlexibleRuleUserListInfo\"^\n\x13LogicalUserListInfo\x12G\n\x05rules\x18\x01 \x03(\x0b\x32\x38.google.ads.googleads.v20.common.UserListLogicalRuleInfo\"\xdc\x01\n\x17UserListLogicalRuleInfo\x12m\n\x08operator\x18\x01 \x01(\x0e\x32[.google.ads.googleads.v20.enums.UserListLogicalRuleOperatorEnum.UserListLogicalRuleOperator\x12R\n\rrule_operands\x18\x02 \x03(\x0b\x32;.google.ads.googleads.v20.common.LogicalUserListOperandInfo\"B\n\x1aLogicalUserListOperandInfo\x12\x16\n\tuser_list\x18\x02 \x01(\tH\x00\x88\x01\x01\x42\x0c\n\n_user_list\"Y\n\x11\x42\x61sicUserListInfo\x12\x44\n\x07\x61\x63tions\x18\x01 \x03(\x0b\x32\x33.google.ads.googleads.v20.common.UserListActionInfo\"c\n\x12UserListActionInfo\x12\x1b\n\x11\x63onversion_action\x18\x03 \x01(\tH\x00\x12\x1c\n\x12remarketing_action\x18\x04 \x01(\tH\x00\x42\x12\n\x10user_list_actionB\xee\x01\n#com.google.ads.googleads.v20.commonB\x0eUserListsProtoP\x01ZEgoogle.golang.org/genproto/googleapis/ads/googleads/v20/common;common\xa2\x02\x03GAA\xaa\x02\x1fGoogle.Ads.GoogleAds.V20.Common\xca\x02\x1fGoogle\\Ads\\GoogleAds\\V20\\Common\xea\x02#Google::Ads::GoogleAds::V20::Commonb\x06proto3"

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
        module Common
          LookalikeUserListInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.LookalikeUserListInfo").msgclass
          SimilarUserListInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.SimilarUserListInfo").msgclass
          CrmBasedUserListInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.CrmBasedUserListInfo").msgclass
          UserListRuleInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.UserListRuleInfo").msgclass
          UserListRuleItemGroupInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.UserListRuleItemGroupInfo").msgclass
          UserListRuleItemInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.UserListRuleItemInfo").msgclass
          UserListDateRuleItemInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.UserListDateRuleItemInfo").msgclass
          UserListNumberRuleItemInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.UserListNumberRuleItemInfo").msgclass
          UserListStringRuleItemInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.UserListStringRuleItemInfo").msgclass
          FlexibleRuleOperandInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.FlexibleRuleOperandInfo").msgclass
          FlexibleRuleUserListInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.FlexibleRuleUserListInfo").msgclass
          RuleBasedUserListInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.RuleBasedUserListInfo").msgclass
          LogicalUserListInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.LogicalUserListInfo").msgclass
          UserListLogicalRuleInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.UserListLogicalRuleInfo").msgclass
          LogicalUserListOperandInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.LogicalUserListOperandInfo").msgclass
          BasicUserListInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.BasicUserListInfo").msgclass
          UserListActionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.googleads.v20.common.UserListActionInfo").msgclass
        end
      end
    end
  end
end
