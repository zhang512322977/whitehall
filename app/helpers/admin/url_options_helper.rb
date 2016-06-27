module Admin::UrlOptionsHelper
  def public_url_options
    { host: Whitehall.public_host, protocol: Whitehall.public_protocol }
  end

  def cachebust_url_options
    { cachebust: Time.zone.now.getutc.to_i }
  end

  def public_and_cachebusted_url_options
    public_url_options.merge(cachebust_url_options)
  end

  def show_url_with_public_and_cachebusted_options(model)
    resource_name = model.class.to_s.underscore
    # FIXME: remove special case when model is renamed
    resource_name = 'policy_area' if model.is_a?(Topic)
    send("#{resource_name}_url", model, public_and_cachebusted_url_options)
  end

  def view_on_website_link_for(model, options = {})
    link_to "View on website", show_url_with_public_and_cachebusted_options(model), options
  end
end
