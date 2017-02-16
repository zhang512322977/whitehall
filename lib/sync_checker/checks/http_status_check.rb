module SyncChecker
  module Checks
    HttpStatusCheck = Struct.new(:disallowed_response_codes) do
      def call(response)
        failures = []

        if (disallowed_response_codes_array).include?(response.response_code)
          failures << "http response code #{response.response_code} returned for #{response.request.base_url}"
        end

        failures
      end

    private

      def disallowed_response_codes_array
        Array(disallowed_response_codes)
      end
    end
  end
end
