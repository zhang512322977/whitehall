Feature: Filtering Featured Documents On A PolicyArea

  Background:
    Given there is a policy_area with published documents
    When I view featured documents for that policy_area

  Scenario: User filters by title
    When I filter by title
    Then I see documents with that title

  Scenario: User filters by author
    When I filter by author
    Then I see documents by that author

  Scenario: User filters by organisation
    When I filter by organisation
    Then I see documents with that organisation

  Scenario: User filters by document type
    When I filter by document type
    Then I see documents with that document type
