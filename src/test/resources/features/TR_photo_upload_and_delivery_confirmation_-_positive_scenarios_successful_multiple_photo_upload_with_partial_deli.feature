Feature: Photo Upload and Delivery Confirmation - Positive Scenarios

  Scenario: Successful multiple photo upload with partial delivery confirmation message verification
    Given User is on the photo upload page
    When User uploads multiple photo files "vacation_1.png,vacation_2.jpeg"
    Then the status message should contain "photos"
    And the status message should contain "inbox"
