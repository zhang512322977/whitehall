Feature: Viewing upcoming statistics announcements

  Scenario: Citizen filters the list of statistics announcements and uses the pagination
    Given there are some statistics announcements
    And there is a cancelled statistics announcement, originally due to be published a few days ago
    When I visit the statistics announcements page
    Then I can see the first page of all the statistics announcements, including the cancelled announcement
    When I navigate to the next page of statistics announcements
    Then I can see the second page of all the statistics announcements
    When I filter the statistics announcements by keyword, from_date and to_date
    And I should only see statistics announcements for those filters

  Scenario: Citizen filters the list of statistics announcements by department and policy_area
    Given there are some statistics announcements for various departments and policy_areas
    When I visit the statistics announcements page
    And I filter the statistics announcements by department and policy_area
    Then I should only see statistics announcements for the selected departments and policy_areas
