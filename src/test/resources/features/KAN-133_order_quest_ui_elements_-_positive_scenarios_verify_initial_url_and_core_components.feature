Feature: Order Quest UI Elements - Positive Scenarios

  Scenario: Verify Initial URL and Core Components
    Given I navigate to the Order Quest page
    Then the current URL should be "http://localhost:7070/"
    And I should see the input field with ID "orderIdInput" is enabled
    And I should see the button with ID "searchBtn" is enabled
