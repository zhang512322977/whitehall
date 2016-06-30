class StatisticsAnnouncementTopic < ActiveRecord::Base
  belongs_to :statistics_announcement, inverse_of: :statistics_announcement_topics
  belongs_to :policy_area, inverse_of: :statistics_announcement_topics, foreign_key: :topic_id

  validates :statistics_announcement, :policy_area, presence: true
end
