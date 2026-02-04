Feature: File Upload Functionality - Positive Scenarios

  Scenario: Successful another image file upload
    Given User is on the file upload page
    When User selects a valid image file "another_image.jpeg"
    And User clicks the "Upload" button
    Then The success message should display "File uploaded successfully!"
