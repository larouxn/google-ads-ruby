# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/ads/googleads/v20/services/bidding_strategy_service.proto for package 'Google.Ads.GoogleAds.V20.Services'
# Original file comments:
# Copyright 2025 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/ads/google_ads/v20/services/bidding_strategy_service_pb'

module Google
  module Ads
    module GoogleAds
      module V20
        module Services
          module BiddingStrategyService
            # Proto file describing the Bidding Strategy service.
            #
            # Service to manage bidding strategies.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.ads.googleads.v20.services.BiddingStrategyService'

              # Creates, updates, or removes bidding strategies. Operation statuses are
              # returned.
              #
              # List of thrown errors:
              #   [AdxError]()
              #   [AuthenticationError]()
              #   [AuthorizationError]()
              #   [BiddingError]()
              #   [BiddingStrategyError]()
              #   [ContextError]()
              #   [DatabaseError]()
              #   [DateError]()
              #   [DistinctError]()
              #   [FieldError]()
              #   [FieldMaskError]()
              #   [HeaderError]()
              #   [IdError]()
              #   [InternalError]()
              #   [MutateError]()
              #   [NewResourceCreationError]()
              #   [NotEmptyError]()
              #   [NullError]()
              #   [OperationAccessDeniedError]()
              #   [OperatorError]()
              #   [QuotaError]()
              #   [RangeError]()
              #   [RequestError]()
              #   [SizeLimitError]()
              #   [StringFormatError]()
              #   [StringLengthError]()
              rpc :MutateBiddingStrategies, ::Google::Ads::GoogleAds::V20::Services::MutateBiddingStrategiesRequest, ::Google::Ads::GoogleAds::V20::Services::MutateBiddingStrategiesResponse
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
