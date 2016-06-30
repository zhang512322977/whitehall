class ClassificationsController < PublicFacingController
  enable_request_formats index: [:atom], show: [:atom]

  include CacheControlHelper

  def index
    @topics = PolicyArea.alphabetical
    @topical_events = TopicalEvent.active.alphabetical
  end
end
