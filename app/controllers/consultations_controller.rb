class ConsultationsController < DocumentsController
  def params
    new_params = super
    policy_areas = new_params.delete("topics")
    new_params["policy_areas"] = policy_areas unless policy_areas.nil?
    new_params
  end

  def index
    filter_params = params.except(:controller, :action, :format, :_)
    redirect_to publications_path(filter_params.merge(publication_filter_option: 'consultations'))
  end

  def show
    @related_policies = document_related_policies
    set_meta_description(@document.summary)
    expire_on_open_state_change(@document)
  end

  private

  def document_class
    Consultation
  end
end
