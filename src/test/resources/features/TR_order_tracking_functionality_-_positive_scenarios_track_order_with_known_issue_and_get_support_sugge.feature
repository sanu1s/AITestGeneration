Feature: Order Tracking Functionality - Positive Scenarios

  Scenario: Track Order with Known Issue and Get Support Suggestion
    Given User is on the order tracking page
    When User enters order number "181962874381"
    And User clicks the "Track Order" button
    Then The status message should display "This looks something a care representative is better suited to handle."
    And The status message should also contain "May I check if an agent is available to help you?"
