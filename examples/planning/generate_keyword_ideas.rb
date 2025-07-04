#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright 2018 Google LLC
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
#
# This example gets all campaigns. To add campaigns, run add_campaigns.rb.

require 'optparse'
require 'google/ads/google_ads'
require_relative '../shared/error_handler.rb'

# [START generate_keyword_ideas]
def generate_keyword_ideas(customer_id, location_ids, language_id, keywords,
    page_url)
  # GoogleAdsClient will read a config file from
  # ENV['HOME']/google_ads_config.rb when called without parameters
  client = Google::Ads::GoogleAds::GoogleAdsClient.new

  # Make sure that keywords and/or page URL were specified. The request must
  # have exactly one of urlSeed, keywordSeed, or keywordAndUrlSeed set.
  if keywords.reject {|k| k.nil?}.empty? && page_url.nil?
    raise "At least one of keywords or page URL is required."
  end

  kp_idea_service = client.service.keyword_plan_idea

  options_hash = if keywords.empty?
                   seed = client.resource.url_seed do |seed|
                     seed.url = page_url
                   end
                   {url_seed: seed}
                 elsif page_url.nil?
                   seed = client.resource.keyword_seed do |seed|
                     keywords.each do |keyword|
                       seed.keywords << keyword
                     end
                   end
                   {keyword_seed: seed}
                 else
                   seed = client.resource.keyword_and_url_seed do |seed|
                     seed.url = page_url
                     keywords.each do |keyword|
                       seed.keywords << keyword
                     end
                   end
                   {keyword_and_url_seed: seed}
                 end

  geo_target_constants = location_ids.map do |location_id|
    client.path.geo_target_constant(location_id)
  end

  include_adult_keywords = true

  response = kp_idea_service.generate_keyword_ideas(
    customer_id: customer_id,
    language: client.path.language_constant(language_id),
    geo_target_constants: geo_target_constants,
    include_adult_keywords: include_adult_keywords,
    # To restrict to only Google Search, change the parameter below to
    # :GOOGLE_SEARCH
    keyword_plan_network: :GOOGLE_SEARCH_AND_PARTNERS,
    **options_hash
  )

  response.each do |result|
    monthly_searches = if result.keyword_idea_metrics.nil?
                         0
                       else
                         result.keyword_idea_metrics.avg_monthly_searches
                       end
    competition = if result.keyword_idea_metrics.nil?
                    :UNSPECIFIED
                  else
                    result.keyword_idea_metrics.competition
                  end
    puts "Keyword idea text #{result.text} has #{monthly_searches} average " +
        "monthly searches and competition as #{competition}."
  end
end
# [END generate_keyword_ideas]

if __FILE__ == $0
  options = {}
  # The following parameter(s) should be provided to run the example. You can
  # either specify these by changing the INSERT_XXX_ID_HERE values below, or on
  # the command line.
  #
  # Parameters passed on the command line will override any parameters set in
  # code.
  #
  # Running the example with -h will print the command line usage.
  options[:customer_id] = 'INSERT_CUSTOMER_ID_HERE'

  options[:location_ids] = ['INSERT_LOCATION_ID_1_HERE', 'INSERT_LOCATION_ID_2_HERE']

  options[:language_id] = 'INSERT_LANGUAGE_ID_HERE'

  # Optional but recommended
  options[:keyword_texts] = ['INSERT_KEYWORD_TEXT_1_HERE', 'INSERT_KEYWORD_TEXT_2_HERE']

  # Optional: Specify a URL string related to your business to generate ideas.
  options[:page_url] = nil

  OptionParser.new do |opts|
    opts.banner = sprintf('Usage: %s [options]', File.basename(__FILE__))

    opts.separator ''
    opts.separator 'Options:'

    opts.on('-C', '--customer-id CUSTOMER-ID', String, 'Customer ID') do |v|
      options[:customer_id] = v
    end

    opts.on('-L', '--location-ids LOCATION-IDS', String,
        'Location IDs (comma separated)') do |v|
      options[:location_ids] = v.split(',')
    end

    opts.on('-a', '--language-id LANGUAGE-ID', String, 'Language ID') do |v|
      options[:language_id] = v
    end

    opts.on('-K', '--keyword-texts KEYWORD-TEXTS', String,
        'Keyword Texts (comma separated)') do |v|
      options[:keyword_texts] = v.split(',')
    end

    opts.on('-p', '--page-url PAGE-URL', String, 'Page URL') do |v|
      options[:page_url] = v
    end

    opts.separator ''
    opts.separator 'Help:'

    opts.on_tail('-h', '--help', 'Show this message') do
      puts opts
      exit
    end
  end.parse!

  begin
    generate_keyword_ideas(
      options.fetch(:customer_id).tr("-", ""),
      options.fetch(:location_ids),
      options.fetch(:language_id),
      options.fetch(:keyword_texts),
      options[:page_url]
    )
  rescue Google::Ads::GoogleAds::Errors::GoogleAdsError => e
    GoogleAdsErrorHandler.handle_google_ads_error(e)
    raise # Re-raise the error to maintain original script behavior.
  end
end
