module Whitehall
  class FeedUrlBuilder
    attr_accessor :params

    def initialize(params = {})
      @params = params
    end

    def url
      case params[:document_type]
      when 'publications'
        Whitehall.url_maker.publications_url(url_params)
      when 'announcements'
        Whitehall.url_maker.announcements_url(url_params)
      when 'statistics'
        Whitehall.url_maker.statistics_url(url_params)
      end
    end

  protected

    def url_params
      relevant_params = params.dup

      policy_areas = relevant_params.delete("policy_areas")
      relevant_params["topics"] = policy_areas unless policy_areas.nil?

      relevant_params.except(:document_type).reject { |key, value|
        values = Array(value)
        values.empty? || values.all?(&:blank?) || values.include?('all') || DocumentFilter::Options.new.invalid_filter_key?(key)
      }.merge(format: :atom)
    end
  end
end
