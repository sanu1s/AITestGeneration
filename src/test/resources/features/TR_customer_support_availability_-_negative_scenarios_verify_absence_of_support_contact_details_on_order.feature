Feature: Customer Support Availability - Negative Scenarios

  Scenario: Verify absence of support contact details on Order Tracking page
    Given User is on the "Home" page
    When User navigates to the "Order Tracking" page
    Then User should not see the element with id "support-email"
    And User should not see the element with id "support-phone"
