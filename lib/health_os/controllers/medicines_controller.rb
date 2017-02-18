# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module HealthOs
  class MedicinesController < BaseController
    @@instance = MedicinesController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get a manufacturer by its id
    # @param [String] manufacturer_id Required parameter: Id of the manufacturer
    # @return Mixed response from the API call
    def get_manufacturer(manufacturer_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/medicines/manufacturers/{manufacturer_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'manufacturer_id' => manufacturer_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Search a manufacturer by its name
    # @param [String] manufacturer_query Required parameter: Example: 
    # @return Mixed response from the API call
    def search_manufacturers(manufacturer_query)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/search/medicines/manufacturers/{manufacturer_query}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'manufacturer_query' => manufacturer_query
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get common side effects of a medicine
    # @param [String] medicine_id Required parameter: Example: 
    # @return Mixed response from the API call
    def get_common_side_effects(medicine_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/medicines/brands/{medicine_id}/side_effects'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'medicine_id' => medicine_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get popular usages of a medicine
    # @param [String] medicine_id Required parameter: Example: 
    # @return Mixed response from the API call
    def get_popular_usage(medicine_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/medicines/brands/{medicine_id}/usages'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'medicine_id' => medicine_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get medicines by a manufacturer
    # @param [Integer] page Required parameter: Example: 
    # @param [Integer] size Required parameter: Example: 
    # @param [String] manufacturer_id Required parameter: Example: 
    # @return Mixed response from the API call
    def get_medicines_by_manufacturer(page, 
                                      size, 
                                      manufacturer_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/medicines/manufacturers/{manufacturer_id}/medicines'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'manufacturer_id' => manufacturer_id
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'page' => page,
        'size' => size
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get similar medicines
    # @param [String] medicine_id Required parameter: Example: 
    # @return Mixed response from the API call
    def get_similar_medicines(medicine_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/medicines/brands/{medicine_id}/similar'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'medicine_id' => medicine_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get a medicine
    # @param [String] medicine_id Required parameter: Example: 
    # @return Mixed response from the API call
    def get_medicine(medicine_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/medicines/brands/{medicine_id}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'medicine_id' => medicine_id
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get all medicines
    # @param [Integer] page Required parameter: Example: 
    # @param [Integer] size Required parameter: Example: 
    # @return Mixed response from the API call
    def get_all_medicines(page, 
                          size)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/medicines/brands'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'page' => page,
        'size' => size
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Search a medicine by name
    # @param [String] medicine_query Required parameter: Example: 
    # @return Mixed response from the API call
    def search_medicines(medicine_query)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/search/medicines/brands/{medicine_query}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'medicine_query' => medicine_query
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get all manufacturers
    # @param [Integer] page Required parameter: Example: 
    # @param [Integer] size Required parameter: Example: 
    # @return Mixed response from the API call
    def get_all_manufacturers(page, 
                              size)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/medicines/manufacturers'
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'page' => page,
        'size' => size
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get substitutes of a medicine
    # @param [Integer] page Required parameter: Example: 
    # @param [Integer] size Required parameter: Example: 
    # @param [String] medicine_id Required parameter: Example: 
    # @return Mixed response from the API call
    def get_alternative_medicines(page, 
                                  size, 
                                  medicine_id)

      # prepare query url
      _query_builder = Configuration.base_uri.dup % [Configuration.host]
      _query_builder << '/medicines/brands/{medicine_id}/alternatives'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'medicine_id' => medicine_id
      }
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'page' => page,
        'size' => size
      }
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      OAuth2.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end
  end
end
