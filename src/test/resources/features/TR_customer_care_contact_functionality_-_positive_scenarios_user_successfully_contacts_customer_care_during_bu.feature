Feature: Customer Care Contact Functionality - Positive Scenarios

  Scenario: User successfully contacts customer care during business hours for issue "issue with the name on the water bottle"
    Given User is on the customer support page
    And It is within business hours
    When User enters issue description "issue with the name on the water bottle"
    And User attempts to contact customer care
    Then A success message should display "Customer care representative will address your issue shortly"
