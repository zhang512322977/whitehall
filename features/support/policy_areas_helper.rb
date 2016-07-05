module PolicyAreasHelper
  def create_policy_area(options = {})
    start_creating_policy_area(options)
    save_document
  end

  def start_creating_policy_area(options = {})
    visit admin_root_path
    click_link "Policy Areas"
    click_link "Create policy area"
    fill_in "Name", with: options[:name] || "policy_area-name"
    fill_in "Description", with: options[:description] || "policy_area-description"
    (options[:related_classifications] || []).each do |related_name|
      select related_name, from: "Related policy areas"
    end
  end
end

World(PolicyAreasHelper)
