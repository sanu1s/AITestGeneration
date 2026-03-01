Feature: Order Quest UI Page - Positive Scenarios

  Scenario: Verify Input Field, Search Button and Result Areas Presence
    Given I navigate to the OrderQuest application
    Then I should see an input field with ID "orderIdInput"
    And the input field with ID "orderIdInput" should have placeholder "Enter Order ID"
    And I should see a button with ID "searchBtn" and text "Search"
    And I should see an empty search results area with ID "orderDetails"
    And I should see an empty status display area with ID "displayStatus"
    And I should not see any error message area with ID "error" initially
