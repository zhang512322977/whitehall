slugs = [
  "argentina",
  "belgium",
  "brazil",
  "canada",
  "china",
  "france",
  "germany",
  "hong-kong",
  "hungary",
  "india",
  "indonesia",
  "japan",
  "kuwait",
  "malaysia",
  "mexico",
  "nigeria",
  "poland",
  "qatar",
  "russia",
  "saudi-arabia",
  "singapore",
  "south-africa",
  "south-korea",
  "taiwan",
  "thailand",
  "turkey",
  "united-arab-emirates",
  "in-the-usa",
  "vietnam",
]

slugs.each do |slug|
  old_slug = "uk-trade-investment-#{slug}"
  new_slug = "department-for-international-trade-#{slug}"
  wworg = WorldwideOrganisation.find_by(slug: old_slug)
  DataHygiene::OrganisationReslugger.new(wworg, new_slug).run!
end


short_urls = [
  "/dit/argentina",
  "/dit/belgium",
  "/dit/brazil",
  "/dit/canada",
  "/dit/china",
  "/dit/france",
  "/dit/germany",
  "/dit/hongkong",
  "/dit/hungary",
  "/dit/india",
  "/dit/indonesia",
  "/dit/japan",
  "/dit/kuwait",
  "/dit/malaysia",
  "/dit/mexico",
  "/dit/nigeria",
  "/dit/poland",
  "/dit/qatar",
  "/dit/russia",
  "/dit/saudiarabia",
  "/dit/singapore",
  "/dit/southafrica",
  "/dit/southkorea",
  "/dit/taiwan",
  "/dit/thailand",
  "/dit/turkey",
  "/dit/uae",
  "/dit/usa",
  "/dit/vietnam",
]

slugs.zip(short_urls).each do |slug, short_url|
  redirect = {
    content_id: SecureRandom.uuid,
    base_path: short_url,
    format: "redirect",
    publishing_app: "whitehall",
    update_type: "major",
    redirects: [{ path: short_url, type: "exact", destination: "/government/world/organisations/department-for-international-trade-#{slug}" }]
  }
  Whitehall.publishing_api_v2_client.put_content(redirect[:content_id], redirect)
  Whitehall.publishing_api_v2_client.publish(redirect[:content_id], "major")
end
