class AnnouncementsController < DocumentsController
  enable_request_formats index: [:json, :atom]

  def params
    new_params = super
    policy_areas = new_params.delete("topics")
    new_params["policy_areas"] = policy_areas unless policy_areas.nil?
    new_params
  end

  def index
    expire_on_next_scheduled_publication(scheduled_announcements)
    @filter = build_document_filter
    @filter.announcements_search

    respond_to do |format|
      format.html do
        @filter = DocumentFilterPresenter.new(@filter, view_context, AnnouncementPresenter)
      end
      format.json do
        render json: AnnouncementFilterJsonPresenter.new(@filter, view_context, AnnouncementPresenter)
      end
      format.atom do
        documents = Announcement.published_with_eager_loading(@filter.documents.map(&:id))
        @announcements = Whitehall::Decorators::CollectionDecorator.new(
          documents.sort_by(&:public_timestamp).reverse,
          AnnouncementPresenter,
          view_context,
        )
      end
    end
  end

private

  def scheduled_announcements
    Announcement.scheduled.order("scheduled_publication asc")
  end
end
