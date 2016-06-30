class Admin::TopicsController < Admin::ClassificationsController

  private

  def model_class
    PolicyArea
  end
end
