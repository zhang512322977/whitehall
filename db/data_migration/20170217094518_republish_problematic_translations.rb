slugs = %w(
  uk-house-price-index-summary-october-2016
  uk-house-price-index-wales-august-2016
  uk-house-price-index-wales-october-2016
  uk-house-price-index-wales-september-2016
  guidance-on-applying-for-the-mot-manager-training-course
  exporting-to-luxembourg
  guidance-for-filling-in-this-formFound
  future-assessment-arrangements
  mot-nominated-tester-training-ntt-assessment-questions
  guidance-on-applying-for-mot-nominated-tester-training-ntt-for-new-and-returning-testers
  post-initial-teacher-training-subject-knowledge-enhancement-teaching-school-alliances
)

slugs.each do |slug|
  id = Document.find_by(slug: slug).id
  if id
    PublishingApiDocumentRepublishingWorker.perform_async(id)
  else
    puts "Document #{slug} not found"
  end
end
