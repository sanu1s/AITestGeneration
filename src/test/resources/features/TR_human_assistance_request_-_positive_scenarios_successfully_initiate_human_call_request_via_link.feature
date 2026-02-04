Feature: Human Assistance Request - Positive Scenarios

  Scenario: Successfully initiate human call request via link
    Given User is logged in and on the dashboard page
    When User clicks the "Get a human" link
    Then A success message "Your call request has been received. We will contact you shortly." should be displayed
    Then The current URL should remain "https://example.com/dashboard"
