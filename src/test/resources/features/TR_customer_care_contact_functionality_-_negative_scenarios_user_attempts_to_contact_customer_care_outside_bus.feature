Feature: Customer Care Contact Functionality - Negative Scenarios

  Scenario: User attempts to contact customer care outside business hours with issue "issue with the name on the water bottle"
    Given User is on the customer support page
    When User enters issue description "issue with the name on the water bottle"
    And User attempts to contact customer care
    Then An error message should display "we've reached outside of our business hours"
    And An error message should display "no customer care representatives are available at the moment"
