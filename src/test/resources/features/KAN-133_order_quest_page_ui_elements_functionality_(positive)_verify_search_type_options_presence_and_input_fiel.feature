Feature: Order Quest Page UI Elements Functionality (Positive)

  Scenario: Verify search type options presence and input field interaction
    Given I navigate to "http://localhost:7070"
    Then the dropdown with ID "searchType" should contain option "Order ID"
    And the dropdown with ID "searchType" should contain option "Tracking Number"
    When I select "Tracking Number" from the dropdown with ID "searchType"
    Then the input field with ID "orderIdInput" should have placeholder "Enter Tracking Number"
    When I type "TRK12345" into the input field with ID "orderIdInput"
    Then the input field with ID "orderIdInput" should have value "TRK12345"
    And the button with ID "searchBtn" should be enabled
