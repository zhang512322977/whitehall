base_paths = %w(
  /government/publications/uk-house-price-index-summary-october-2016/1847977
  /government/publications/uk-house-price-index-wales-august-2016/1747267
  /government/publications/uk-house-price-index-wales-october-2016/1849478
  /government/publications/uk-house-price-index-wales-september-2016/1800142
  /government/publications/application-for-mot-managers-course-vt79/guidance-on-applying-for-the-mot-manager-training-course
  /government/publications/doing-business-in-luxembourg/exporting-to-luxembourg
  /government/publications/let-property-campaign-notification-form/guidance-for-filling-in-this-form
  /government/publications/national-curriculum-assessments-future-test-dates/future-assessment-arrangements
  /government/publications/nominated-tester-training-ntt-assessment-questions/mot-nominated-tester-training-ntt-assessment-questions
  /government/publications/nominated-tester-training/guidance-on-applying-for-mot-nominated-tester-training-ntt-for-new-and-returning-testers
  /government/publications/post-initial-teacher-training-subject-knowledge-enhancement-teaching-school-alliances/post-initial-teacher-training-subject-knowledge-enhancement-teaching-school-alliances
)

Edition.where(base_path: base_paths).joins(:document).distinct.pluck(:content_id).each do |id|
  PublishingApiDocumentRepublishingWorker.perform_async(id)
end
