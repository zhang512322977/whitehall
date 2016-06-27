module ClassificationRoutesHelper
  def classification_path(classification, options = {})
    # FIXME:
    # remove special case when model is renamed
    model_name = classification_model_name(classification)

    return policy_area_path(options.merge(id: classification)) if model_name == "topic"


    polymorphic_path(model_name, options.merge(id: classification))
  end

  def classification_url(classification, options = {})
    # FIXME:
    # remove special case when model is renamed
    model_name = classification_model_name(classification)

    return policy_area_url(options.merge(id: classification)) if model_name == "topic"

    polymorphic_url(model_name, options.merge(id: classification))
  end

private

  # NOTE: This method could (possibly) be dropped once Draper has been removed/replaced.
  def classification_model_name(classification)
    klass = classification.to_model.class
    klass.name.underscore
  end
end
