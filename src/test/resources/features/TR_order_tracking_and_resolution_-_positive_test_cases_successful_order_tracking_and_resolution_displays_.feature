Feature: Order Tracking and Resolution - Positive Test Cases

  Scenario: Successful order tracking and resolution displays confirmation
    Given User is on the order tracking page "https://owncompany.com/track"
    When User enters order number "RESOLVED123"
    And User clicks the "Track Order" button
    Then The result message should display "Not a problem at all! I'm glad that I was able to assist regarding the resolution to this issue today. Thank you so much for contacting OwnCompany. Have a great rest of your day!"
