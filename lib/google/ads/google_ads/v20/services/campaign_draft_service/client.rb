# frozen_string_literal: true

# Copyright 2025 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

# require "google/ads/google_ads/error"
require "google/ads/google_ads/v20/services/campaign_draft_service_pb"

module Google
  module Ads
    module GoogleAds
      module V20
        module Services
          module CampaignDraftService
            ##
            # Client for the CampaignDraftService service.
            #
            # Service to manage campaign drafts.
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "googleads.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :campaign_draft_service_stub

              ##
              # Configure the CampaignDraftService Client class.
              #
              # See {::Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all CampaignDraftService clients
              #   ::Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  default_config = Client::Configuration.new

                  default_config.timeout = 14_400.0
                  default_config.retry_policy = {
                    initial_delay: 5.0, max_delay: 60.0, multiplier: 1.3, retry_codes: [14, 4]
                  }

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the CampaignDraftService Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # The effective universe domain
              #
              # @return [String]
              #
              def universe_domain
                @campaign_draft_service_stub.universe_domain
              end

              ##
              # Create a new CampaignDraftService client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the CampaignDraftService client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # These require statements are intentionally placed here to initialize
                # the gRPC module only when it's required.
                # See https://github.com/googleapis/toolkit/issues/446
                require "gapic/grpc"
                require "google/ads/google_ads/v20/services/campaign_draft_service_services_pb"

                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint.nil? ||
                                         (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-"))
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end
                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @operations_client = Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                  config.universe_domain = @config.universe_domain
                end

                @campaign_draft_service_stub = ::Gapic::ServiceStub.new(
                  ::Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Stub,
                  credentials: credentials,
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  channel_args: @config.channel_args,
                  interceptors: @config.interceptors,
                  channel_pool_config: @config.channel_pool,
                  logger: @config.logger
                )

                @campaign_draft_service_stub.stub_logger&.info do |entry|
                  entry.set_system_name
                  entry.set_service
                  entry.message = "Created client for #{entry.service}"
                  entry.set_credentials_fields credentials
                  entry.set "customEndpoint", @config.endpoint if @config.endpoint
                  entry.set "defaultTimeout", @config.timeout if @config.timeout
                  entry.set "quotaProject", @quota_project_id if @quota_project_id
                end
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Operations]
              #
              attr_reader :operations_client

              ##
              # The logger used for request/response debug logging.
              #
              # @return [Logger]
              #
              def logger
                @campaign_draft_service_stub.logger
              end

              # Service calls

              ##
              # Creates, updates, or removes campaign drafts. Operation statuses are
              # returned.
              #
              # List of thrown errors:
              #   [AuthenticationError]()
              #   [AuthorizationError]()
              #   [CampaignDraftError]()
              #   [DatabaseError]()
              #   [FieldError]()
              #   [HeaderError]()
              #   [InternalError]()
              #   [MutateError]()
              #   [QuotaError]()
              #   [RequestError]()
              #
              # @overload mutate_campaign_drafts(request, options = nil)
              #   Pass arguments to `mutate_campaign_drafts` via a request object, either of type
              #   {::Google::Ads::GoogleAds::V20::Services::MutateCampaignDraftsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Ads::GoogleAds::V20::Services::MutateCampaignDraftsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload mutate_campaign_drafts(customer_id: nil, operations: nil, partial_failure: nil, validate_only: nil, response_content_type: nil)
              #   Pass arguments to `mutate_campaign_drafts` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param customer_id [::String]
              #     Required. The ID of the customer whose campaign drafts are being modified.
              #   @param operations [::Array<::Google::Ads::GoogleAds::V20::Services::CampaignDraftOperation, ::Hash>]
              #     Required. The list of operations to perform on individual campaign drafts.
              #   @param partial_failure [::Boolean]
              #     If true, successful operations will be carried out and invalid
              #     operations will return errors. If false, all operations will be carried
              #     out in one transaction if and only if they are all valid.
              #     Default is false.
              #   @param validate_only [::Boolean]
              #     If true, the request is validated but not executed. Only errors are
              #     returned, not results.
              #   @param response_content_type [::Google::Ads::GoogleAds::V20::Enums::ResponseContentTypeEnum::ResponseContentType]
              #     The response content type setting. Determines whether the mutable resource
              #     or just the resource name should be returned post mutation.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Ads::GoogleAds::V20::Services::MutateCampaignDraftsResponse]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Ads::GoogleAds::V20::Services::MutateCampaignDraftsResponse]
              #
              # @raise [Google::Ads::GoogleAds::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/ads/google_ads/v20/services"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Ads::GoogleAds::V20::Services::MutateCampaignDraftsRequest.new
              #
              #   # Call the mutate_campaign_drafts method.
              #   result = client.mutate_campaign_drafts request
              #
              #   # The returned object is of type Google::Ads::GoogleAds::V20::Services::MutateCampaignDraftsResponse.
              #   p result
              #
              def mutate_campaign_drafts request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request,
                                                   to: ::Google::Ads::GoogleAds::V20::Services::MutateCampaignDraftsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.mutate_campaign_drafts.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Ads::GoogleAds::VERSION
                metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.customer_id
                  header_params["customer_id"] = request.customer_id
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.mutate_campaign_drafts.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.mutate_campaign_drafts.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @campaign_draft_service_stub.call_rpc :mutate_campaign_drafts, request,
                                                      options: options do |response, operation|
                  yield response, operation if block_given?
                end
                # rescue GRPC::BadStatus => grpc_error
                #  raise Google::Ads::GoogleAds::Error.new grpc_error.message
              end

              ##
              # Promotes the changes in a draft back to the base campaign.
              #
              # This method returns a Long Running Operation (LRO) indicating if the
              # Promote is done. Use [Operations.GetOperation] to poll the LRO until it
              # is done. Only a done status is returned in the response. See the status
              # in the Campaign Draft resource to determine if the promotion was
              # successful. If the LRO failed, use
              # {::Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Client#list_campaign_draft_async_errors CampaignDraftService.ListCampaignDraftAsyncErrors}
              # to view the list of error reasons.
              #
              # List of thrown errors:
              #   [AuthenticationError]()
              #   [AuthorizationError]()
              #   [CampaignDraftError]()
              #   [HeaderError]()
              #   [InternalError]()
              #   [QuotaError]()
              #   [RequestError]()
              #
              # @overload promote_campaign_draft(request, options = nil)
              #   Pass arguments to `promote_campaign_draft` via a request object, either of type
              #   {::Google::Ads::GoogleAds::V20::Services::PromoteCampaignDraftRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Ads::GoogleAds::V20::Services::PromoteCampaignDraftRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload promote_campaign_draft(campaign_draft: nil, validate_only: nil)
              #   Pass arguments to `promote_campaign_draft` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param campaign_draft [::String]
              #     Required. The resource name of the campaign draft to promote.
              #   @param validate_only [::Boolean]
              #     If true, the request is validated but no Long Running Operation is created.
              #     Only errors are returned.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Gapic::Operation]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [Google::Ads::GoogleAds::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/ads/google_ads/v20/services"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Ads::GoogleAds::V20::Services::PromoteCampaignDraftRequest.new
              #
              #   # Call the promote_campaign_draft method.
              #   result = client.promote_campaign_draft request
              #
              #   # The returned object is of type Gapic::Operation. You can use it to
              #   # check the status of an operation, cancel it, or wait for results.
              #   # Here is how to wait for a response.
              #   result.wait_until_done! timeout: 60
              #   if result.response?
              #     p result.response
              #   else
              #     puts "No response received."
              #   end
              #
              def promote_campaign_draft request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request,
                                                   to: ::Google::Ads::GoogleAds::V20::Services::PromoteCampaignDraftRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.promote_campaign_draft.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Ads::GoogleAds::VERSION
                metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.campaign_draft
                  header_params["campaign_draft"] = request.campaign_draft
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.promote_campaign_draft.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.promote_campaign_draft.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @campaign_draft_service_stub.call_rpc :promote_campaign_draft, request,
                                                      options: options do |response, operation|
                  response = ::Gapic::Operation.new response, @operations_client, options: options
                  yield response, operation if block_given?
                  throw :response, response
                end
                # rescue GRPC::BadStatus => grpc_error
                #  raise Google::Ads::GoogleAds::Error.new grpc_error.message
              end

              ##
              # Returns all errors that occurred during CampaignDraft promote. Throws an
              # error if called before campaign draft is promoted.
              # Supports standard list paging.
              #
              # List of thrown errors:
              #   [AuthenticationError]()
              #   [AuthorizationError]()
              #   [HeaderError]()
              #   [InternalError]()
              #   [QuotaError]()
              #   [RequestError]()
              #
              # @overload list_campaign_draft_async_errors(request, options = nil)
              #   Pass arguments to `list_campaign_draft_async_errors` via a request object, either of type
              #   {::Google::Ads::GoogleAds::V20::Services::ListCampaignDraftAsyncErrorsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Ads::GoogleAds::V20::Services::ListCampaignDraftAsyncErrorsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload list_campaign_draft_async_errors(resource_name: nil, page_token: nil, page_size: nil)
              #   Pass arguments to `list_campaign_draft_async_errors` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param resource_name [::String]
              #     Required. The name of the campaign draft from which to retrieve the async
              #     errors.
              #   @param page_token [::String]
              #     Token of the page to retrieve. If not specified, the first
              #     page of results will be returned. Use the value obtained from
              #     `next_page_token` in the previous response in order to request
              #     the next page of results.
              #   @param page_size [::Integer]
              #     Number of elements to retrieve in a single page.
              #     When a page request is too large, the server may decide to
              #     further limit the number of returned resources.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Gapic::PagedEnumerable<::Google::Rpc::Status>]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Gapic::PagedEnumerable<::Google::Rpc::Status>]
              #
              # @raise [Google::Ads::GoogleAds::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/ads/google_ads/v20/services"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Ads::GoogleAds::V20::Services::ListCampaignDraftAsyncErrorsRequest.new
              #
              #   # Call the list_campaign_draft_async_errors method.
              #   result = client.list_campaign_draft_async_errors request
              #
              #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
              #   # over elements, and API calls will be issued to fetch pages as needed.
              #   result.each do |item|
              #     # Each element is of type ::Google::Rpc::Status.
              #     p item
              #   end
              #
              def list_campaign_draft_async_errors request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request,
                                                   to: ::Google::Ads::GoogleAds::V20::Services::ListCampaignDraftAsyncErrorsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.list_campaign_draft_async_errors.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Ads::GoogleAds::VERSION
                metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.resource_name
                  header_params["resource_name"] = request.resource_name
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.list_campaign_draft_async_errors.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.list_campaign_draft_async_errors.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @campaign_draft_service_stub.call_rpc :list_campaign_draft_async_errors, request,
                                                      options: options do |response, operation|
                  response = ::Gapic::PagedEnumerable.new @campaign_draft_service_stub,
                                                          :list_campaign_draft_async_errors, request, response, operation, options
                  yield response, operation if block_given?
                  throw :response, response
                end
                # rescue GRPC::BadStatus => grpc_error
                #  raise Google::Ads::GoogleAds::Error.new grpc_error.message
              end

              ##
              # Configuration class for the CampaignDraftService API.
              #
              # This class represents the configuration for CampaignDraftService,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # mutate_campaign_drafts to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.mutate_campaign_drafts.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Ads::GoogleAds::V20::Services::CampaignDraftService::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.mutate_campaign_drafts.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   A custom service endpoint, as a hostname or hostname:port. The default is
              #   nil, indicating to use the default endpoint in the current universe domain.
              #   @return [::String,nil]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
              #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
              #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
              #    *  (`nil`) indicating no credentials
              #
              #   Warning: If you accept a credential configuration (JSON file or Hash) from an
              #   external source for authentication to Google Cloud, you must validate it before
              #   providing it to a Google API client library. Providing an unvalidated credential
              #   configuration to Google APIs can compromise the security of your systems and data.
              #   For more information, refer to [Validate credential configurations from external
              #   sources](https://cloud.google.com/docs/authentication/external/externally-sourced-credentials).
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] channel_args
              #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
              #   `GRPC::Core::Channel` object is provided as the credential.
              #   @return [::Hash]
              # @!attribute [rw] interceptors
              #   An array of interceptors that are run before calls are executed.
              #   @return [::Array<::GRPC::ClientInterceptor>]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional gRPC headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              # @!attribute [rw] universe_domain
              #   The universe domain within which to make requests. This determines the
              #   default endpoint URL. The default value of nil uses the environment
              #   universe (usually the default "googleapis.com" universe).
              #   @return [::String,nil]
              # @!attribute [rw] logger
              #   A custom logger to use for request/response debug logging, or the value
              #   `:default` (the default) to construct a default logger, or `nil` to
              #   explicitly disable logging.
              #   @return [::Logger,:default,nil]
              #
              class Configuration
                extend ::Gapic::Config

                # @private
                # The endpoint specific to the default "googleapis.com" universe. Deprecated.
                DEFAULT_ENDPOINT = "googleads.googleapis.com"

                config_attr :endpoint,      nil, ::String, nil
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials,
                             ::Google::Auth::BaseClient, ::Signet::OAuth2::Client, nil]
                  allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC::Core::Channel
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
                config_attr :interceptors,  nil, ::Array, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil
                config_attr :universe_domain, nil, ::String, nil
                config_attr :logger, :default, ::Logger, nil, :default

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration for the channel pool
                # @return [::Gapic::ServiceStub::ChannelPool::Configuration]
                #
                def channel_pool
                  @channel_pool ||= ::Gapic::ServiceStub::ChannelPool::Configuration.new
                end

                ##
                # Configuration RPC class for the CampaignDraftService API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `mutate_campaign_drafts`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :mutate_campaign_drafts
                  ##
                  # RPC-specific configuration for `promote_campaign_draft`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :promote_campaign_draft
                  ##
                  # RPC-specific configuration for `list_campaign_draft_async_errors`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_campaign_draft_async_errors

                  # @private
                  def initialize parent_rpcs = nil
                    mutate_campaign_drafts_config = parent_rpcs.mutate_campaign_drafts if parent_rpcs.respond_to? :mutate_campaign_drafts
                    @mutate_campaign_drafts = ::Gapic::Config::Method.new mutate_campaign_drafts_config
                    promote_campaign_draft_config = parent_rpcs.promote_campaign_draft if parent_rpcs.respond_to? :promote_campaign_draft
                    @promote_campaign_draft = ::Gapic::Config::Method.new promote_campaign_draft_config
                    list_campaign_draft_async_errors_config = parent_rpcs.list_campaign_draft_async_errors if parent_rpcs.respond_to? :list_campaign_draft_async_errors
                    @list_campaign_draft_async_errors = ::Gapic::Config::Method.new list_campaign_draft_async_errors_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
