# NB: PolicyArea is being renamed to "Policy Area" across GOV.UK.
Feature: Assigning editions to policy_areas, via policies

  Background:
    Given I am a GDS editor

  @javascript
  Scenario: Editions can be assigned directly to policy_areas
    Given a publicationesque that can be assigned to policies and policy_areas
    When I assign the publicationesque to a policy_area
    Then the edition will be assigned to the policy_area
