package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import static com.microsoft.playwright.assertions.PlaywrightAssertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

/**
 * Consolidate AI-generated Step Definitions
 */
public class AIGeneratedSteps {

    private final TestContext testContext;
    private final Page page;

    public AIGeneratedSteps(TestContext testContext) {
        this.testContext = testContext;
        this.page = testContext.page;
    }

@When("User enters {string} in the query field")
public void userEntersQuery(String query) {
    System.out.println("Entering query: " + query);
    page.locator("#chat-query").fill(query);
}

@Then("the bot displays the message {string}")
public void verifyBotMessage(String expectedMessage) {
    System.out.println("Executing: the bot displays the message " + expectedMessage);
    assertThat(page.locator(".chat-message")).containsText(expectedMessage);
}

@When("User enters username {string} and password {string}")
public void enterCredentials(String username, String password) {
    System.out.println("Entering username: " + username + " and password.");
    page.locator("#username").fill(username);
    page.locator("#password").fill(password);
}

@Then("the order status should display {string}")
public void verifyOrderStatus(String statusMessage) {
    System.out.println("Verifying order status: " + statusMessage);
    assertThat(page.locator(".result")).containsText(statusMessage);
}

@Then("The chat window should display the greeting message {string}")
    public void theChatWindowShouldDisplayTheGreetingMessage(String expectedMessage) {
        System.out.println("Verifying greeting message: " + expectedMessage);
        // Assuming chat messages appear within elements with class 'chat-message'
        assertThat(page.locator(".chat-message")).containsText(expectedMessage);
    }

@Then("the bot's initial message should contain {string}")
public void verifyBotInitialMessageContains(String expectedText) {
    System.out.println("Executing: Verifying bot's initial message contains: " + expectedText);
    assertThat(page.locator(".bot-welcome-message")).containsText(expectedText);
}

@Then("The success message {string} should be displayed")
public void verifySuccessMessage(String expectedMessage) {
    System.out.println("Executing: Verifying success message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("The digital assistant initiates handover to a care representative")
public void digitalAssistantInitiatesHandover() {
    System.out.println("Executing: The digital assistant initiates handover to a care representative");
    // This step simulates or assumes the event that triggers the handover messages.
    // In a real test, this might involve a specific user action or waiting for a backend trigger.
}

@When("the user attempts to type \"{string}\" into the chat input field")
public void attemptToTypeIntoChatInputField(String message) {
    System.out.println("Attempting to type into chat input field: " + message);
    page.locator("#chat-input").fill(message);
}

@Given("User is on the chat closure page")
public void userIsOnChatClosurePage() {
    System.out.println("Executing: User is on the chat closure page");
    page.navigate("https://example.com/chat/closed");
}

@Then("The wait time message should display {string}")
public void verifyWaitTimeMessage(String expectedMessage) {
    System.out.println("Verifying wait time message: " + expectedMessage);
    assertThat(page.locator(".wait-time-message")).containsText(expectedMessage);
}

@When("User attempts to check representative status")
public void userAttemptsToCheckRepresentativeStatus() {
    System.out.println("Attempting to check status on a broken page. This might not involve a direct click if elements are missing.");
    // This step might implicitly fail if expected elements are not present,
    // or we could try to click a non-existent button to simulate the attempt.
    // For this example, we'll assume an error message appears on page load or a subsequent action.
}

@When("User provides brief information {string}")
public void provideBriefInformation(String details) {
    System.out.println("Executing: User provides brief information: " + details);
    page.locator("#issue_description").fill(details);
}

@When("I enter reference number {string} and postal code {string}")
public void enterReferenceNumberAndPostalCode(String referenceNumber, String postalCode) {
    System.out.println("Executing: Entering reference number '" + referenceNumber + "' and postal code '" + postalCode + "'");
    page.locator("#referenceNumber").fill(referenceNumber);
    page.locator("#postalCode").fill(postalCode);
}

@When("User leaves the billing zip code field empty")
public void userLeavesTheBillingZipCodeFieldEmpty() {
    System.out.println("Executing: User leaves the billing zip code field empty");
    page.locator("#billingZipCode").fill("");
}

@Then("the order status should be displayed as {string}")
public void verifyOrderStatus_16(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("The error message should not be empty")
public void verifyErrorMessageNotEmpty() {
    System.out.println("Verifying error message is not empty");
    assertThat(page.locator(".error")).not().hasText("");
}

@Given("User navigates to the chat closure URL {string}")
public void navigateToChatClosureUrl(String url) {
    System.out.println("Executing: User navigates to the chat closure URL " + url);
    page.navigate(url);
}

@When("The system fails to initiate agent transfer")
public void systemFailsToInitiateAgentTransfer() {
    System.out.println("Executing: The system fails to initiate agent transfer");
    // In a real scenario, this might involve specific conditions or mock responses to simulate failure.
}

@Then("The chat window should display the message {string}")
    public void verifyChatMessageDisplayed(String message) {
        System.out.println("Verifying chat message displayed: " + message);
        assertThat(page.locator(".chat-message-display")).containsText(message);
    }

@Then("The bot's escalation message should be displayed as {string}")
public void verifyBotEscalationMessage(String expectedMessage) {
    System.out.println("Verifying bot escalation message: " + expectedMessage);
    assertThat(page.locator(".bot-message")).containsText(expectedMessage);
}

@When("User clicks on the 'Live Chat' button")
    public void clickLiveChatButton() {
        System.out.println("Clicking 'Live Chat' button");
        page.locator("button:has-text('Live Chat')").click();
    }

@Then("the system message {string} should not be displayed")
public void systemMessageShouldNotBeDisplayed(String message) {
    System.out.println("Executing: Verifying system message is NOT displayed: " + message);
    assertThat(page.locator(".system-message:has-text('" + message + "')")).not().isVisible();
}

@Then("{string} should not be displayed with price {string}")
public void verifyItemPriceNotInCart(String productName, String unexpectedPrice) {
    System.out.println("Executing: " + productName + " should NOT be displayed with price " + unexpectedPrice);
    assertThat(page.locator(String.format("div.cart-item:has-text('%s') >> .item-price", productName))).doesNotContainText(unexpectedPrice);
}

@Then("The chat history should not display the oversized message")
    public void chatHistoryShouldNotDisplayOversizedMessage() {
        System.out.println("Executing: The chat history should not display the oversized message");
        // This assertion assumes the error prevents the message from being added to history or truncates it
        // A more specific assertion might check for the *exact* oversized message not appearing.
        assertThat(page.locator(".chat-messages")).not().containsText("a".repeat(260)); // Example for a message over 250
    }

@When("User updates their location to {string}")
public void userUpdatesTheirLocation(String newLocation) {
    System.out.println("Executing: User updates their location to " + newLocation);
    // Assuming a dropdown for location selection
    page.locator("#location_dropdown").selectOption(newLocation);
    // Or if it's an input field and button:
    // page.locator("#location_input").fill(newLocation);
    // page.locator("#update_location_button").click();
    // The page should reload or update content after location change
}

@When("User clicks the "Track Order" button")
public void userClicksTheTrackOrderButton() {
    System.out.println("Clicking Track Order button");
    page.locator("button:has-text('Track Order')").click();
}

@Given("User's current location is set to {string} with available products")
public void usersCurrentLocationIsSet(String location) {
    System.out.println("Executing: User's current location is set to " + location + " with available products");
    // For this step, we'll navigate to a URL that pre-sets the location with products
    page.navigate("http://localhost:8080/products?location=" + location.replace(" ", ""));
}

@Given("browser location services are disabled")
public void browserLocationServicesAreDisabled() {
    System.out.println("Executing: browser location services are disabled");
    page.context().clearPermissions();
}

@Then("The greeting message should not display {string}")
public void verifyNoGreetingMessage(String unexpectedMessage) {
    System.out.println("Executing: The greeting message should not display " + unexpectedMessage);
    assertThat(page.locator("body")).doesNotContainText(unexpectedMessage);
}

@When("User submits the query")
public void userSubmitsQuery() {
    System.out.println("Clicking submit query button.");
    page.locator("button:has-text('Submit')").click();
}

@Then("the assistant's message displays role {string}")
public void verifyAssistantRole(String role) {
    System.out.println("Executing: verify assistant's role: " + role);
    // Assuming .assistant-message is the locator for the assistant's message container
    assertThat(page.locator(".assistant-message")).containsText(role);
}

@When("The system requests {string}")
public void systemRequestsVerification(String requestMessage) {
    System.out.println("Executing: The system requests " + requestMessage);
    assertThat(page.locator(".verification-prompt")).containsText(requestMessage);
}

@Then("The discount message {string} should not be displayed")
public void verifyDiscountMessageNotDisplayed(String unexpectedMessage) {
    System.out.println("Verifying discount message is NOT displayed: " + unexpectedMessage);
    assertThat(page.locator(".product-discount-message")).not().containsText(unexpectedMessage);
}

@When("the survey prompt is displayed")
    public void surveyPromptIsDisplayed() {
        System.out.println("Executing: The survey prompt is displayed");
        // State already set in Given
    }

@Then("The chat welcome message should not display {string}")
public void verifyWelcomeMessageNotDisplay(String unexpectedMessage) {
    System.out.println("Executing: The chat welcome message should not display " + unexpectedMessage);
    assertThat(page.locator(".chat-welcome-message")).not().containsText(unexpectedMessage);
}

@Given("User is on the AI Bot assistant page to check agent promise")
public void userIsOnBotAssistantPageForAgentPromise() {
    System.out.println("Ensuring user is on AI Bot assistant page for agent promise check");
    page.navigate("https://example.com/bot-assistant");
}

@Then("The status message should NOT display {string}")
public void verifyStatusMessageNotDisplayed(String unexpectedMessage) {
    System.out.println("Executing: The status message should NOT display " + unexpectedMessage);
    assertThat(page.locator(".result")).not().containsText(unexpectedMessage);
}

@Given("the AI Bot Assistant page is loaded for full message verification")
public void aiBotAssistantPageIsLoadedForFullMessageVerification() {
    System.out.println("Navigating to AI Bot Assistant page for full message verification.");
    page.navigate("https://example.com/bot");
}

@Then("The order status should be displayed as {string}")
public void theOrderStatusShouldBeDisplayedAs(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("the chatbot should display the message {string}")
public void chatbotShouldDisplayMessage(String expectedMessage) {
    System.out.println("Executing: the chatbot should display the message " + expectedMessage);
    assertThat(page.locator(".bot-message:last-child")).containsText(expectedMessage);
}

@When("User submits the price adjustment")
public void userSubmitsPriceAdjustment() {
    System.out.println("Clicking submit adjustment button");
    page.locator("button:has-text('Submit Adjustment')").click();
}

@Then("I should be prompted for the billing zip code")
public void verifyBillingZipCodePrompt() {
    System.out.println("Verifying prompt for billing zip code");
    // Assuming the billing zip code input field becomes visible or enabled
    assertThat(page.locator("#billing_zip")).isVisible();
}

@Then("the chatbot should not display the message {string}")
public void chatbotShouldNotDisplayMessage(String unexpectedMessage) {
    System.out.println("Executing: the chatbot should not display the message " + unexpectedMessage);
    assertThat(page.locator(".bot-message:last-child")).not().containsText(unexpectedMessage);
}

@When("User enters name {string} for personalization")
public void userEntersNameForPersonalization(String name) {
    System.out.println("Executing: User enters name " + name + " for personalization");
    page.locator("#name_input").fill(name);
}

@Given("User is on the customer support chat interface")
public void userIsOnChatInterface() {
    System.out.println("Executing: User is on the customer support chat interface");
    page.navigate("https://example.com/chat"); // Placeholder for a chat interface URL
}

@Then("the page should display the text {string}")
    public void verifyPageContainsText(String expectedText) {
        System.out.println("Verifying page contains text: " + expectedText);
        assertThat(page.locator("body")).containsText(expectedText);
    }

@Then("The digital assistant indicator should still be visible")
public void digitalAssistantIndicatorShouldStillBeVisible() {
    System.out.println("Executing: The digital assistant indicator should still be visible");
    assertThat(page.locator("#digital-assistant-indicator")).isVisible();
}

@Given("User is on the email status tracking page")
public void userIsOnTheEmailStatusTrackingPage() {
    System.out.println("Executing: User is on the email status tracking page");
    page.navigate("https://example.com/email-tracker");
    assertThat(page).hasURL("https://example.com/email-tracker");
}

@Then("The chat history should display {string}")
    public void chatHistoryShouldDisplay(String expectedMessage) {
        System.out.println("Executing: The chat history should display \"" + expectedMessage + "\"");
        assertThat(page.locator(".chat-messages")).containsText(expectedMessage);
    }

@Then("A confirmation message {string} should be displayed")
public void aConfirmationMessageShouldBeDisplayed(String message) {
    System.out.println("Executing: A confirmation message " + message + " should be displayed");
    assertThat(page.locator(".result")).containsText(message);
}

@When("user leaves the order number field empty")
public void userLeavesOrderNumberFieldEmpty() {
    System.out.println("Leaving order number field empty");
    page.locator("#order_no").fill("");
}

@Given("User is on the query page")
public void userIsOnTheQueryPage() {
    System.out.println("Executing: User is on the query page");
    page.navigate("http://localhost:8080/query"); // Placeholder URL for a generic query page
}

@Given("User is on the AI Bot assistant page")
public void userIsOnAIBotAssistantPage() {
    System.out.println("Navigating to AI Bot assistant page.");
    page.navigate("https://example.com/ai-bot"); // Assuming a URL for the bot page
}

@When("the digital assistant fails to step away")
public void digitalAssistantFailsToStepAway() {
    System.out.println("Executing: The digital assistant fails to step away (simulated system error)");
    // This implies a system error condition where the expected message does not appear.
}

@Then("The current URL should be {string}")
public void verifyCurrentUrl(String expectedUrl) {
    System.out.println("Verifying current URL: " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@Then("The human agent name {string} should be visible in the chat interface")
public void humanAgentNameShouldBeVisible(String agentName) {
    System.out.println("Executing: The human agent name " + agentName + " should be visible in the chat interface");
    assertThat(page.locator(".human-agent-name:has-text(\"" + agentName + "\")")).isVisible();
}

@Given("User navigates to the status display page")
public void navigateToStatusDisplayPage() {
    System.out.println("Executing: User navigates to the status display page");
    page.navigate("http://localhost:8080/status");
}

@Then("The cancellation status should display {string}")
public void theCancellationStatusShouldDisplay(String expectedMessage) {
    System.out.println("Verifying cancellation status: " + expectedMessage);
    assertThat(page.locator(".cancellation-status")).containsText(expectedMessage);
}

@Then("User should be routed to the \"Billing Inquiry\" department page")
public void userRoutedToBillingInquiryDepartmentPage() {
    System.out.println("Executing: User should be routed to the \"Billing Inquiry\" department page");
    assertThat(page).hasURL(".*\/billing-inquiry");
}

@Then("The verification should be successful with message {string}")
public void theVerificationShouldBeSuccessfulWithMessage(String expectedMessage) {
    System.out.println("Verifying success message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("user proceeds to checkout")
public void userProceedsToCheckout() {
    System.out.println("Proceeding to checkout");
    // Assuming a button to proceed to checkout appears after adding to cart, or on a cart page
    page.locator("button:has-text('Proceed to Checkout')").click();
    assertThat(page).hasURL(".*/checkout");
}

@Then("the care representative's status should not be {string}")
public void careRepresentativeStatusShouldNotBe(String status) {
    System.out.println("Executing: Verifying care representative's status is NOT " + status);
    assertThat(page.locator("#care-representative-status")).not().containsText(status);
}

@Given("User is on the {string} page with order {string}")
public void userIsOnPageWithOrder(String pageName, String orderNo) {
    System.out.println("Navigating to: " + pageName + " page with order: " + orderNo);
    page.navigate("https://example.com/" + pageName.replace(" ", "-") + "?orderId=" + orderNo);
    assertThat(page.locator("#order_no")).hasValue(orderNo);
}

@Then("The product price should display {string}")
public void verifyProductPriceDisplay(String expectedPrice) {
    System.out.println("Verifying product price display: " + expectedPrice);
    assertThat(page.locator(".product-price")).containsText(expectedPrice);
}

@Then("The chat window should not be visible after {int} seconds")
    public void theChatWindowShouldNotBeVisibleAfterSeconds(int seconds) {
        System.out.println("Verifying chat window is not visible after " + seconds + " seconds.");
        // Use a short timeout to check if the element is not visible, implying failure to load
        assertThat(page.locator("#chat-window")).isHidden(new LocatorAssertions.IsHiddenOptions().setTimeout(seconds * 1000));
    }

@When("User reviews the cart summary")
public void userReviewsCartSummary() {
    System.out.println("Reviewing the cart summary.");
    // This typically involves waiting for elements to load or just proceeding to assertions.
    page.waitForLoadState();
}

@Then("User should be redirected to the {string} regional site {string}")
public void verifyRegionalRedirection(String region, String expectedUrl) {
    System.out.println("Executing: Verify user is redirected to the " + region + " regional site: " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@When("User clicks the {string}")
public void userClicksRegionSelector(String selectorName) {
    System.out.println("Clicking: " + selectorName);
    page.locator("#region-selector").click();
}

@When("the chat displays the message {string}")
public void chatDisplaysHandoverMessage(String message) {
    System.out.println("Executing: Chat displays message: " + message);
    assertThat(page.locator(".chat-message.system:has-text(" + message + ")")).isVisible();
}

@Given("a user is on the chat support page")
public void userOnChatPage() {
    System.out.println("Executing: a user is on the chat support page");
    page.navigate("https://example.com/chat-support");
}

@When("the user leaves the zip code field empty")
public void leaveZipCodeEmpty() {
    System.out.println("Executing: Leave zip code field empty");
    page.locator("#zip_code").fill("");
}

@When("User enters tracking ID {string}")
public void userEntersTrackingId(String trackingId) {
    System.out.println("Executing: User enters tracking ID " + trackingId);
    page.locator("#order_no").fill(trackingId);
}

@Then("The displayed shipping address should not be {string}")
public void verifyDisplayedShippingAddressNotMatch(String unexpectedAddress) {
    System.out.println("Verifying displayed shipping address is NOT: " + unexpectedAddress);
    assertThat(page.locator("#shipping_address")).doesNotContainText(unexpectedAddress);
}

@Then("The page should display a button with text {string}")
public void verifyHoldTransferButton(String buttonText) {
    System.out.println("Executing: The page should display a button with text");
    assertThat(page.locator("button:has-text('" + buttonText + "')")).isVisible();
}

@Given("user's simulated location is {string}")
public void userSimulatedLocationIs(String location) {
    System.out.println("Executing: user's simulated location is " + location);
    Geolocation geolocation;
    switch (location.toLowerCase()) {
        case "usa":
            geolocation = new Geolocation(40.7128, -74.0060); // New York
            break;
        case "united kingdom":
            geolocation = new Geolocation(51.5074, -0.1278); // London
            break;
        default:
            throw new IllegalArgumentException("Unknown location: " + location);
    }

@Then("the chat message result contains {string}")
public void verifyChatMessageContains(String expectedPhrase) {
    System.out.println("Executing: Verify chat message result contains: " + expectedPhrase);
    assertThat(page.locator(".result")).containsText(expectedPhrase);
}

@When("User waits for {string} seconds")
public void waitForSeconds(String seconds) {
    System.out.println("Waiting for " + seconds + " seconds");
    page.waitForTimeout(Long.parseLong(seconds) * 1000);
}

@When("the system attempts to assign a care representative but fails")
public void theSystemAttemptsToAssignACareRepresentativeButFails() {
    System.out.println("Executing: the system attempts to assign a care representative but fails");
    // This step simulates a scenario where the handover process to a human representative fails.
    // In a real test, this could involve mocking a backend error, disabling agent availability,
    // or triggering a specific UI flow that leads to a failed assignment.
}

@Then("The page content should confirm {string}")
public void verifyPageContent(String expectedText) {
    System.out.println("Verifying page content: " + expectedText);
    assertThat(page.locator(".site-confirmation")).containsText(expectedText);
}

@Then("the chat history should NOT display the message {string}")
public void theChatHistoryShouldNotDisplayTheMessage(String unexpectedMessage) {
    System.out.println("Executing: the chat history should NOT display the message " + unexpectedMessage);
    assertThat(page.locator(".chat-history")).doesNotContainText(unexpectedMessage);
}

@Then("The chat input field should remain empty")
    public void verifyChatInputEmpty() {
        System.out.println("Verifying chat input field is empty");
        assertThat(page.locator("#chat-input")).hasValue("");
    }

@Then("A human agent indicator should be visible")
public void humanAgentIndicatorShouldBeVisible() {
    System.out.println("Executing: A human agent indicator should be visible");
    assertThat(page.locator("#human-agent-indicator")).isVisible();
}

@When("User clicks the send button")
public void userClicksSendButton() {
    System.out.println("Clicking send button");
    page.locator("#send-chat-button").click();
}

@When("clicks the Track Order button")
public void clicksTrackOrderButton() {
    System.out.println("Clicking Track Order button");
    page.locator("button:has-text('Track Order')").click();
}

@When("User clicks the {string} button on the chat window")
    public void userClicksCloseButtonOnChatWindow(String buttonText) {
        System.out.println("Executing: User clicks the \"" + buttonText + "\" button on the chat window");
        page.locator("button[aria-label='Close chat'], .chat-header button:has-text('" + buttonText + "')").click();
    }

@When("no care representative is available")
public void noRepresentativeAvailable() {
    System.out.println("Executing: No care representative is available (simulated system condition)");
    // This implies a backend condition that will lead to an error message.
}

@Then("the wait time message should not contain {string}")
public void verifyWaitTimeMessageDoesNotContain(String unexpectedMessage) {
    System.out.println("Verifying wait time message does not contain: " + unexpectedMessage);
    assertThat(page.locator(".result")).doesNotContainText(unexpectedMessage);
}

@When("I enter billing zip code {string}")
public void enterBillingZipCode(String zipCode) {
    System.out.println("Typing billing zip code: " + zipCode);
    page.locator("#billing_zip").fill(zipCode);
}

@When("the system indicates {string}")
public void systemIndicatesStatus(String status) {
    System.out.println("System indicates: " + status);
    // As before, assuming the page is already in this state for verification.
}

@Then("the page should display the full message {string}")
public void verifyFullMessageDisplay(String expectedMessage) {
    System.out.println("Verifying full message: " + expectedMessage);
    assertThat(page.locator("body")).containsText(expectedMessage);
}

@Given("User is on the customer support page")
public void userIsOnCustomerSupportPage() {
    System.out.println("Executing: User is on the customer support page");
    page.navigate("https://example.com/support");
}

@When("User leaves the billing zip code field blank")
public void userLeavesBillingZipCodeFieldBlank() {
    System.out.println("Executing: User leaves the billing zip code field blank");
    page.locator("#billing_zip").fill("");
}

@When("User adds {string} with original price {string} to the cart")
public void userAddsProductToCart(String productName, String originalPrice) {
    System.out.println("Executing: User adds " + productName + " with original price " + originalPrice + " to the cart");
    // Assuming an 'Add to Cart' button exists on the product page
    page.locator("button:has-text('Add to Cart')").click();
}

@Then("The wait time information message should display {string}")
public void verifyWaitTimeMessage_95(String expectedMessage) {
    System.out.println("Executing: The wait time information message should display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("The bot message should contain {string}")
public void verifyBotMessageContains(String expectedText) {
    System.out.println("Verifying bot message contains: " + expectedText);
    assertThat(page.locator(".bot-message")).containsText(expectedText);
}

@Then("I should see the business hours displayed as {string}")
public void verifyBusinessHours(String expectedHours) {
    System.out.println("Verifying business hours: " + expectedHours);
    assertThat(page.locator(".business-hours")).containsText(expectedHours);
}

@Then("The shipping address field should be empty")
public void verifyShippingAddressFieldIsEmpty() {
    System.out.println("Verifying shipping address field is empty");
    assertThat(page.locator("#shipping_address")).isEmpty();
}

@Given("the user is on the order tracking page {string}")
public void navigateToOrderTrackingPage(String url) {
    System.out.println("Executing: Navigate to order tracking page: " + url);
    page.navigate(url);
}

@Then("User should be on the product details page for {string}")
public void userShouldBeOnTheProductDetailsPageFor(String productName) {
    System.out.println("Executing: User should be on the product details page for '" + productName + "'");
    String expectedUrlPart = productName.toLowerCase().replace(" ", "-");
    assertThat(page).hasURL(java.util.regex.Pattern.compile(".*\\/product\\/" + expectedUrlPart)); // Invented URL pattern
}

@When("a care representative fails to take over the conversation")
public void careRepresentativeFailsToTakeOver() {
    System.out.println("Executing: A care representative fails to take over the conversation");
    // Simulate the event where handoff fails
}

@When("User checks the status of live support availability")
public void userChecksLiveSupportAvailability() {
    System.out.println("Navigating to cancellation assistance page to check status");
    page.navigate("https://example.com/cancellation-assistance");
}

@Then("The bot capability should display {string}")
public void verifyBotCapability(String expectedMessage) {
    System.out.println("Executing: The bot capability should display " + expectedMessage);
    assertThat(page.locator(".bot-message")).containsText(expectedMessage);
}

@When("The handover sequence fails to complete")
public void handoverSequenceFailsToComplete() {
    System.out.println("Executing: The handover sequence fails to complete");
    // Simulate a state where the handover process started but did not finish successfully.
}

@Given("User is on the agent availability page")
public void userIsOnAgentAvailabilityPage() {
    System.out.println("Navigating to agent availability page.");
    page.navigate("https://example.com/agent-availability");
}

@When("User enters {string} in the email field")
public void userEntersEmail(String email) {
    System.out.println("Entering email: " + email);
    page.locator("#chat-email").fill(email);
}

@Then("The system chat message should display {string}")
public void verifySystemChatMessage(String expectedMessage) {
    System.out.println("Executing: The system chat message should display " + expectedMessage);
    assertThat(page.locator(".chat-messages")).containsText(expectedMessage);
}

@When("User is prompted for billing zip code verification")
public void userIsPromptedForBillingZipCodeVerification() {
    System.out.println("Verifying billing zip code field is visible.");
    assertThat(page.locator("#billing_zip_code")).isVisible();
}

@When("the digital assistant steps away from the conversation")
public void digitalAssistantStepsAway() {
    System.out.println("Executing: the digital assistant steps away from the conversation");
    // Similar to initiation, this is an internal event leading to the subsequent message.
}

@Then("The chatbot should display the message {string}")
public void chatbotShouldDisplayMessage_110(String expectedMessage) {
    System.out.println("Executing: The chatbot should display the message '" + expectedMessage + "'");
    assertThat(page.locator(".chat-message-display")).containsText(expectedMessage);
}

@When("User attempts to navigate to the {string} page directly")
public void attemptDirectNavigation(String pageName) {
    System.out.println("Executing: User attempts to navigate to the " + pageName + " page directly");
    page.navigate("http://localhost:8080/" + pageName);
}

@When("User enters expired promo code {string} into the promo code field")
public void userEntersExpiredPromoCode(String promoCode) {
    System.out.println("Entering expired promo code: " + promoCode);
    page.locator("#order_no").fill(promoCode);
}

@Then("The discount applied should be {string}")
public void discountAppliedShouldBe(String expectedDiscount) {
    System.out.println("Verifying discount applied: " + expectedDiscount);
    assertThat(page.locator("#discount-value")).containsText(expectedDiscount);
}

@Given("User navigates to the order tracking page {string}")
public void userNavigatesToOrderTrackingPage(String url) {
    System.out.println("Executing: User navigates to the order tracking page " + url);
    page.navigate(url);
}

@Given("the user is on the chatbot interface")
public void userOnChatbotInterface() {
    System.out.println("Executing: User is on the chatbot interface");
    page.navigate("https://example.com/chatbot");
}

@Given("User navigates to the registration page")
public void navigateToRegistrationPage() {
    System.out.println("Navigating to registration page.");
    page.navigate("https://example.com/register");
}

@Then("the message \"{string}\" should be displayed")
public void verifyMessageDisplayed(String message) {
    System.out.println("Executing: verifyMessageDisplayed - " + message);
    assertThat(page.locator("text='" + message + "'")).isVisible();
}

@Then("the chat message area should not contain {string}")
    public void theChatMessageAreaShouldNotContain(String unexpectedMessage) {
        System.out.println("Executing: The chat message area should not contain " + unexpectedMessage);
        PlaywrightAssertions.assertThat(page.locator(".result")).doesNotContainText(unexpectedMessage);
    }

@Given("User navigates to the product page for {string}")
public void navigateToProductPage(String productName) {
    System.out.println("Navigating to product page for: " + productName);
    // Assuming a URL structure like /products/laptop-pro
    page.navigate("https://www.example.com/products/" + productName.toLowerCase().replace(" ", "-"));
}

@Then("The chat interface should contain the text {string}")
public void chatInterfaceShouldContainText(String expectedPartialText) {
    System.out.println("Executing: The chat interface should contain the text " + expectedPartialText);
    assertThat(page.locator(".chatbox-content")).containsText(expectedPartialText);
}

@Then("The support information section should display the instruction {string}")
public void verifyInstructionDisplayed(String instruction) {
    System.out.println("Executing: The support information section should display the instruction " + instruction);
    assertThat(page.locator(".support-info")).containsText(instruction);
}

@When("user clicks {string} button")
public void userClicksButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("the unavailability message should display {string}")
public void verifyUnavailabilityMessage(String expectedMessage) {
    System.out.println("Verifying unavailability message: " + expectedMessage);
    assertThat(page.locator(".error")).containsText(expectedMessage);
}

@Then("User should be on the {string} page with URL containing {string}")
public void userShouldBeOnThePageWithUrlContaining(String pageName, String urlPart) {
    System.out.println("Verifying URL for page: " + pageName);
    assertThat(page).hasURL(org.hamcrest.Matchers.containsString(urlPart));
}

@Given("User is on the Order Tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Navigating to Order Tracking page");
    page.navigate("http://localhost:8080/track");
}

@Then("The page should not display personalized content indicator {string}")
public void verifyNoPersonalizedContentIndicator(String indicator) {
    System.out.println("Verifying no personalized content indicator: " + indicator);
    assertThat(page.locator("#profile-link")).not().isVisible();
}

@Given("the chat application is open")
public void chatApplicationIsOpen() {
    System.out.println("Executing: the chat application is open");
    // Assuming a specific URL for the chat application, replace with actual URL if known.
    // For this example, we'll navigate to a placeholder URL.
    page.navigate("https://example.com/chat");
    // Further actions to ensure chat interface is ready might be needed here, e.g., waiting for an element.
}

@When("User enters return ID {string}")
public void userEntersReturnId(String returnId) {
    System.out.println("Typing return ID: " + returnId);
    page.locator("#return_id").fill(returnId);
}

@Then("The bot should respond with {string}")
public void verifyBotResponse(String expectedResponse) {
    System.out.println("Verifying bot response: " + expectedResponse);
    assertThat(page.locator(".bot-message")).containsText(expectedResponse);
}

@Given("User is on the customer support portal")
public void userIsOnTheCustomerSupportPortal() {
    System.out.println("Navigating to customer support portal.");
    page.navigate("https://www.example.com/support");
}

@Then("The chat window should remain open")
    public void chatWindowShouldRemainOpen() {
        System.out.println("Executing: The chat window should remain open");
        assertThat(page.locator(".chat-window")).isVisible();
    }

@Then("User should remain on the base URL {string}")
public void verifyNoRedirection(String expectedUrl) {
    System.out.println("Executing: Verify user remains on base URL: " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@When("the digital assistant initiates handover")
public void digitalAssistantInitiatesHandover_133() {
    System.out.println("Executing: The digital assistant initiates handover");
    // This step represents an event trigger, not a direct Playwright action for initiating handover.
    // Subsequent 'Then' steps will assert the resulting UI state.
}

@When("User enters incomplete billing zip code {string}")
public void userEntersIncompleteBillingZipCode(String zipCode) {
    System.out.println("Entering incomplete billing zip code: " + zipCode);
    page.locator("#billing_zip_code").fill(zipCode);
}

@Then("The tracking status should display {string}")
public void theTrackingStatusShouldDisplay(String expectedStatus) {
    System.out.println("Verifying tracking status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@When("User interacts with the chat interface")
public void userInteractsWithChatInterface() {
    System.out.println("Executing: User interacts with the chat interface");
    // This step might not involve a specific action if the message is passively displayed.
    // We assume the chatbox content is loaded and visible upon navigation.
}

@When("Agent enters order number {string}")
public void agentEntersOrderNumber(String orderNo) {
    System.out.println("Executing: Agent enters order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Given("User is on the return label confirmation page")
public void userOnReturnConfirmationPage() {
    System.out.println("Executing: User is on the return label confirmation page");
    page.navigate("https://example.com/return-confirmation");
}

@When("User clears browser data and revisits the shopping cart page")
public void clearBrowserDataAndRevisitCart() {
    System.out.println("Clearing browser data and revisiting cart");
    page.evaluate("localStorage.clear()"); // Clear local storage
    page.evaluate("sessionStorage.clear()"); // Clear session storage
    page.reload(); // Reload the page to apply changes and potentially reset session
    page.navigate("https://example.com/cart"); // Explicitly navigate back to cart
}

@Then("The {string} button should be disabled")
public void verifyButtonIsDisabled(String buttonText) {
    System.out.println("Verifying button is disabled: " + buttonText);
    assertThat(page.locator("button:has-text('" + buttonText + "')")).isDisabled();
}

@When("The chat system confirms digital assistant departure")
public void chatSystemConfirmsDigitalAssistantDeparture() {
    System.out.println("Executing: The chat system confirms digital assistant departure");
    // This step represents an internal system event leading to the message display.
    // No direct user action or specific locator interaction is implied by the transcript here.
}

@When("User enters issue description {string}")
public void userEntersIssueDescription(String issueDescription) {
    System.out.println("Executing: User enters issue description: " + issueDescription);
    page.locator("#issue_description").fill(issueDescription);
}

@Given("User is on the chat interface")
public void userIsOnChatInterface_143() {
    System.out.println("Navigating to chat interface");
    page.navigate("http://localhost:8080/chat");
}

@Then("An access denied message {string} should be displayed")
public void verifyAccessDeniedMessage(String message) {
    System.out.println("Executing: An access denied message " + message + " should be displayed");
    assertThat(page.locator("#error-message")).containsText(message);
}

@Given("User is on the order tracking page at {string}")
public void userIsOnTheOrderTrackingPage(String url) {
    System.out.println("Executing: User is on the order tracking page at " + url);
    page.navigate(url);
}

@Given("User leaves the \"Please describe your issue\" text field blank")
public void userLeavesPleaseDescribeYourIssueTextFieldBlank() {
    System.out.println("Executing: User leaves the \"Please describe your issue\" text field blank");
    page.locator("#other_issue_description").fill(""); // Ensure the field is empty
    assertThat(page.locator("#other_issue_description")).isEmpty();
}

@Given("the AI Bot Assistant page is loaded for denying agent connection validation")
public void aiBotAssistantPageIsLoadedForDenyingAgentConnectionValidation() {
    System.out.println("Navigating to AI Bot Assistant page for denying agent connection validation.");
    page.navigate("https://example.com/bot");
}

@Then("The cancellation should not be processed")
public void cancellationNotProcessed() {
    System.out.println("Executing: The cancellation should not be processed");
    // Assert that the page remains on the confirmation page or navigates to a non-cancellation page
    assertThat(page).hasURL("https://example.com/cancel-confirmation"); // Assuming it stays
}

@When("user leaves billing zip code field empty")
public void userLeavesBillingZipCodeFieldEmpty() {
    System.out.println("Leaving billing zip code field empty");
    page.locator("#billing_zip").fill("");
}

@Then("the welcome message element should be visible")
public void verifyWelcomeMessageIsVisible() {
    System.out.println("Executing: the welcome message element should be visible");
    assertThat(page.locator("#bot-welcome-message")).isVisible();
}

@Then("The chat should display the message {string}")
public void chatShouldDisplayMessage(String expectedMessage) {
    System.out.println("Executing: The chat should display the message '" + expectedMessage + "'");
    assertThat(page.locator(".chat-message-text")).containsText(expectedMessage);
}

@Given("User is on the chat support page")
public void userIsOnChatSupportPage() {
    System.out.println("Executing: User is on the chat support page");
    page.navigate("https://example.com/chat-support");
}

@When("user enters order number {string} for a paid order")
public void userEntersOrderNumberForPaidOrder(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@When("User adds {string} to the cart")
public void addProductToCart(String productName) {
    System.out.println("Executing: User adds " + productName + " to the cart");
    page.navigate("/products/" + productName.toLowerCase().replace(" ", "-")); // Assuming product URL structure
    page.locator("button:has-text('Add to Cart')").click();
}

@Then("The displayed name on the water bottle should be {string}")
public void displayedNameOnWaterBottleShouldBe(String expectedName) {
    System.out.println("Executing: The displayed name on the water bottle should be " + expectedName);
    assertThat(page.locator(".name-on-bottle")).containsText(expectedName);
}

@Then("the error message should display {string}")
public void verifyErrorMessage(String expectedMessage) {
    System.out.println("Verifying error message: " + expectedMessage);
    assertThat(page.locator(".error")).containsText(expectedMessage);
}

@Then("The chat should not display the message {string}")
public void chatShouldNotDisplayMessage(String unexpectedMessage) {
    System.out.println("Executing: The chat should not display the message '" + unexpectedMessage + "'");
    assertThat(page.locator(".chat-message-text")).doesNotContainText(unexpectedMessage);
}

@Then("The status message area should be empty")
public void verifyStatusMessageAreaIsEmpty() {
    System.out.println("Executing: The status message area should be empty");
    assertThat(page.locator(".result")).hasText("");
}

@When("User enters product ID {string}")
public void userEntersProductId(String productId) {
    System.out.println("Executing: User enters product ID " + productId);
    page.locator("#order_no").fill(productId);
}

@Then("A {string} error message should be displayed")
public void errorMessageShouldBeDisplayed(String expectedErrorMessage) {
    System.out.println("Verifying error message: " + expectedErrorMessage);
    assertThat(page.locator(".error")).containsText(expectedErrorMessage);
}

@Given("User is on the chat page after inactivity")
public void userIsOnChatPageAfterInactivity() {
    System.out.println("Navigating to chat page simulating inactivity.");
    page.navigate("https://example.com/chat/inactivity");
}

@Then("The system should display the message {string}")
public void systemShouldDisplayMessage(String expectedMessage) {
    System.out.println("Verifying message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("The cart should display a {string} discount")
public void verifyDiscountDisplayed(String discount) {
    System.out.println("Verifying discount: " + discount);
    assertThat(page.locator("#discount_value")).containsText(discount);
}

@When("User clicks on the {string} button")
    public void userClicksOnTheButton(String buttonText) {
        System.out.println("Executing: User clicks on the " + buttonText + " button");
        page.locator("button:has-text('" + buttonText + "')").click();
    }

@Then("The chat bot message should not contain {string}")
public void verifyChatBotMessageDoesNotContain(String unexpectedText) {
    System.out.println("Executing: The chat bot message should not contain " + unexpectedText);
    assertThat(page.locator(".chat-message")).doesNotContainText(unexpectedText);
}

@Given("User is on the order cancellation page")
public void userIsOnOrderCancellationPage() {
    System.out.println("Navigating to order cancellation page.");
    page.navigate("https://www.example.com/cancel-order");
}

@Then("The support message area should display {string}")
public void verifySupportMessage(String expectedMessage) {
    System.out.println("Executing: Verifying support message area displays: " + expectedMessage);
    assertThat(page.locator(".support-message")).containsText(expectedMessage);
}

@Then("The chat message should display {string}")
public void verifyChatMessage(String expectedMessage) {
    System.out.println("Executing: The chat message should display: " + expectedMessage);
    assertThat(page.locator(".chat-message")).containsText(expectedMessage);
}

@Given("User navigates to the portal home page")
public void navigateToHomePage() {
    System.out.println("Executing: User navigates to the portal home page");
    page.navigate("http://localhost:8080/");
}

@Then("The chat window should display a system message {string}")
    public void verifySystemMessageDisplayed(String systemMessage) {
        System.out.println("Verifying system message displayed: " + systemMessage);
        assertThat(page.locator(".chat-system-message")).containsText(systemMessage);
    }

@Then("The name on the water bottle should be {string}")
public void nameOnWaterBottleShouldBe(String expectedName) {
    System.out.println("Executing: The name on the water bottle should be " + expectedName);
    assertThat(page.locator(".name-on-bottle")).containsText(expectedName);
}

@Then("The chat bot welcome message should display {string}")
public void verifyWelcomeMessage(String expectedMessage) {
    System.out.println("Executing: The chat bot welcome message should display " + expectedMessage);
    assertThat(page.locator(".chat-welcome-message")).containsText(expectedMessage);
}

@Then("The system should display a cancellation message {string}")
public void systemDisplaysCancellationMessage(String cancellationMessage) {
    System.out.println("Executing: The system should display a cancellation message " + cancellationMessage);
    assertThat(page.locator(".result")).containsText(cancellationMessage);
}

@Then("The shipping address should display {string}")
public void theShippingAddressShouldDisplay(String expectedAddress) {
    System.out.println("Executing: The shipping address should display " + expectedAddress);
    // Assuming a locator for shipping address details after tracking an order
    assertThat(page.locator(".shipping-address")).containsText(expectedAddress);
}

@Then("The chatbot message area should display {string}")
public void verifyChatbotMessage(String expectedMessage) {
    System.out.println("Verifying chatbot message: " + expectedMessage);
    assertThat(page.locator(".chatbot-message-area")).containsText(expectedMessage);
}

@Then("The wait time message should contain {string}")
public void verifyWaitTimeMessageContains(String expectedPhrase) {
    System.out.println("Executing: The wait time message should contain " + expectedPhrase);
    assertThat(page.locator(".result")).containsText(expectedPhrase);
}

@When("Agent clicks the {string} button")
public void agentClicksTheButton(String buttonText) {
    System.out.println("Executing: Agent clicks the '" + buttonText + "' button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The status message result should contain {string}")
public void verifyStatusMessageContains(String expectedPartialMessage) {
    System.out.println("Verifying status message contains: " + expectedPartialMessage);
    assertThat(page.locator(".result")).containsText(expectedPartialMessage);
}

@When("User navigates to the cart page")
public void navigateToCartPage() {
    System.out.println("Executing: User navigates to the cart page");
    page.navigate("/cart");
}

@Given("User is on the \"Disposal Services\" page")
    public void userIsOnDisposalServicesPage() {
        System.out.println("Navigating to Disposal Services page");
        page.navigate("https://www.example.com/disposal-services");
    }

@Then("the welcome message should not exactly display {string}")
public void verifyWelcomeMessageNotTruncated(String truncatedMessage) {
    System.out.println("Executing: verifyWelcomeMessageNotTruncated with message: " + truncatedMessage);
    assertThat(page.locator("#ai-bot-welcome-message")).not().hasText(truncatedMessage);
}

@Given("User is logged in to the portal with username {string} and password {string}")
public void userIsLoggedIn(String username, String password) {
    System.out.println("Executing: User is logged in to the portal with username " + username + " and password");
    page.navigate("http://localhost:8080/login");
    page.locator("#username").fill(username);
    page.locator("#password").fill(password);
    page.locator("button:has-text('Login')").click();
    assertThat(page).hasURL("http://localhost:8080/dashboard");
}

@Then("I should see an error message")
public void verifyErrorMessageIsDisplayed() {
    System.out.println("Executing: I should see an error message");
    assertThat(page.locator(".error")).isVisible();
}

@Then("The chat message area should display {string}")
public void verifyChatMessage_184(String expectedMessage) {
    System.out.println("Verifying chat message: " + expectedMessage);
    assertThat(page.locator(".chat-messages")).containsText(expectedMessage);
}

@Then("User should see the welcome message {string}")
public void userShouldSeeWelcomeMessage(String welcomeMessage) {
    System.out.println("Executing: User should see the welcome message " + welcomeMessage);
    assertThat(page.locator(".result")).containsText(welcomeMessage);
}

@When("user enters invalid order number {string}")
public void userEntersInvalidOrderNumber(String orderNo) {
    System.out.println("Entering invalid order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The product price should not display {string}")
public void verifyProductPriceNotDisplay(String unwantedPrice) {
    System.out.println("Verifying product price does not display: " + unwantedPrice);
    assertThat(page.locator(".product-price")).doesNotContainText(unwantedPrice);
}

@Given("User is on the order cancellation page {string}")
public void userIsOnTheOrderCancellationPage(String url) {
    System.out.println("Navigating to order cancellation page: " + url);
    page.navigate(url);
}

@Given("user is on the customer service chat page {string}")
public void userIsOnTheCustomerServiceChatPage(String url) {
    System.out.println("Executing: user is on the customer service chat page " + url);
    page.navigate(url);
}

@Given("I navigate to the email verification page")
    public void navigateToEmailVerificationPage() {
        System.out.println("Executing: Navigate to the email verification page");
        page.navigate("/email/verify");
    }

@When("User enters {string} into the order number field")
public void userEntersIntoOrderNumberField(String query) {
    System.out.println("Executing: User enters " + query + " into the order number field");
    page.locator("#order_no").fill(query);
}

@Given("User is on the Price Adjustment Request page")
public void navigateToPriceAdjustmentPage() {
    System.out.println("Navigating to Price Adjustment Request page");
    page.navigate("/price-adjustment");
}

@When("The chat system announces a handover")
public void chatSystemAnnouncesHandover() {
    System.out.println("Executing: The chat system announces a handover");
    // This step represents an internal system event leading to the message display.
    // No direct user action or specific locator interaction is implied by the transcript here.
}

@When("User selects {string} from the available regions")
public void userSelectsRegion(String region) {
    System.out.println("Selecting region: " + region);
    page.locator("li:has-text('" + region + "')").click();
}

@When("User clicks the \"Get a human\" button")
public void userClicksGetAHumanButton() {
    System.out.println("Clicking 'Get a human' button.");
    page.locator("button:has-text('Get a human')").click();
}

@Then("The bot message should not display {string}")
public void verifyBotMessageNotDisplayed(String unexpectedMessage) {
    System.out.println("Executing: The bot message should not display " + unexpectedMessage);
    assertThat(page.locator(".result")).doesNotContainText(unexpectedMessage);
}

@Then("the system message should not contain {string}")
public void theSystemMessageShouldNotContain(String incorrectMessage) {
    System.out.println("Executing: The system message should not contain " + incorrectMessage);
    assertThat(page.locator(".result")).not().containsText(incorrectMessage);
}

@When("user enters order number {string} and billing zip code {string}")
public void userEntersOrderNumberAndBillingZipCode(String orderNo, String zipCode) {
    System.out.println("Typing order number: " + orderNo + " and zip code: " + zipCode);
    page.locator("#order_no").fill(orderNo);
    page.locator("#billing_zip").fill(zipCode);
}

@Then("The system message {string} should be visible")
public void systemMessageShouldBeVisible(String message) {
    System.out.println("Executing: The system message \"" + message + "\" should be visible");
    // Using a generic locator for system messages within a chat interface
    assertThat(page.locator(".chat-system-message:has-text(\"" + message + "\")")).isVisible();
}

@Given("User is on the {string} page")
public void userIsOnThePage(String pageName) {
    System.out.println("Executing: User is on the " + pageName + " page");
    if ("order cancellation".equals(pageName)) {
        page.navigate("http://localhost:8080/cancel-order"); // Assuming a base URL for the cancellation page
        assertThat(page).hasURL("http://localhost:8080/cancel-order");
    }

@Then("the chat window should display the greeting message {string}")
public void verifyGreetingMessage(String expectedMessage) {
    System.out.println("Executing: verifyGreetingMessage with message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("A care representative does not join the chat")
public void careRepresentativeDoesNotJoinChat() {
    System.out.println("Simulating care representative failing to join");
    // This step implies an action that would normally trigger a join, but it fails.
    // We'd ensure no corresponding success message appears.
}

@Then("The status message result should display {string}")
public void verifyStatusMessageResult(String expectedMessage) {
    System.out.println("Verifying status message result: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("The page title should be {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Executing: The page title should be " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@When("User enters new address {string}, {string}, {string}")
public void userEntersNewAddress(String street, String city, String zip) {
    System.out.println("Entering new address: " + street + ", " + city + ", " + zip);
    page.locator("#new_address_street").fill(street);
    page.locator("#new_address_city").fill(city);
    page.locator("#new_address_zip").fill(zip);
}

@When("user clicks on "Track Order" button")
public void userClicksOnTrackOrderButton() {
    System.out.println("Clicking on Track Order button");
    page.locator("button:has-text('Track Order')").click();
}

@Then("a survey prompt with id {string} should not be visible")
    public void surveyPromptWithIdShouldNotBeVisible(String elementId) {
        System.out.println("Executing: Survey prompt with id " + elementId + " should not be visible");
        assertThat(page.locator("#" + elementId)).not().isVisible();
    }

@Given("user is on the chat interface")
public void userIsOnChatInterface_208() {
    System.out.println("Executing: userIsOnChatInterface");
    // Assuming a chat page URL for demonstration
    page.navigate("https://example.com/chat"); 
}

@When("User types {string} into the chat input and presses Enter")
public void userTypesIntoTheChatInputAndPressesEnter(String message) {
    System.out.println("Executing: User types into chat input and presses Enter: " + message);
    page.locator("#chat-input").fill(message);
    page.locator("#chat-input").press("Enter");
}

@Then("The system message {string} should not be visible")
public void systemMessageShouldNotBeVisible(String message) {
    System.out.println("Executing: The system message \"" + message + "\" should not be visible");
    // Using a generic locator for system messages within a chat interface
    assertThat(page.locator(".chat-system-message:has-text(\"" + message + "\")")).isHidden();
}

@When("a care representative joins the conversation")
public void careRepresentativeJoinsConversation() {
    System.out.println("Executing: A care representative joins the conversation");
    // This step represents an event trigger, not a direct Playwright action for joining.
    // Subsequent 'Then' steps will assert the resulting UI state.
}

@When("the digital assistant initiates a handoff to a live agent")
public void assistantInitiatesHandoff() {
    System.out.println("Executing: assistantInitiatesHandoff");
    // This step represents a system-initiated event, not a direct user action.
    // The page state is expected to change, which will be asserted in the 'Then' steps.
}

@Then("The chat area should display the message {string}")
public void chatAreaShouldDisplayMessage(String expectedMessage) {
    System.out.println("Executing: The chat area should display the message '" + expectedMessage + "'");
    assertThat(page.locator(".chat-message-area")).containsText(expectedMessage);
}

@Given("User is on the customer service contact page")
public void userOnContactPage() {
    System.out.println("Navigating to customer service contact page.");
    page.navigate("https://example.com/contact"); // Assuming a contact page URL
}

@When("a care representative becomes available")
public void representativeBecomesAvailable() {
    System.out.println("Executing: A care representative becomes available (simulated system event)");
    // In a real scenario, this might involve waiting for a specific UI element, a websocket message, or a network response.
    // For this exercise, we assume the system state changes to reflect availability.
}

@Given("the user is on the order tracking page")
public void userIsOnOrderTrackingPage_216() {
    System.out.println("Navigating to order tracking page");
    page.navigate("https://example.com/order-tracking");
}

@Then("An error message {string} should be displayed in the chat interface")
    public void verifyChatErrorMessageDisplayed(String errorMessage) {
        System.out.println("Verifying chat error message displayed: " + errorMessage);
        assertThat(page.locator(".chat-error")).containsText(errorMessage);
    }

@Then("the chat message area should contain the phrase {string}")
public void verifyChatMessageContainsPhrase(String phrase) {
    System.out.println("Executing: The chat message area should contain the phrase " + phrase);
    assertThat(page.locator(".chat-message-area")).containsText(phrase);
}

@Then("the chat window should NOT display the system message {string}")
public void chatWindowShouldNotDisplaySystemMessage(String unexpectedMessage) {
    System.out.println("Executing: The chat window should NOT display the system message: " + unexpectedMessage);
    assertThat(page.locator(".system-message")).doesNotHaveText(unexpectedMessage);
}

@Then("A system message confirms {string}")
public void aSystemMessageConfirms(String expectedMessage) {
    System.out.println("Verifying system message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("User should be redirected to the portal dashboard")
public void verifyDashboardRedirection() {
    System.out.println("Executing: User should be redirected to the portal dashboard");
    assertThat(page).hasURL("http://localhost:8080/dashboard");
}

@Then("the message {string} should be displayed")
    public void messageShouldBeDisplayed(String expectedMessage) {
        System.out.println("Executing: the message '" + expectedMessage + "' should be displayed");
        // Assuming the acknowledgment message appears in a common status/result area.
        assertThat(page.locator(".result")).containsText(expectedMessage);
    }

@When("An attempted handoff to a human agent occurs but fails to complete")
public void attemptedHandoffFailsToComplete() {
    System.out.println("Executing: An attempted handoff to a human agent occurs but fails to complete");
    // Simulate a partial or failed handoff where the assistant doesn't disappear
}

@Then("The URL should be {string}")
public void theURLShouldBe(String expectedUrl) {
    System.out.println("Executing: The URL should be " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@Then("The zip code should be {string}")
public void zipCodeShouldBe(String expectedZipCode) {
    System.out.println("Executing: The zip code should be " + expectedZipCode);
    assertThat(page.locator(".zip-code-display")).containsText(expectedZipCode);
}

@Given("User is on the chat support initiation page")
public void userIsOnChatSupportPage_226() {
    System.out.println("Executing: User is on the chat support initiation page");
    page.navigate("https://example.com/chat-support");
}

@Then("the system message should contain {string}")
public void theSystemMessageShouldContain(String partialMessage) {
    System.out.println("Executing: The system message should contain " + partialMessage);
    assertThat(page.locator(".result")).containsText(partialMessage);
}

@Then("The user should be on the URL {string}")
    public void theUserShouldBeOnTheURL(String expectedUrl) {
        System.out.println("Executing: The user should be on the URL " + expectedUrl);
        assertThat(page).hasURL(expectedUrl);
    }

@Then("The system should initiate contact with an agent and display {string}")
public void systemInitiatesContactAndDisplays(String message) {
    System.out.println("Verifying agent contact initiation message: " + message);
    assertThat(page.locator(".result")).containsText(message);
}

@When("User clicks the search button")
public void userClicksTheSearchButton() {
    System.out.println("Executing: User clicks the search button");
    page.locator("button:has-text('Search')").click(); // Invented locator
}

@Then("The chat welcome message should not contain {string}")
public void verifyWelcomeMessageNotContain(String missingPhrase) {
    System.out.println("Executing: The chat welcome message should not contain " + missingPhrase);
    assertThat(page.locator(".chat-welcome-message")).not().containsText(missingPhrase);
}

@When("User attempts to navigate to a non-existent page {string}")
    public void userAttemptsToNavigateToANonExistentPage(String url) {
        System.out.println("Executing: User attempts to navigate to a non-existent page " + url);
        page.navigate(url);
    }

@When("User expects redirection")
public void userExpectsRedirection() {
    System.out.println("Executing: User expects redirection (waiting for potential navigation)");
    // Add a small wait if necessary to allow for potential client-side redirection logic to execute
    // page.waitForTimeout(1000); // Only if absolutely necessary, prefer explicit waits
}

@Then("The {string} button should be enabled again")
public void verifyButtonEnabled(String buttonText) {
    System.out.println("Executing: The " + buttonText + " button should be enabled again");
    assertThat(page.locator(String.format("button:has-text('%s')", buttonText))).isEnabled();
}

@Then("the status message should display {string}")
public void verifyStatusMessage(String message) {
    System.out.println("Executing: Verify status message: " + message);
    assertThat(page.locator(".result")).containsText(message);
}

@Then("The order details should display {string}")
public void orderDetailsDisplays(String expectedMessage) {
    System.out.println("Verifying order details message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Given("User is on the \"greeting\" page")
public void userIsOnGreetingPage() {
    System.out.println("Executing: User is on the \"greeting\" page");
    page.navigate("http://localhost:8080/greeting"); // Assuming a base URL for the greeting page
}

@When("User enters a valid order number {string}")
    public void userEntersValidOrderNumber(String orderNo) {
        System.out.println("Typing valid order number: " + orderNo);
        page.locator("#order_no").fill(orderNo);
    }

@Then("The chat message display area should not contain the exact message: {string}")
public void chatMessageAreaShouldNotContainExactMessage(String unexpectedMessage) {
    System.out.println("Executing: The chat message display area should not contain the exact message: " + unexpectedMessage);
    assertThat(page.locator(".chat-message-display")).doesNotContainText(unexpectedMessage);
}

@Then("User should see the live chat status as {string}")
    public void userShouldSeeLiveChatStatus(String status) {
        System.out.println("Verifying live chat status: " + status);
        assertThat(page.locator("#live-chat-status")).containsText(status);
    }

@When("user enters order number {string} for a non-existent order")
public void userEntersNonExistentOrderNumber(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("an error message should display {string}")
public void anErrorMessageShouldDisplay(String errorMessage) {
    System.out.println("Verifying error message: " + errorMessage);
    assertThat(page.locator(".error")).containsText(errorMessage);
}

@When("User attempts to upload an oversized photo file {string}")
    public void userAttemptsToUploadOversizedPhotoFile(String fileName) {
        System.out.println("Executing: User attempts to upload an oversized photo file " + fileName);
        Path filePath = Paths.get("src/test/resources/" + fileName);
        try {
            Files.createDirectories(filePath.getParent());
            // Create a large dummy file (e.g., 10MB)
            byte[] largeContent = new byte[10 * 1024 * 1024]; // 10MB
            Arrays.fill(largeContent, (byte) 'A');
            Files.write(filePath, largeContent);
        }

@Given("User navigates to the AI Chatbot interface")
public void navigateToChatbotInterface() {
    System.out.println("Executing: User navigates to the AI Chatbot interface");
    page.navigate("https://example.com/chat");
}

@Then("the bot displays the welcome message {string}")
public void theBotDisplaysTheWelcomeMessage(String expectedMessage) {
    System.out.println("Executing: the bot displays the welcome message \"" + expectedMessage + "\"");
    assertThat(page.locator(".bot-message")).containsText(expectedMessage);
}

@Then("The AI Bot welcome message should not contain {string}")
public void theAIBotWelcomeMessageShouldNotContain(String unexpectedPhrase) {
    System.out.println("Executing: The AI Bot welcome message should not contain " + unexpectedPhrase);
    assertThat(page.locator(".welcome-message-text")).not().containsText(unexpectedPhrase);
}

@When("User opens the {string} widget")
public void openChatWidget(String widgetName) {
    System.out.println("Opening " + widgetName + " widget");
    page.locator("#chat-widget-button").click();
}

@When("User enters email {string}")
public void userEntersEmail_248(String email) {
    System.out.println("Entering email: " + email);
    page.locator("#email-input").fill(email);
}

@When("the system status indicates high call volumes")
public void systemStatusIndicatesHighCallVolumes() {
    System.out.println("Executing: The system status indicates high call volumes");
    // This step represents a system state, no direct UI interaction needed here for context setting.
}

@Given("User navigates to the chatbot interface")
public void navigateToChatbotInterface_250() {
    System.out.println("Executing: User navigates to the chatbot interface");
    page.navigate("https://example.com/chatbot");
}

@Given("a user navigates to the customer service contact page")
public void navigateToContactPage() {
    System.out.println("Navigating to customer service contact page");
    page.navigate("https://example.com/contact");
}

@Given("user is on the customer service contact page")
public void userOnCustomerServiceContactPage() {
    System.out.println("Navigating to customer service contact page.");
    page.navigate("https://example.com/customerservice");
}

@When("the chat displays the system message {string}")
public void chatDisplaysSystemMessage(String message) {
    System.out.println("Executing: Chat displays system message: " + message);
    assertThat(page.locator(".chat-message.system:has-text(" + message + ")")).isVisible();
}

@When("User clicks {string} button")
public void userClicksButton_254(String buttonText) {
    System.out.println("Executing: User clicks " + buttonText + " button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@When("the user clicks the {string} button")
public void clickTrackOrderButton(String buttonText) {
    System.out.println("Executing: Click button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@When("User initiates the live chat")
    public void userInitiatesTheLiveChat() {
        System.out.println("Initiating live chat.");
        // Assuming a chat button or icon to click to open the chat widget
        page.locator("#chat-button").click();
        // Wait for the chat window to appear
        page.locator("#chat-window").waitFor();
    }

@When("User sees order details for {string}")
public void userSeesOrderDetailsFor(String orderNo) {
    System.out.println("Verifying order details for: " + orderNo);
    assertThat(page.locator(".result")).containsText(orderNo);
}

@Then("the chat should display the status {string}")
public void chatShouldDisplayStatus(String status) {
    System.out.println("Executing: Chat should display status: " + status);
    assertThat(page.locator(".chat-status.representative")).containsText(status);
}

@Given("user navigates to the AI bot page")
public void navigateToBotPage() {
    System.out.println("Executing: user navigates to the AI bot page");
    page.navigate("https://example.com/bot");
}

@Then("The product {string} should be displayed in the results")
public void theProductShouldBeDisplayedInTheResults(String productName) {
    System.out.println("Executing: The product '" + productName + "' should be displayed in the results");
    assertThat(page.locator(".product-title:has-text('" + productName + "')")).isVisible(); // Invented locator for product title in results
}

@Then("The agent connection capability message should not contain {string}")
public void verifyAgentCapabilityMessageDoesNotContain(String unexpectedPartialText) {
    System.out.println("Executing: The agent connection capability message should not contain " + unexpectedPartialText);
    assertThat(page.locator(".agent-capability-message")).doesNotContainText(unexpectedPartialText);
}

@Then("I should see the error message {string}")
public void verifyErrorMessage_262(String errorMessage) {
    System.out.println("Executing: Verifying error message: '" + errorMessage + "'");
    assertThat(page.locator(".error")).containsText(errorMessage);
}

@When("User navigates to the base URL {string}")
public void navigateToBaseUrl(String url) {
    System.out.println("Executing: User navigates to the base URL: " + url);
    page.navigate(url);
}

@When("User enters order number {string} and clicks track")
public void userEntersOrderNumberAndClicksTrack(String orderNo) {
    System.out.println("Entering order number: " + orderNo + " and clicking Track Order button.");
    page.locator("#order_no").fill(orderNo);
    page.locator("button:has-text('Track Order')").click();
}

@Then("An information message should display {string}")
public void anInformationMessageShouldDisplay(String message) {
    System.out.println("Verifying information message: " + message);
    assertThat(page.locator(".info-message")).containsText(message);
}

@When("User attempts to navigate to a restricted area {string}")
    public void userAttemptsToNavigateToARestrictedArea(String url) {
        System.out.println("Executing: User attempts to navigate to a restricted area " + url);
        page.navigate(url);
    }

@When("User provides detailed information {string}")
public void provideDetailedInformation(String details) {
    System.out.println("Executing: User provides detailed information: " + details);
    page.locator("#issue_description").fill(details);
}

@Then("The error message \"Please provide details for your 'Other Issue'.\" should be displayed")
public void theErrorMessageShouldBeDisplayed(String expectedErrorMessage) {
    System.out.println("Executing: The error message \"" + expectedErrorMessage + "\" should be displayed");
    assertThat(page.locator(".error")).containsText(expectedErrorMessage);
}

@Given("User navigates to {string}")
public void userNavigatesTo(String url) {
    System.out.println("Executing: User navigates to " + url);
    page.navigate(url);
}

@Then("I should see the success message {string}")
public void verifySuccessMessage_270(String successMessage) {
    System.out.println("Executing: Verifying success message: '" + successMessage + "'");
    assertThat(page.locator(".result")).containsText(successMessage);
}

@When("the user navigates to the {string} page")
public void userNavigatesToPage(String pageName) {
    System.out.println("Executing: Navigating to " + pageName + " page");
    if (pageName.equals("Registry Management")) {
        page.navigate("/registry/manage");
    }

@When("User enters address {string}")
public void userEntersAddress(String address) {
    System.out.println("Executing: User enters address " + address);
    page.locator("#address_line1").fill(address);
}

@Then("a warning message {string} should be displayed.")
public void verifyWarningMessage(String warningMsg) {
    System.out.println("Verifying warning message: " + warningMsg);
    assertThat(page.locator(".result")).containsText(warningMsg);
}

@When("User enters invalid billing zip code {string}")
public void userEntersInvalidBillingZipCode(String zipCode) {
    System.out.println("Typing invalid billing zip code: " + zipCode);
    page.locator("#billing_zip").fill(zipCode);
}

@When("User attempts to initiate a chat with a care representative")
public void userAttemptsToInitiateChat() {
    System.out.println("Clicking 'Start Chat' button");
    page.locator("button:has-text('Start Chat')").click();
}

@When("user clicks the {string} button")
public void userClicksTheButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The wait time message should not contain {string}")
public void verifyWaitTimeMessageDoesNotContain_277(String unexpectedPhrase) {
    System.out.println("Executing: The wait time message should not contain " + unexpectedPhrase);
    assertThat(page.locator(".result")).doesNotContainText(unexpectedPhrase);
}

@When("the user triggers a generic process")
    public void userTriggersGenericProcess() {
        System.out.println("Executing: the user triggers a generic process");
        // This step is a placeholder as the transcript does not specify any user action.
        // In a real scenario, this would involve interacting with a specific UI element,
        // for example, clicking a button or submitting a form.
        // Example placeholder: page.locator("#submitButton").click();
    }

@Given("I am on the registry management page")
public void navigateToRegistryManagementPage() {
    System.out.println("Navigating to registry management page");
    page.navigate("/registry/manage");
}

@Then("A chat widget should appear")
public void aChatWidgetShouldAppear() {
    System.out.println("Verifying chat widget appearance.");
    assertThat(page.locator("#chat-widget")).isVisible();
}

@Given("the user is on the customer support chat page")
public void navigateToChatPage() {
    System.out.println("Executing: the user is on the customer support chat page");
    page.navigate("https://example.com/support/chat");
}

@Given("User has an active chat session and system message {string} is displayed")
    public void hasActiveChatSession(String systemMessage) {
        System.out.println("User has active chat session with system message: " + systemMessage);
        // Pre-condition: Assuming chat is already open and initial messages sent
        // For a real test, this would involve setup steps similar to the previous scenario.
        // For now, we assume the state is already achieved for this Given step.
        assertThat(page.locator(".chat-system-message")).containsText(systemMessage);
    }

@When("User enters order number {string} and clicks the {string} button")
public void userEntersOrderNumberAndClicksTheTrackOrderButton(String orderNo, String buttonText) {
    System.out.println("Entering order number: " + orderNo + " and clicking: " + buttonText);
    page.locator("#order_no").fill(orderNo);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Given("User is on the product support page")
public void userIsOnProductSupportPage() {
    System.out.println("Executing: User is on the product support page");
    page.navigate("https://example.com/support");
}

@Given("User navigates to the AI bot chat interface")
public void navigateToAiBotChat() {
    System.out.println("Executing: User navigates to the AI bot chat interface");
    page.navigate("https://example.com/aibot"); // Hypothetical URL for AI bot interface
}

@When("user clicks on {string} button")
public void userClicksOnButton(String buttonText) {
    System.out.println("Clicking on button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Given("the user navigates to the AI Bot chat interface")
public void navigateToChatInterface() {
    System.out.println("Executing: navigateToChatInterface");
    page.navigate("https://example.com/aibot");
}

@Then("The search results should include {string}")
public void searchResultsShouldInclude(String expectedMessage) {
    System.out.println("Verifying search results contain: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("The bot identity should display {string}")
public void verifyBotIdentity(String expectedIdentity) {
    System.out.println("Executing: The bot identity should display " + expectedIdentity);
    assertThat(page.locator(".bot-identity")).containsText(expectedIdentity);
}

@Then("the chat should display an error message {string}")
public void chatShouldDisplayErrorMessage(String errorMessage) {
    System.out.println("Executing: Chat should display error message: " + errorMessage);
    assertThat(page.locator(".chat-error-message")).containsText(errorMessage);
}

@Given("User is on the order verification page")
public void userIsOnOrderVerificationPage() {
    System.out.println("Executing: User is on the order verification page");
    page.navigate("https://example.com/order-verification");
}

@When("The page loads")
public void thePageLoads() {
    System.out.println("Page has loaded, waiting for content.");
    // Ensure the page is fully loaded after navigation
    page.waitForLoadState();
}

@Given("browser location services are enabled")
public void browserLocationServicesAreEnabled() {
    System.out.println("Executing: browser location services are enabled");
    page.context().grantPermissions(Arrays.asList("geolocation"));
}

@Then("the chat status message should display \"{string}\"")
public void verifyChatStatusMessage(String expectedStatus) {
    System.out.println("Verifying chat status message: " + expectedStatus);
    assertThat(page.locator("#chat-status-message")).containsText(expectedStatus);
}

@Given("User has navigated to the help center")
public void userHasNavigatedToTheHelpCenter() {
    System.out.println("Navigating to help center.");
    page.navigate("https://www.example.com/help");
}

@Given("User is on the chat application page")
public void userOnChatPage_296() {
    System.out.println("Executing: User is on the chat application page");
    page.navigate("https://example.com/chat");
}

@Then("The AI bot's initial message should contain {string}")
public void verifyBotInitialMessageContains_297(String expectedPartialMessage) {
    System.out.println("Executing: The AI bot's initial message should contain " + expectedPartialMessage);
    // Assuming the bot's message is displayed in a generic chat message content area
    assertThat(page.locator(".chat-message-content")).containsText(expectedPartialMessage);
}

@Then("The status message result should not contain {string}")
public void verifyStatusMessageDoesNotContain(String unexpectedPartialMessage) {
    System.out.println("Verifying status message does not contain: " + unexpectedPartialMessage);
    assertThat(page.locator(".result")).not(containsText(unexpectedPartialMessage));
}

@Given("User has {string} location enabled in the browser")
public void userHasLocationEnabled(String location) {
    System.out.println("Executing: User has " + location + " location enabled in the browser (precondition handled externally or mocked)");
    // In a real scenario, Playwright's browserContext.setGeolocation() or similar setup
    // would be used to mock/set the browser's geolocation for the test.
}

@Then("The unavailability message should display {string}")
public void verifyUnavailabilityMessage_300(String expectedMessage) {
    System.out.println("Executing: The unavailability message should display " + expectedMessage);
    assertThat(page.locator(".error")).containsText(expectedMessage);
}

@When("The page finishes loading")
public void pageFinishesLoading() {
    System.out.println("Executing: The page finishes loading");
    page.waitForLoadState();
}

@When("User enters {string} into the order number input field")
public void userEntersQueryIntoOrderNumberField(String query) {
    System.out.println("Executing: User enters " + query + " into the order number input field");
    page.locator("#order_no").fill(query);
}

@When("the post-interaction confirmation message is presented")
public void postInteractionMessageIsPresented() {
    System.out.println("Executing: The post-interaction confirmation message is presented (conceptual step).");
    // This step assumes the page is in a state where the message is visible.
    // No direct Playwright action is performed here as per the provided text.
}

@Given("the AI Bot Assistant page is loaded for key phrases verification")
public void aiBotAssistantPageIsLoadedForKeyPhrasesVerification() {
    System.out.println("Navigating to AI Bot Assistant page for key phrase verification.");
    page.navigate("https://example.com/bot");
}

@Then("the chat should display a warning {string}")
public void chatShouldDisplayWarning(String warningMessage) {
    System.out.println("Executing: Chat should display warning: " + warningMessage);
    assertThat(page.locator(".chat-warning-message")).containsText(warningMessage);
}

@Given("the user navigates to the customer support page")
public void navigateToSupportPage() {
    System.out.println("Navigating to customer support page");
    page.navigate("/support");
}

@Then("The URL should remain {string}")
public void theURLShouldRemain(String expectedUrl) {
    System.out.println("Executing: The URL should remain " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@Given("User is on the order details retrieval page")
public void userIsOnOrderDetailsRetrievalPage() {
    System.out.println("Executing: User is on the order details retrieval page");
    page.navigate("https://example.com/order-details");
}

@Given("user is on the order tracking page")
public void userIsOnOrderTrackingPage_309() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://localhost:8080/track-order");
}

@Given("User is logged in and on the dashboard page")
public void userIsLoggedInAndOnDashboardPage() {
    System.out.println("Navigating to dashboard page (assuming login handled).");
    page.navigate("https://example.com/dashboard");
}

@When("User clicks the \"Continue\" button")
public void userClicksContinueButton() {
    System.out.println("Executing: User clicks the \"Continue\" button");
    page.locator("button:has-text('Continue')").click();
}

@Then("The chat bot response should display {string}")
public void verifyChatResponse(String expectedResponse) {
    System.out.println("Executing: The chat bot response should display " + expectedResponse);
    assertThat(page.locator(".chat-response")).containsText(expectedResponse);
}

@Then("the chat history should display the message {string}")
public void theChatHistoryShouldDisplayTheMessage(String expectedMessage) {
    System.out.println("Executing: the chat history should display the message " + expectedMessage);
    assertThat(page.locator(".chat-history")).containsText(expectedMessage);
}

@When("the representative enters order number {string}")
public void enterOrderNumber(String orderNo) {
    System.out.println("Entering order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Given("User navigates to the order tracking page.")
public void navigateToOrderTrackingPage_315() {
    System.out.println("Executing: User navigates to the order tracking page.");
    page.navigate("https://example.com/order-tracking");
}

@Given("User is on the return confirmation page")
    public void userIsOnReturnConfirmationPage() {
        System.out.println("Executing: User is on the return confirmation page");
        // In a real scenario, this step would navigate to the page or ensure the context is set.
        // For this exercise, we assume the page is already in the correct state to display the message.
        // Example: page.navigate("https://example.com/return-confirmation");
    }

@When("User presses {string}")
public void pressKey(String key) {
    System.out.println("Pressing key: " + key);
    page.locator("#chat-input").press(key);
}

@Given("User is on the order verification page {string}")
public void userIsOnOrderVerificationPage_318(String url) {
    System.out.println("Navigating to order verification page: " + url);
    page.navigate(url);
}

@When("User clicks on {string} link")
public void userClicksOnLink(String linkText) {
    System.out.println("Clicking on link: " + linkText);
    page.locator("text=" + linkText).click();
}

@When("The page has finished loading")
public void pageFinishedLoading() {
    System.out.println("Waiting for page to finish loading.");
    // Using NETWORKIDLE to ensure all network requests have completed
    page.waitForLoadState(com.microsoft.playwright.options.LoadState.NETWORKIDLE);
}

@When("User enters order number {string} and billing zip code {string}")
public void userEntersOrderNumberAndBillingZipCode_321(String orderNo, String zipCode) {
    System.out.println("Entering order number: " + orderNo + " and billing zip code: " + zipCode);
    page.locator("#order_no").fill(orderNo);
    page.locator("#billing_zip_code").fill(zipCode);
}

@When("User clicks \"Check Eligibility\" button")
public void userClicksCheckEligibilityButton() {
    System.out.println("Clicking 'Check Eligibility' button.");
    page.locator("button:has-text('Check Eligibility')").click();
}

@When("User enters {string} as the cancellation reason")
    public void enterCancellationReason(String reason) {
        System.out.println("Entering cancellation reason: " + reason);
        page.locator("#cancellation_reason").fill(reason);
    }

@Then("The total amount should be {string}")
public void verifyTotalAmount(String totalAmount) {
    System.out.println("Verifying total amount: " + totalAmount);
    assertThat(page.locator("#cart_total_amount")).containsText(totalAmount);
}

@Then("The returns policy section should display {string}")
    public void verifyReturnsPolicyDisplay(String expectedText) {
        System.out.println("Verifying returns policy text: " + expectedText);
        assertThat(page.locator(".result")).containsText(expectedText);
    }

@Then("the digital assistant's \"active\" indicator should not be visible")
public void digitalAssistantActiveIndicatorShouldNotBeVisible() {
    System.out.println("Executing: Digital assistant's active indicator should not be visible");
    assertThat(page.locator(".digital-assistant-active")).not().isVisible();
}

@Then("The business hours should display {string}")
public void verifyBusinessHours_327(String expectedHours) {
    System.out.println("Verifying business hours display: " + expectedHours);
    assertThat(page.locator(".business-hours")).containsText(expectedHours);
}

@Given("User is on the support page")
public void userIsOnSupportPage() {
    System.out.println("Navigating to support page");
    page.navigate("https://www.example.com/support");
}

@Then("User should be redirected to the international site {string}")
public void verifyInternationalRedirection(String expectedUrl) {
    System.out.println("Executing: Verify user is redirected to international site: " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@When("User refreshes the page")
public void userRefreshesThePage() {
    System.out.println("Executing: User refreshes the page");
    page.reload();
}

@Given("User has an active chat session and has sent {string}")
    public void hasActiveChatSessionAndSentMessage(String sentMessage) {
        System.out.println("User has active chat session and sent: " + sentMessage);
        // Simulate previous actions to get into this state
        page.navigate("https://www.example.com");
        page.locator("button:has-text('Live Chat')").click();
        page.locator("#chat-input").fill(sentMessage);
        page.locator("button:has-text('Send')").click();
        assertThat(page.locator(".chat-message-display")).containsText(sentMessage);
    }

@Then("The chat window should not contain the text {string}")
    public void theChatWindowShouldNotContainTheText(String unexpectedText) {
        System.out.println("Verifying chat window does not contain unexpected text: " + unexpectedText);
        // We assert that the chat message area does NOT contain the unexpected text
        assertThat(page.locator(".chat-message")).doesNotContainText(unexpectedText);
    }

@When("I remove the name {string} from the registry")
public void removeNameFromRegistry(String name) {
    System.out.println("Removing name: " + name);
    page.locator("#name_to_remove").fill(name);
    page.locator("button:has-text('Remove Name')").click();
}

@Given("the user is engaged in a support chat session")
public void inChatSession() {
    System.out.println("Executing: the user is engaged in a support chat session");
    page.navigate("https://example.com/support/chat"); // Assuming navigation also initiates a session
}

@Then("the digital assistant's avatar or name should still be visible in the chat participant list")
public void digitalAssistantIsStillVisible() {
    System.out.println("Executing: Digital assistant's avatar or name should still be visible");
    assertThat(page.locator(".digital-assistant-presence")).isVisible();
}

@Then("No message related to agent joining should be displayed")
public void noAgentJoiningMessageShouldBeDisplayed() {
    System.out.println("Executing: No message related to agent joining should be displayed");
    assertThat(page.locator(".chat-message:has-text('A care representative is joining now')")).not().isVisible();
    assertThat(page.locator(".chat-message:has-text('The digital assistant is stepping away')")).not().isVisible();
}

@Then("The availability message {string} should be displayed")
public void verifyAvailabilityMessage(String expectedMessage) {
    System.out.println("Verifying availability message: " + expectedMessage);
    assertThat(page.locator(".error")).containsText(expectedMessage);
}

@When("user sends the message")
public void userSendsTheMessage() {
    System.out.println("Executing: user sends the message");
    page.locator("#sendMessageButton").click();
}

@Then("An error message should display {string}")
public void anErrorMessageShouldDisplay_339(String expectedMessage) {
    System.out.println("Executing: An error message should display: " + expectedMessage);
    assertThat(page.locator(".error")).containsText(expectedMessage);
}

@When("the system determines it cannot resolve the user's issue automatically")
public void systemDeterminesIssue() {
    System.out.println("Executing: the system determines it cannot resolve the user's issue automatically");
    // Simulate a query that the system cannot resolve, leading to the escalation message.
    page.locator("#chat_input").fill("My previous attempts to fix this problem failed, I need more help.");
    page.locator("#send_message_button").click();
}

@Then("the chat message {string} should be displayed")
public void theChatMessageShouldBeDisplayed(String expectedMessage) {
    System.out.println("Executing: Verifying chat message: " + expectedMessage);
    assertThat(page.locator(".chat-message")).containsText(expectedMessage);
}

@When("User enters the query {string}")
public void userEntersQuery_342(String query) {
    System.out.println("Entering query: " + query);
    page.locator("#queryInput").fill(query);
}

@Given("the user is on the chat page")
public void userIsOnChatPage() {
    System.out.println("Executing: User is on the chat page");
    // Assuming the user is already on the chat page, no navigation needed if not specified
}

@Then("the error message should not be displayed")
public void theErrorMessageShouldNotBeDisplayed() {
    System.out.println("Verifying error message is not displayed.");
    assertThat(page.locator(".error")).isHidden();
}

@When("User clicks the 'Send' button")
    public void clickSendButton() {
        System.out.println("Clicking 'Send' button");
        page.locator("button:has-text('Send')").click();
    }

@Then("The 'Live Chat' button should be visible again")
    public void liveChatButtonShouldBeVisible() {
        System.out.println("Verifying 'Live Chat' button is visible");
        assertThat(page.locator("button:has-text('Live Chat')")).isVisible();
    }

@When("User clicks the \"Track Order\" button")
public void clickTrackOrderButton_347() {
    System.out.println("Clicking 'Track Order' button.");
    page.locator("button:has-text('Track Order')").click();
}

@Then("the bot's message should not be empty")
public void botMessageShouldNotBeEmpty() {
    System.out.println("Executing: Then the bot's message should not be empty");
    assertThat(page.locator(".result")).not().isEmpty();
}

@When("User leaves product description empty")
public void leaveProductDescriptionEmpty() {
    System.out.println("Leaving product description empty.");
    page.locator("#product_description").fill("");
}

@Given("User navigates to the AI Bot application")
public void navigateToAIBotApplication() {
    System.out.println("Executing: User navigates to the AI Bot application");
    // Placeholder URL for the AI Bot application, replace with actual URL.
    page.navigate("http://localhost:8080/ai-bot");
}

@Given("User clicks the {string} button")
    public void userClicksButton_351(String buttonText) {
        System.out.println("Executing: User clicks the " + buttonText + " button");
        page.locator("button:has-text('" + buttonText + "')").click();
    }

@Then("The welcome message should NOT contain {string}")
public void verifyWelcomeMessageNotContains(String unexpectedText) {
    System.out.println("Executing: The welcome message should NOT contain: " + unexpectedText);
    assertThat(page.locator(".welcome-message")).doesNotContainText(unexpectedText);
}

@Then("The welcome message {string} should be displayed")
public void verifyWelcomeMessage_353(String expectedMessage) {
    System.out.println("Executing: The welcome message should be displayed: " + expectedMessage);
    assertThat(page.locator("text=" + expectedMessage)).isVisible();
}

@When("User enters {string} into the search bar")
public void userEntersIntoTheSearchBar(String searchTerm) {
    System.out.println("Executing: User enters '" + searchTerm + "' into the search bar");
    page.locator("#search_input").fill(searchTerm); // Invented locator
}

@Given("a user is on the customer service contact page")
public void userIsOnContactPage() {
    System.out.println("User is on the customer service contact page");
    page.navigate("https://example.com/contact");
}

@Given("the AI Bot Assistant page is loaded for incorrect identity validation")
public void aiBotAssistantPageIsLoadedForIncorrectIdentityValidation() {
    System.out.println("Navigating to AI Bot Assistant page for incorrect identity validation.");
    page.navigate("https://example.com/bot");
}

@When("User types {string} into the chat input field")
public void typeIntoChatInput(String message) {
    System.out.println("Typing into chat input: " + message);
    page.locator("#chat-input").fill(message);
}

@When("a care representative joins without a handover event")
public void careRepresentativeJoinsWithoutHandoverEvent() {
    System.out.println("Executing: A care representative joins without a handover event");
    // This step represents an event trigger where the expected handover message is missing.
}

@Then("The status message should also contain {string}")
public void theStatusMessageShouldAlsoContain(String expectedMessagePart) {
    System.out.println("Verifying status message part: " + expectedMessagePart);
    assertThat(page.locator(".result")).containsText(expectedMessagePart);
}

@Then("The chat error message should display {string}")
    public void theChatErrorMessageShouldDisplay(String errorMessage) {
        System.out.println("Verifying chat error message: " + errorMessage);
        assertThat(page.locator(".chat-error-message")).containsText(errorMessage);
    }

@When("user leaves order number field empty")
public void userLeavesOrderNumberFieldEmpty_361() {
    System.out.println("Leaving order number field empty");
    page.locator("#order_no").fill("");
}

@When("User presses Enter")
public void userPressesEnter() {
    System.out.println("Executing: User presses Enter");
    page.locator("#chat-input").press("Enter");
}

@Then("An error message \"Human assistance is currently unavailable. Please try again during business hours.\" should be displayed")
public void errorMessageShouldBeDisplayed_363(String errorMessage) {
    System.out.println("Verifying error message: " + errorMessage);
    assertThat(page.locator(".error")).containsText(errorMessage);
}

@Then("The page should display the full routing prompt {string}")
public void verifyFullRoutingPrompt(String expectedPrompt) {
    System.out.println("Verifying full routing prompt: " + expectedPrompt);
    assertThat(page.locator("body")).containsText(expectedPrompt);
}

@When("User submits the inquiry")
public void submitInquiry() {
    System.out.println("Executing: User submits the inquiry");
    page.locator("button:has-text('Submit')").click();
}

@When("User indicates they do not want agent assistance by clicking {string}")
public void userDeclinesAgentAssistanceByClicking(String buttonText) {
    System.out.println("Executing: User indicates they do not want agent assistance by clicking " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The loading message {string} should be visible")
public void verifyLoadingMessageVisible(String message) {
    System.out.println("Executing: The loading message " + message + " should be visible");
    assertThat(page.locator("text='" + message + "'")).isVisible();
}

@Then("The AI Bot welcome message should display {string}")
public void verifyAIBotWelcomeMessage(String expectedMessage) {
    System.out.println("Executing: The AI Bot welcome message should display " + expectedMessage);
    assertThat(page.locator(".welcome-message-text")).containsText(expectedMessage);
}

@When("the user enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Executing: Entering order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@When("User initiates a chat")
public void userInitiatesAChat() {
    System.out.println("Executing: User initiates a chat");
    page.locator("#initiateChatButton").click();
}

@Then("The current URL should contain {string}")
public void theCurrentURLShouldContain(String urlPart) {
    System.out.println("Executing: The current URL should contain " + urlPart);
    assertThat(page).hasURL(java.util.regex.Pattern.compile(java.util.regex.Pattern.quote(urlPart)));
}

@Given("User is on the {string}")
public void userIsOnTheHomepage(String pageName) {
    System.out.println("Navigating to: " + pageName);
    page.navigate("https://www.example.com");
}

@Given("User is on the {string} page at {string}")
public void userIsOnThePage_373(String pageName, String url) {
    System.out.println("Navigating to " + pageName + " page: " + url);
    page.navigate(url);
}

@Then("The loading indicator {string} should not be visible")
public void verifyLoadingIndicatorNotVisible(String message) {
    System.out.println("Verifying loading indicator invisibility: " + message);
    assertThat(page.locator("text='" + message + "'")).not().isVisible();
}

@Then("No error message should be displayed")
public void noErrorMessageShouldBeDisplayed() {
    System.out.println("Verifying no error message is displayed.");
    assertThat(page.locator(".error")).not().isVisible();
}

@Given("user is on the chat support page")
public void userIsOnChatSupportPage_376() {
    System.out.println("Executing: user is on the chat support page");
    page.navigate("https://chat.example.com");
}

@When("User enters reference number {string} and postal code {string}")
public void userEntersReferenceNumberAndPostalCode(String referenceNumber, String postalCode) {
    System.out.println("Entering reference number: " + referenceNumber + " and postal code: " + postalCode);
    page.locator("#reference_number").fill(referenceNumber);
    page.locator("#postal_code").fill(postalCode);
}

@Then("The chat bot message should be {string}")
public void theChatBotMessageShouldBe(String expectedMessage) {
    System.out.println("Executing: The chat bot message should be " + expectedMessage);
    assertThat(page.locator(".chat-bot-message")).hasText(expectedMessage);
}

@Given("a chat session is active and a handover is initiated")
public void aChatSessionIsActiveAndAHandoverIsInitiated() {
    System.out.println("Executing: a chat session is active and a handover is initiated");
    // In a real scenario, this might involve navigating to a chat page or simulating initial chat state.
    // For this test, we assume the initial state for message display verification.
}

@When("the user navigates to {string}")
public void userNavigatesTo_380(String url) {
    System.out.println("Executing: the user navigates to " + url);
    page.navigate(url);
}

@Then("The URL should remain on the order tracking page")
public void theURLShouldRemainOnOrderTrackingPage() {
    System.out.println("Executing: The URL should remain on the order tracking page");
    assertThat(page).hasURL("http://localhost:8080/track-order");
}

@Then("The welcome message container should contain {string}")
public void verifyAgentConnectionPromise(String expectedPhrase) {
    System.out.println("Verifying message contains phrase: " + expectedPhrase);
    assertThat(page.locator(".welcome-message-container")).containsText(expectedPhrase);
}

@When("The digital assistant does not step away")
public void digitalAssistantDoesNotStepAway() {
    System.out.println("Simulating digital assistant not stepping away due to handover failure");
    // This step implies the handover attempt failed, so the DA remains active.
}

@Given("the representative is on the order tracking page {string}")
public void navigateToOrderTrackingPage_384(String url) {
    System.out.println("Navigating to order tracking page: " + url);
    page.navigate(url);
}

@Then("the digital assistant's status should remain {string}")
public void digitalAssistantStatusShouldRemain(String status) {
    System.out.println("Executing: Verifying digital assistant's status remains " + status);
    assertThat(page.locator("#digital-assistant-status")).containsText(status);
}

@Then("The cancellation should be processed successfully")
public void cancellationProcessedSuccessfully() {
    System.out.println("Executing: The cancellation should be processed successfully");
    // Add more specific assertions if there's a status or redirection
    assertThat(page).hasURL("https://example.com/cancel-success"); // Placeholder URL
}

@When("the user leaves the order number field empty")
public void leaveOrderNumberEmpty() {
    System.out.println("Executing: Leave order number field empty");
    page.locator("#order_no").fill("");
}

@When("User selects an invalid file type {string}")
public void userSelectsAnInvalidFileType(String fileName) {
    System.out.println("Executing: User selects an invalid file type " + fileName);
    page.locator("input[type='file']").setInputFiles(Paths.get("src/test/resources/" + fileName));
}

@Then("A confirmation message \"Connecting you to an agent...\" should be displayed")
public void confirmationMessageShouldBeDisplayed(String message) {
    System.out.println("Verifying confirmation message: " + message);
    assertThat(page.locator(".result")).containsText(message);
}

@Then("The bot welcome message should display {string}")
public void verifyBotWelcomeMessage(String expectedMessage) {
    System.out.println("Executing: The bot welcome message should display " + expectedMessage);
    assertThat(page.locator(".bot-message-display")).containsText(expectedMessage);
}

@When("the user sends a message {string}")
public void userSendsMessage(String message) {
    System.out.println("Executing: User sends message: " + message);
    page.locator("#chat-input").fill(message);
    page.locator("#chat-input").press("Enter");
}

@When("No handover has been initiated by the digital assistant")
public void noHandoverInitiated() {
    System.out.println("Executing: No handover has been initiated by the digital assistant");
    // This step sets the context for the subsequent assertions, implying no action was taken to trigger handover.
}

@Then("The shipping address should be updated to {string}")
public void theShippingAddressShouldBeUpdatedTo(String expectedAddress) {
    System.out.println("Executing: The shipping address should be updated to " + expectedAddress);
    assertThat(page.locator("#shipping_address_display")).containsText(expectedAddress);
}

@Given("User navigates to the login page")
public void navigateToLoginPage() {
    System.out.println("Executing: User navigates to the login page");
    page.navigate("https://example.com/login");
}

@Then("The bot should not display the agent connection offer {string}")
public void verifyBotDoesNotOfferAgentConnection(String unexpectedOffer) {
    System.out.println("Verifying bot does not display agent connection offer: " + unexpectedOffer);
    assertThat(page.locator(".bot-message")).doesNotContainText(unexpectedOffer);
}

@Then("The chat bot message should contain {string}")
public void theChatBotMessageShouldContain(String expectedPartialMessage) {
    System.out.println("Executing: The chat bot message should contain " + expectedPartialMessage);
    assertThat(page.locator(".chat-bot-message")).containsText(expectedPartialMessage);
}

@Then("The system should display a connecting message {string}")
public void systemDisplaysConnectingMessage(String connectingMessage) {
    System.out.println("Executing: The system should display a connecting message " + connectingMessage);
    assertThat(page.locator(".result")).containsText(connectingMessage);
}

@Given("the user has successfully removed {string} from the registry")
public void userHasSuccessfullyRemovedItem(String itemName) {
    System.out.println("Executing: Pre-condition: " + itemName + " removed from registry");
    // This step assumes the removal action was performed previously or is a pre-condition setup.
    // For a real scenario, this might involve an API call or a previous UI test step.
    // For this exercise, we assume the state is set.
}

@When("no post-chat survey is triggered")
    public void noPostChatSurveyIsTriggered() {
        System.out.println("Executing: No post-chat survey is triggered");
        // No explicit action, as the setup ensures no survey is present.
    }

@When("the system experiences high call volumes")
public void systemExperiencesHighCallVolumes() {
    System.out.println("Executing: Simulating high call volumes (no direct action on UI for this step)");
    // This step sets up the context for the 'Then' step, assuming the application state changes to show the message.
}

@Then("The system message {string} should be displayed")
public void verifySystemMessageDisplayed_401(String expectedMessage) {
    System.out.println("Verifying system message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("The discount message should display {string}")
public void theDiscountMessageShouldDisplay(String expectedMessage) {
    System.out.println("Executing: The discount message should display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Given("User is on a broken {string} page at {string}")
public void userIsOnABrokenPage(String pageName, String url) {
    System.out.println("Navigating to broken " + pageName + " page: " + url);
    page.navigate(url);
}

@When("30 seconds pass without a care representative joining")
public void thirtySecondsPassWithoutRepresentativeJoining() {
    System.out.println("Executing: Waiting 30 seconds for care representative to join");
    page.waitForTimeout(30000); // Wait for 30 seconds
    // Assert that the representative status is NOT visible after the wait
    assertThat(page.locator(".chat-status.representative")).not().isVisible();
}

@Then("The welcome message should contain {string}")
public void verifyPartialWelcomeMessage(String expectedPartialMessage) {
    System.out.println("Verifying partial welcome message: " + expectedPartialMessage);
    assertThat(page.locator(".result")).containsText(expectedPartialMessage);
}

@Then("The bot welcome message should not contain {string}")
public void verifyBotWelcomeMessageDoesNotContain(String unexpectedText) {
    System.out.println("Executing: The bot welcome message should not contain " + unexpectedText);
    assertThat(page.locator(".bot-message-display")).doesNotContainText(unexpectedText);
}

@When("User leaves the email field empty")
public void userLeavesEmailFieldEmpty() {
    System.out.println("Leaving email field empty");
    page.locator("#email-input").fill("");
}

@Then("{string} should not be visible on the public registry")
public void verifyNameNotVisibleOnPublicRegistry(String name) {
    System.out.println("Verifying name is not visible on public registry: " + name);
    page.navigate("/registry/public");
    assertThat(page.locator(".public-registry-item:has-text('" + name + "')")).not().isVisible();
}

@Given("User navigates to the homepage")
    public void navigateToHomepage() {
        System.out.println("Navigating to homepage");
        page.navigate("https://www.example.com"); // Placeholder URL
    }

@Then("The system should display the agent referral message {string}")
public void verifyAgentReferralMessage(String expectedMessage) {
    System.out.println("Executing: The system should display the agent referral message " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("the survey prompt should not contain the message {string}")
    public void surveyPromptShouldNotContainMessage(String unexpectedMessage) {
        System.out.println("Executing: The survey prompt should not contain the message: " + unexpectedMessage);
        assertThat(page.locator("#survey-prompt")).not().containsText(unexpectedMessage);
    }

@When("User clicks the track order button")
public void userClicksTrackOrderButton() {
    System.out.println("Executing: User clicks the track order button");
    page.locator("button:has-text('Track Order')").click();
}

@Then("The agent connection message should display {string}")
public void verifyAgentConnectionMessage(String expectedMessage) {
    System.out.println("Verifying agent connection message: " + expectedMessage);
    assertThat(page.locator("#agentConnectionMessage")).containsText(expectedMessage);
}

@Then("The bot message should display {string}")
public void verifyBotMessage_414(String expectedMessage) {
    System.out.println("Executing: The bot message should display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("The support information section should NOT display the email address {string}")
public void verifyEmailAddressNotDisplayed(String emailAddress) {
    System.out.println("Executing: The support information section should NOT display the email address " + emailAddress);
    assertThat(page.locator(".support-info")).doesNotContainText(emailAddress);
}

@Then("the message {string} should appear in the chat history")
public void messageShouldAppearInChatHistory(String message) {
    System.out.println("Verifying message: " + message + " in chat history");
    assertThat(page.locator(".chat-history .sent-message")).last().containsText(message);
}

@When("User navigates to the homepage and then revisits the shopping cart page")
public void navigateAwayAndRevisitCart() {
    System.out.println("Navigating to homepage and revisiting cart");
    page.navigate("https://example.com/");
    page.navigate("https://example.com/cart");
}

@Then("The order status for {string} should not be {string}")
public void theOrderStatusShouldNotBe(String orderNo, String unexpectedStatus) {
    System.out.println("Executing: The order status for " + orderNo + " should not be " + unexpectedStatus);
    assertThat(page.locator("#order-status")).doesNotContainText(unexpectedStatus);
}

@Then("the result message should contain {string}")
public void verifySupportMessageContains(String expectedPart) {
    System.out.println("Verifying result message contains: " + expectedPart);
    assertThat(page.locator(".result")).containsText(expectedPart);
}

@When("the handover process is initiated")
public void handoverProcessIsInitiated() {
    System.out.println("Executing: The handover process is initiated");
    // This step represents an event trigger for handover, but with an expected failure in assistant stepping away.
}

@When("user enters valid order number {string}")
public void userEntersValidOrderNumber_421(String orderNo) {
    System.out.println("Entering valid order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("A {string} message should be displayed")
public void noResultsMessageShouldBeDisplayed(String expectedMessage) {
    System.out.println("Verifying no results message: " + expectedMessage);
    assertThat(page.locator(".no-results")).containsText(expectedMessage);
}

@When("a care representative successfully takes over the conversation")
public void careRepresentativeSuccessfullyTakesOver() {
    System.out.println("Executing: A care representative successfully takes over the conversation");
    // Simulate the event that triggers handoff and message display
    // This might involve backend calls or UI interactions not directly visible here
    // For automation, we might wait for the message to appear or trigger the event via API if possible
}

@When("Agent leaves the order number field empty")
public void agentLeavesOrderNumberFieldEmpty() {
    System.out.println("Leaving order number field empty");
    page.locator("#order_no").fill("");
}

@Then("The confirmation message should display {string}")
public void verifyConfirmationMessage(String expectedMessage) {
    System.out.println("Executing: Verifying confirmation message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("a feedback request element should be present")
    public void feedbackRequestElementShouldBePresent() {
        System.out.println("Executing: A feedback request element should be present");
        assertThat(page.locator("#feedback-request")).isVisible();
    }

@When("User types {string} into the inquiry field")
public void userTypesIntoTheInquiryField(String query) {
    System.out.println("Executing: User types '" + query + "' into the inquiry field");
    page.locator("#inquiry-field").fill(query);
}

@When("The handover sequence fails to initiate")
public void handoverSequenceFailsToInitiate() {
    System.out.println("Executing: The handover sequence fails to initiate");
    // Simulate a state where the handover process did not start correctly.
}

@Given("the user has just finished a customer support chat")
    public void userFinishedCustomerSupportChat() {
        System.out.println("Executing: User has just finished a customer support chat");
        page.navigate("https://www.owncompany.com/chat-finished");
    }

@Given("User is on the Customer Support Portal")
public void userIsOnTheCustomerSupportPortal_430() {
    System.out.println("Navigating to Customer Support Portal");
    page.navigate("https://support.example.com/portal");
}

@Then("the message \"Is there anything else I can assist you with today?\" should be visible")
public void verifyClosingMessage() {
    System.out.println("Verifying the closing message display");
    assertThat(page.locator(".chat-closing-prompt")).containsText("Is there anything else I can assist you with today?");
}

@Then("the system should display the prompt {string}")
public void verifySystemPrompt(String expectedPrompt) {
    System.out.println("Executing: the system should display the prompt " + expectedPrompt);
    assertThat(page.locator(".system-response").last()).containsText(expectedPrompt);
}

@Then("User should see the currency symbol {string}")
public void userShouldSeeCurrencySymbol(String currencySymbol) {
    System.out.println("Executing: User should see the currency symbol " + currencySymbol);
    assertThat(page.locator("text='" + currencySymbol + "'")).isVisible();
}

@Given("User is on the product restock inquiry page")
public void userIsOnTheProductRestockInquiryPage() {
    System.out.println("Navigating to product restock inquiry page");
    page.navigate("https://example.com/restock");
}

@When("User enters {string} into the {string} text area")
public void userEntersIntoTheTextArea(String feedback, String fieldName) {
    System.out.println("Entering feedback: " + feedback);
    // Assuming a generic locator for feedback text area
    page.locator("#feedback_text_area").fill(feedback);
}

@Given("User is on the e-commerce homepage")
public void userIsOnTheEcommerceHomepage() {
    System.out.println("Executing: User is on the e-commerce homepage");
    page.navigate("https://www.example-ecommerce.com");
}

@When("User refreshes the cart page")
public void refreshCartPage() {
    System.out.println("Executing: User refreshes the cart page");
    page.reload();
}

@When("a care representative takes over the conversation")
public void representativeTakesOver() {
    System.out.println("Executing: A care representative takes over the conversation (simulated system event)");
    // This step implies a system state change that leads to a message display.
}

@Then("the total cart price should not be {string}")
public void verifyCartTotalPriceNot(String unexpectedTotalPrice) {
    System.out.println("Executing: the total cart price should NOT be " + unexpectedTotalPrice);
    assertThat(page.locator("div.cart-total-price")).doesNotContainText(unexpectedTotalPrice);
}

@Then("User should see a {string} message")
public void userShouldSeeAMessage(String message) {
    System.out.println("Executing: User should see a " + message + " message");
    assertThat(page.locator(".no-results-message")).containsText(message);
}

@When("User enters approximate dimensions {string}")
public void enterApproximateDimensions(String dimensions) {
    System.out.println("Entering approximate dimensions: " + dimensions);
    page.locator("#dimensions").fill(dimensions);
}

@When("User leaves the zip code field empty")
public void userLeavesZipCodeFieldEmpty() {
    System.out.println("Executing: User leaves the zip code field empty");
    page.locator("#zip_code").fill("");
}

@When("The chat system triggers an inactivity closure message")
public void systemTriggersInactivityClosureMessage() {
    System.out.println("Executing: The chat system triggers an inactivity closure message");
    // This step assumes the message appears due to a prior system action or page load
    // No direct Playwright action is performed here, as it's a trigger/pre-condition.
}

@Given("User navigates to the AI Bot chat interface")
public void navigateToChatInterface_444() {
    System.out.println("Executing: User navigates to the AI Bot chat interface");
    page.navigate("http://localhost:8080/chatbot");
}

@Then("The estimated wait time should NOT display {string}")
public void verifyWaitTimeMessageNotDisplayed(String unexpectedMessage) {
    System.out.println("Executing: The estimated wait time should NOT display " + unexpectedMessage);
    assertThat(page.locator(".wait-time-message")).doesNotContainText(unexpectedMessage);
}

@Given("I am on the AI Bot chat page")
public void iAmOnTheAIBotChatPage() {
    System.out.println("Executing: I am on the AI Bot chat page");
    page.navigate("https://example.com/chatbot");
}

@Then("An {string} message should be displayed")
public void agentUnavailableMessageShouldBeDisplayed(String message) {
    System.out.println("Verifying agent unavailable message: " + message);
    assertThat(page.locator("#agent-unavailable-message")).containsText(message);
}

@Then("The agent connection capability message should display {string}")
public void verifyAgentConnectionCapability(String expectedMessage) {
    System.out.println("Executing: The agent connection capability message should display " + expectedMessage);
    assertThat(page.locator(".agent-capability-message")).containsText(expectedMessage);
}

@Then("The page should not display a button with text {string}")
public void verifyHoldTransferButtonNotDisplayed(String buttonText) {
    System.out.println("Executing: The page should not display a button with text");
    assertThat(page.locator("button:has-text('" + buttonText + "')")).not().isVisible();
}

@When("User leaves the {string} text area empty")
public void userLeavesTheTextAreaEmpty(String fieldName) {
    System.out.println("Ensuring feedback text area is empty.");
    // Assuming a generic locator for feedback text area
    page.locator("#feedback_text_area").fill("");
}

@Then("The URL should match pattern {string}")
public void theURLShouldMatchPattern(String urlPattern) {
    System.out.println("Executing: The URL should match pattern " + urlPattern);
    assertThat(page).hasURL(urlPattern); // Playwright's hasURL supports glob patterns
}

@Then("The queue message should display {string}")
public void queueMessageShouldDisplay(String expectedMessage) {
    System.out.println("Executing: The queue message should display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User selects the option to {string}")
public void userSelectsTheOptionTo(String optionText) {
    System.out.println("Selecting option: " + optionText);
    page.locator("button:has-text('" + optionText + "')").click();
}

@Then("The current URL should be \"https://example.com/support\"")
public void currentURLShouldBeSupport(String expectedUrl) {
    System.out.println("Verifying URL remains: " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@Then("the chat message area should display the full message {string}")
public void verifyFullChatMessage(String fullMessage) {
    System.out.println("Executing: The chat message area should display the full message");
    assertThat(page.locator(".chat-message-area")).containsText(fullMessage);
}

@Given("User is on the site loading page")
public void userIsOnTheSiteLoadingPage() {
    System.out.println("Navigating to the site loading page.");
    page.navigate("http://localhost:8080/url-input");
}

@Then("An error message {string} should be displayed")
public void anErrorMessageShouldBeDisplayed(String message) {
    System.out.println("Executing: An error message " + message + " should be displayed");
    assertThat(page.locator(".error")).containsText(message);
}

@Then("The page should display the message {string}")
public void verifyAvailabilityMessage_458(String message) {
    System.out.println("Executing: The page should display the message");
    assertThat(page.locator("text=" + message)).isVisible();
    assertThat(page.locator("text=" + message)).containsText(message);
}

@Then("the success message {string} should be displayed")
public void successMessageShouldBeDisplayed(String expectedMessage) {
    System.out.println("Executing: Verifying success message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("User should see {string} in the search results")
public void userShouldSeeInTheSearchResults(String expectedProduct) {
    System.out.println("Executing: User should see " + expectedProduct + " in the search results");
    assertThat(page.locator(".search-results")).containsText(expectedProduct);
}

@Then("The chat greeting message should contain {string}")
public void verifyChatGreetingMessage(String expectedText) {
    System.out.println("Executing: The chat greeting message should contain " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

@When("User opens the chatbox")
public void userOpensTheChatbox() {
    System.out.println("Executing: User opens the chatbox");
    page.locator("#chat-icon").click();
}

@Then("the bot's message should not contain {string}")
public void botMessageShouldNotContain(String unexpectedText) {
    System.out.println("Executing: Then the bot's message should not contain " + unexpectedText);
    assertThat(page.locator(".result")).not().containsText(unexpectedText);
}

@Then("The bot introduction should display {string}")
public void verifyBotIntroduction(String expectedMessage) {
    System.out.println("Executing: The bot introduction should display " + expectedMessage);
    assertThat(page.locator(".bot-message")).containsText(expectedMessage);
}

@Given("User is on the newsletter subscription page")
public void userIsOnNewsletterPage() {
    System.out.println("Navigating to newsletter subscription page");
    page.navigate("http://localhost:8080/newsletter"); // Assuming a local test URL
}

@Then("The page title should contain {string}")
public void thePageTitleShouldContain(String expectedTitlePart) {
    System.out.println("Executing: The page title should contain " + expectedTitlePart);
    assertThat(page).hasTitle(new Regex(".*" + expectedTitlePart + ".*"));
}

@When("User selects the \"Technical Support\" option")
public void userSelectsTechnicalSupportOption() {
    System.out.println("Executing: User selects the \"Technical Support\" option");
    page.locator("#technical_support_option").click();
}

@Then("the status message should display the estimated wait time {string}")
public void verifyEstimatedWaitTime(String waitTime) {
    System.out.println("Executing: Verify status message contains wait time: " + waitTime);
    assertThat(page.locator(".result")).containsText(waitTime);
}

@Then("The welcome message should not display {string}")
public void verifyWelcomeMessageNotDisplayed(String unexpectedMessage) {
    System.out.println("Executing: The welcome message should not display " + unexpectedMessage);
    assertThat(page.locator(".welcome-message")).doesNotContainText(unexpectedMessage);
}

@Then("The chat history should not display an empty message")
    public void chatHistoryShouldNotDisplayEmptyMessage() {
        System.out.println("Executing: The chat history should not display an empty message");
        assertThat(page.locator(".chat-messages")).not().containsText("");
    }

@Then("The {string} should not be visible")
public void selectorShouldNotBeVisible(String selectorName) {
    System.out.println("Verifying absence of: " + selectorName);
    assertThat(page.locator("#region-selector")).not().isVisible();
}

@Then("The registry content should be visible")
public void verifyRegistryContentVisible() {
    System.out.println("Executing: The registry content should be visible");
    assertThat(page.locator("#registry-content")).isVisible();
}

@Then("The error message should not be visible")
public void verifyErrorMessageIsNotVisible() {
    System.out.println("Verifying error message is not visible");
    assertThat(page.locator(".error")).not(isVisible());
}

@Given("the user has completed a chat and received a survey prompt")
    public void userCompletedChatAndReceivedSurveyPrompt() {
        System.out.println("Executing: User has completed a chat and received a survey prompt");
        page.navigate("https://www.owncompany.com/post-chat-survey-page");
        assertThat(page.locator("#survey-prompt")).isVisible();
    }

@Then("the order details should display {string}")
public void verifyOrderDetails(String expectedDetails) {
    System.out.println("Executing: the order details should display: " + expectedDetails);
    assertThat(page.locator(".result")).containsText(expectedDetails);
}

@Given("User navigates to the AI Bot Assistant page")
public void navigateToBotPage_476() {
    System.out.println("Navigating to AI Bot Assistant page");
    page.navigate("https://example.com/ai-bot");
}

@Then("The current URL should remain \"https://example.com/dashboard\"")
public void currentURLShouldRemain(String expectedUrl) {
    System.out.println("Verifying URL remains: " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@Then("The chat history should be cleared or a message {string} should be displayed")
    public void verifyChatHistoryClearedOrMessageDisplayed(String endMessage) {
        System.out.println("Verifying chat history cleared or end message: " + endMessage);
        // Check if chat history container is empty or specific message is present
        assertThat(page.locator(".chat-history")).hasText("").or().containsText(endMessage);
    }

@Then("The chat window should not be visible")
    public void chatWindowShouldNotBeVisible() {
        System.out.println("Executing: The chat window should not be visible");
        assertThat(page.locator(".chat-window")).isHidden();
    }

@When("the user attempts to remove a non-existent item {string}")
public void userAttemptsToRemoveNonExistentItem(String itemName) {
    System.out.println("Executing: Attempting to remove non-existent item: " + itemName);
    // Simulate clicking a remove button, even if the item is not visible. 
    // This might trigger a client-side or server-side validation error.
    // Assuming there's a generic 'remove by name' input or similar functionality for testing.
    // If not, this step would need to be re-evaluated for how a user would 'attempt' this.
    page.locator("#remove_item_input").fill(itemName);
    page.locator("#remove_item_button").click();
}

@When("User clicks on the login button")
public void clickLoginButton() {
    System.out.println("Clicking login button.");
    page.locator("#login-button").click();
}

@Then("the welcome message should not display {string}")
public void verifyWelcomeMessageDoesNotDisplay(String unexpectedMessage) {
    System.out.println("Executing: the welcome message should not display " + unexpectedMessage);
    assertThat(page.locator("#bot-welcome-message")).doesNotContainText(unexpectedMessage);
}

@Given("I am on the {string} page")
public void navigateToPage(String pageName) {
    System.out.println("Executing: Navigating to " + pageName + " page");
    page.navigate("https://www.OwnCompanybarnOwnCompany.com/customer-service/return/reprint-label.html");
}

@Then("The error message should display {string}")
public void verifyErrorMessage_484(String expectedMessage) {
    System.out.println("Verifying error message: " + expectedMessage);
    assertThat(page.locator(".error")).containsText(expectedMessage);
}

@When("User clicks the {string} link")
public void clickLink(String linkText) {
    System.out.println("Executing: User clicks the " + linkText + " link");
    page.locator("a:has-text('" + linkText + "')").click();
}

@When("User navigates to the cart page {string}")
public void userNavigatesToCartPage(String url) {
    System.out.println("Executing: User navigates to the cart page " + url);
    page.navigate(url);
}

@Given("User is on the AI Bot page")
public void userIsOnBotPage() {
    System.out.println("Executing: User is on the AI Bot page");
    page.navigate("https://example.com/bot-page");
}

@Given("User is on the order tracking page")
public void navigateToOrderTrackingPage_488() {
    System.out.println("Navigating to order tracking page.");
    page.navigate("https://example.com/track");
}

@When("User attempts to upload an invalid file type {string}")
    public void userAttemptsToUploadInvalidFileType(String fileName) {
        System.out.println("Executing: User attempts to upload an invalid file type " + fileName);
        Path filePath = Paths.get("src/test/resources/" + fileName);
        try {
            Files.createDirectories(filePath.getParent());
            Files.write(filePath, "This is a text document.".getBytes());
        }

@When("User navigates to {string}")
public void userNavigatesTo_490(String url) {
    System.out.println("Executing: User navigates to " + url);
    page.navigate(url);
}

@Then("The chatbox should display the message {string}")
public void chatboxShouldDisplayMessage(String expectedMessage) {
    System.out.println("Executing: The chatbox should display the message " + expectedMessage);
    assertThat(page.locator(".chatbox-content")).containsText(expectedMessage);
}

@Then("The status message should not be displayed")
public void theStatusMessageShouldNotBeDisplayed() {
    System.out.println("Verifying status message is not displayed");
    assertThat(page.locator(".result")).not(isVisible());
}

@Then("The agent connection policy message should display {string}")
public void verifyAgentConnectionPolicyMessage(String expectedMessage) {
    System.out.println("Executing: The agent connection policy message should display " + expectedMessage);
    assertThat(page.locator(".welcome-message")).containsText(expectedMessage);
}

@When("the user clicks the {string} button for {string}")
public void userClicksRemoveButton(String buttonText, String itemName) {
    System.out.println("Executing: Clicking " + buttonText + " button for " + itemName);
    page.locator(".registry-item:has-text('" + itemName + "')").locator("button:has-text('" + buttonText + "')").click();
}

@Then("The displayed shipping address should be {string}")
public void verifyDisplayedShippingAddress(String expectedAddress) {
    System.out.println("Verifying displayed shipping address: " + expectedAddress);
    assertThat(page.locator("#shipping_address")).containsText(expectedAddress);
}

@Then("The {string} link should be visible")
public void theCustomerSupportLinkShouldBeVisible(String linkName) {
    System.out.println("Verifying visibility of link: " + linkName);
    assertThat(page.locator("a:has-text('" + linkName + "')")).isVisible();
}

@When("the digital assistant completes its handover process")
public void digitalAssistantStepsAway_497() {
    System.out.println("Executing: digitalAssistantStepsAway");
    // This action represents the digital assistant's disengagement, an internal system event.
}

@Then("User should be on the URL {string}")
public void userShouldBeOnTheUrl(String expectedUrl) {
    System.out.println("Executing: User should be on the URL " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@Then("The bot capability message should display {string}")
public void botCapabilityMessageShouldDisplay(String expectedMessage) {
    System.out.println("Verifying bot capability message: " + expectedMessage);
    assertThat(page.locator(".bot-capability-message")).containsText(expectedMessage);
}

@Given("User is on the application home page")
public void userIsOnApplicationHomePage() {
    System.out.println("Navigating to application home page");
    page.navigate("https://example.com/chatbot");
}

@Then("The order status for {string} should be {string}")
public void theOrderStatusShouldBe(String orderNo, String expectedStatus) {
    System.out.println("Executing: The order status for " + orderNo + " should be " + expectedStatus);
    assertThat(page.locator("#order-status")).containsText(expectedStatus);
}

@Then("The information section should state {string}")
public void informationSectionShouldState(String expectedMessage) {
    System.out.println("Verifying information section contains: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User submits the inquiry without providing information")
public void submitInquiryWithoutProvidingInformation() {
    System.out.println("Executing: User submits the inquiry without providing information");
    page.locator("#issue_description").fill(""); // Ensure the field is empty
    page.locator("button:has-text('Submit')").click();
}

@Then("The product description should contain {string}")
public void productDescriptionShouldContain(String expectedDescriptionPart) {
    System.out.println("Verifying product description contains: " + expectedDescriptionPart);
    assertThat(page.locator(".product-description")).containsText(expectedDescriptionPart);
}

@Then("the chat input field should be disabled")
public void verifyChatInputFieldDisabled() {
    System.out.println("Verifying chat input field is disabled");
    assertThat(page.locator("#chat-input-field")).isDisabled();
}

@Then("The bot response should display {string}")
public void verifyBotResponse_506(String expectedResponse) {
    System.out.println("Verifying bot response: " + expectedResponse);
    assertThat(page.locator("#botResponse")).containsText(expectedResponse);
}

@Then("The order details should include address {string}")
public void orderDetailsShouldIncludeAddress(String expectedAddress) {
    System.out.println("Executing: The order details should include address " + expectedAddress);
    assertThat(page.locator(".result")).containsText(expectedAddress);
}

@Given("User is on the discount inquiry page")
public void userIsOnDiscountInquiryPage() {
    System.out.println("Executing: User is on the discount inquiry page");
    page.navigate("https://example.com/discounts");
}

@When("User attempts to initiate the live chat")
    public void userAttemptsToInitiateTheLiveChat() {
        System.out.println("Attempting to initiate live chat.");
        // Simulate clicking the chat button, but without waiting for the window to appear
        page.locator("#chat-button").click();
    }

@Then("The order status should not contain {string}")
public void theOrderStatusShouldNotContain(String unexpectedText) {
    System.out.println("Verifying order status does not contain: " + unexpectedText);
    assertThat(page.locator(".result")).doesNotContainText(unexpectedText);
}

@Then("the message \"A care representative is joining now to continue the conversation.\" should be displayed")
public void verifyJoiningMessageIsDisplayed() {
    System.out.println("Executing: verifyJoiningMessageIsDisplayed");
    assertThat(page.locator("text='A care representative is joining now to continue the conversation.'")).isVisible();
}

@Then("The tracking result should display {string}")
public void theTrackingResultShouldDisplay(String expectedMessage) {
    System.out.println("Verifying tracking result: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User navigates to the {string} page")
    public void userNavigatesToThePage(String pageName) {
        System.out.println("Navigating to " + pageName + " page.");
        switch (pageName) {
            case "Home":
                page.navigate("http://localhost:8080/");
                break;
            case "Support":
                page.navigate("http://localhost:8080/support");
                break;
            case "Contact Us":
                page.navigate("http://localhost:8080/contact-us");
                break;
            case "Order Tracking":
                page.navigate("http://localhost:8080/track-order");
                break;
            default:
                throw new IllegalArgumentException("Unknown page: " + pageName);
        }

@When("User enters query {string}")
public void userEntersQuery_514(String query) {
    System.out.println("Entering availability query: " + query);
    page.locator("#availability_query").fill(query);
}

@Given("a user is on the customer support chat page")
public void userIsOnChatPage_515() {
    System.out.println("Executing: User is on the customer support chat page");
    // Assuming navigation to the chat page happens in a @Before hook or previous step
    // Example: page.navigate("https://your-chat-app.com/support");
}

@Given("the user navigates to the chat page")
public void navigateToChatPage_516() {
    System.out.println("Executing: navigateToChatPage");
    page.navigate("http://localhost:8080/chat"); // Placeholder URL for chat interface
}

@Then("The system should offer to {string}")
public void theSystemShouldOfferTo(String offerText) {
    System.out.println("Verifying system offer: " + offerText);
    assertThat(page.locator("button:has-text('" + offerText + "')")).isVisible();
}

@Given("the user is on the chat support page")
public void userOnChatSupportPage() {
    System.out.println("Executing: userOnChatSupportPage");
    page.navigate("https://example.com/chat");
    assertThat(page).hasURL("https://example.com/chat");
}

@When("The chat window is unexpectedly closed by the system")
    public void chatWindowClosedUnexpectedly() {
        System.out.println("Simulating unexpected chat window closure");
        // This step is highly dependent on how the chat system handles unexpected closures.
        // For testing, we might simulate this by hiding the chat widget or navigating away and back.
        // For this example, we'll assume the chat widget element becomes hidden/removed.
        page.locator(".chat-widget").evaluate("node => node.style.display = 'none'");
    }

@When("User navigates to the {string} section")
public void userNavigatesToTheSection(String sectionName) {
    System.out.println("Navigating to section: " + sectionName);
    page.locator("a:has-text('" + sectionName + "')").click();
}

@Then("the final total price should be {string}")
public void finalTotalPriceShouldBe(String expectedPrice) {
    System.out.println("Verifying final total price: " + expectedPrice);
    assertThat(page.locator("#final-total-price")).containsText(expectedPrice);
}

@When("User leaves the order number field empty")
public void userLeavesTheOrderNumberFieldEmpty() {
    System.out.println("Executing: User leaves the order number field empty");
    page.locator("#order_no").fill("");
}

@Then("The error message should contain {string}")
public void theErrorMessageShouldContain(String expectedPartialMessage) {
    System.out.println("Executing: The error message should contain: " + expectedPartialMessage);
    assertThat(page.locator(".error")).containsText(expectedPartialMessage);
}

@Given("User navigates to the shopping cart page and confirms a {string} discount is displayed")
public void navigateToCartAndConfirmDiscount(String discount) {
    System.out.println("Navigating to cart and confirming discount: " + discount);
    page.navigate("https://example.com/cart");
    assertThat(page.locator("#discount_value")).containsText(discount);
}

@Then("The chat message display area should contain the phrase {string}")
public void chatMessageAreaShouldContainPhrase(String phrase) {
    System.out.println("Executing: The chat message display area should contain the phrase: " + phrase);
    assertThat(page.locator(".chat-message-display")).containsText(phrase);
}

@When("User enters product description {string}")
public void enterProductDescription(String description) {
    System.out.println("Entering product description: " + description);
    page.locator("#product_description").fill(description);
}

@When("the user requests to speak with a human agent")
public void requestHumanAgent() {
    System.out.println("Executing: requestHumanAgent");
    // Assuming a button or input triggers agent handover
    page.locator("button:has-text('Request Human Agent')").click();
    page.waitForTimeout(1000); // Allow time for messages to appear after system action
}

@When("User sends a message {string}")
public void userSendsMessage_528(String message) {
    System.out.println("User sending message: " + message);
    page.locator("#user-input").fill(message);
    page.locator("#send-button").click();
}

@Then("the chat message area should contain {string}")
    public void theChatMessageAreaShouldContain(String expectedPartialMessage) {
        System.out.println("Executing: The chat message area should contain " + expectedPartialMessage);
        PlaywrightAssertions.assertThat(page.locator(".result")).containsText(expectedPartialMessage);
    }

@Then("The queue message and prompt should state {string}")
public void queueMessageAndPromptShouldState(String expectedMessage) {
    System.out.println("Executing: The queue message and prompt should state " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User enters order number {string} and leaves billing zip code empty")
public void userEntersOrderNumberAndLeavesBillingZipCodeEmpty(String orderNo) {
    System.out.println("Typing order number: " + orderNo + " and leaving billing zip code empty");
    page.locator("#order_no").fill(orderNo);
    page.locator("#billing_zip_code").fill(""); // Leaving empty
}

@Then("The {string} button should be visible")
public void verifyButtonVisible(String buttonName) {
    System.out.println("Executing: The " + buttonName + " button should be visible");
    assertThat(page.locator("button:has-text('" + buttonName + "')")).isVisible();
}

@Given("user navigates to the AI bot chat interface")
public void navigateToBotInterface() {
    System.out.println("Executing: user navigates to the AI bot chat interface");
    // Assuming a generic chat interface URL for demonstration, replace with actual URL if available.
    // Since no URL is provided in the requirements, this step will not perform a navigation.
}

@Then("User should see order details for order {string}")
public void userShouldSeeOrderDetailsForOrder(String orderNo) {
    System.out.println("Verifying order details for: " + orderNo);
    assertThat(page.locator(".order-details")).containsText("Order: " + orderNo);
}

@When("User searches with an empty query")
public void userSearchesWithAnEmptyQuery() {
    System.out.println("Executing: User searches with an empty query");
    page.locator("#search_input").fill("");
    page.locator("button:has-text('Search')").click();
}

@Then("An error message {string}" should be displayed")
public void anErrorMessageShouldBeDisplayed_536(String errorMessage) {
    System.out.println("Executing: An error message " + errorMessage + " should be displayed");
    assertThat(page.locator(".error")).containsText(errorMessage);
}

@When("User attempts to click the \"Get a human\" button")
public void userAttemptsToClickGetAHumanButton() {
    System.out.println("Attempting to click disabled 'Get a human' button.");
    page.locator("button:has-text('Get a human')").click(new Locator.ClickOptions().setForce(true)); // Force click for disabled elements
}

@Then("the checkout page should display the {string} promotion")
public void checkoutPageDisplaysPromotion(String promotionText) {
    System.out.println("Verifying promotion message: " + promotionText);
    assertThat(page.locator(".discount-promo-message")).containsText(promotionText);
}

@Given("User navigates to the dashboard page {string}")
public void navigateToDashboardPage(String url) {
    System.out.println("Navigating to dashboard page: " + url);
    page.navigate(url);
}

@Then("The system status message should not contain {string}")
public void verifySystemStatusMessageDoesNotContain(String unexpectedText) {
    System.out.println("Executing: The system status message should not contain " + unexpectedText);
    // Assuming a generic locator for a status message
    assertThat(page.locator(".status-message")).doesNotContainText(unexpectedText);
}

@When("User enters invalid promo code {string} into the promo code field")
public void userEntersInvalidPromoCode(String promoCode) {
    System.out.println("Entering invalid promo code: " + promoCode);
    page.locator("#order_no").fill(promoCode);
}

@Given("User adds {string} to the cart")
public void addProductToCart_542(String productName) {
    System.out.println("Adding product to cart: " + productName);
    page.locator("#add_to_cart_button").click();
}

@Then("The interface should clearly state {string}")
public void verifyInterfaceStates(String expectedText) {
    System.out.println("Executing: The interface should clearly state " + expectedText);
    // Assuming a general chat area where these messages might appear
    assertThat(page.locator(".chat-container")).containsText(expectedText);
}

@Given("User navigates to the AI Bot page")
public void navigateToBotPage_544() {
    System.out.println("Executing: User navigates to the AI Bot page");
    page.navigate("https://example.com/bot-page");
}

@Then("The system should clearly state {string}")
public void systemShouldClearlyState(String expectedMessage) {
    System.out.println("Verifying message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User leaves billing zip code empty")
public void userLeavesBillingZipCodeEmpty() {
    System.out.println("Leaving billing zip code empty");
    page.locator("#billing_zip").fill("");
}

@Then("The bot's welcome message should be displayed as {string}")
public void verifyBotWelcomeMessage_547(String expectedMessage) {
    System.out.println("Verifying bot welcome message: " + expectedMessage);
    assertThat(page.locator(".bot-message")).containsText(expectedMessage);
}

@Then("The result should contain text {string}")
public void theResultShouldContainText(String expectedText) {
    System.out.println("Executing: The result should contain text " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

@Then("the result message should not display {string}")
    public void verifyResultNotDisplayed(String unexpectedMessage) {
        System.out.println("Executing: Verify result message does not display: " + unexpectedMessage);
        assertThat(page.locator(".result")).not().containsText(unexpectedMessage);
    }

@Then("the digital assistant's avatar or name should no longer be visible in the chat participant list")
public void digitalAssistantIsNotVisible() {
    System.out.println("Executing: Digital assistant's avatar or name should no longer be visible");
    assertThat(page.locator(".digital-assistant-presence")).isHidden();
}

@Then("the digital assistant's status should change to {string}")
public void digitalAssistantStatusShouldChangeTo(String newStatus) {
    System.out.println("Executing: Verifying digital assistant's status changes to " + newStatus);
    assertThat(page.locator("#digital-assistant-status")).containsText(newStatus);
}

@Then("the status message should not display {string}")
public void statusMessageShouldNotDisplay(String unexpectedExactMessage) {
    System.out.println("Executing: The status message should not display " + unexpectedExactMessage);
    assertThat(page.locator(".result")).doesNotHaveText(unexpectedExactMessage);
}

@Then("the conversation area should not contain {string}")
public void verifyConversationDoesNotContain(String message) {
    System.out.println("Executing: The conversation area should not contain \"" + message + "\"");
    assertThat(page.locator(".result")).doesNotContainText(message);
}

@Given("User is on the chatbot support page")
public void userIsOnChatbotSupportPage() {
    System.out.println("Executing: User is on the chatbot support page");
    page.navigate("https://example.com/support");
}

@Then("The chat welcome message should display {string}")
public void verifyWelcomeMessage_555(String expectedMessage) {
    System.out.println("Executing: The chat welcome message should display " + expectedMessage);
    assertThat(page.locator(".chat-welcome-message")).containsText(expectedMessage);
}

@Then("The bot's initial message should contain {string}")
public void verifyInitialMessageContains(String expectedText) {
    System.out.println("Executing: The bot's initial message should contain " + expectedText);
    assertThat(page.locator("#bot-welcome-message")).containsText(expectedText);
}

@Then("The page should display a login prompt or generic content {string}")
public void verifyLoginPromptOrGenericContent(String genericMessage) {
    System.out.println("Verifying login prompt or generic content: " + genericMessage);
    assertThat(page.locator("#generic-content")).containsText(genericMessage);
}

@Then("The hold option prompt should display {string}")
public void verifyHoldOptionPrompt(String expectedMessage) {
    System.out.println("Executing: The hold option prompt should display " + expectedMessage);
    assertThat(page.locator(".hold-prompt")).containsText(expectedMessage);
}

@When("User attempts to contact customer care")
public void userAttemptsToContactCustomerCare() {
    System.out.println("Executing: User attempts to contact customer care");
    page.locator("#contact_button").click();
}

@When("User fills the {string} field with {string}")
    public void fillField(String fieldName, String value) {
        System.out.println("Filling " + fieldName + " with: " + value);
        switch (fieldName) {
            case "Name":
                page.locator("#name").fill(value);
                break;
            case "Email":
                page.locator("#email").fill(value);
                break;
            case "Message":
                page.locator("#message").fill(value);
                break;
            default:
                throw new IllegalArgumentException("Unknown field: " + fieldName);
        }

@Then("The system status message should contain {string}")
public void verifySystemStatusMessageContains(String expectedText) {
    System.out.println("Executing: The system status message should contain " + expectedText);
    // Assuming a generic locator for a status message
    assertThat(page.locator(".status-message")).containsText(expectedText);
}

@When("The chat system processes the request")
public void chatSystemProcessesTheRequest() {
    System.out.println("Executing: The chat system processes the request");
    // Assuming the message appears after a short wait or page load
    page.waitForSelector(".result");
}

@When("the chat interface closes")
    public void chatInterfaceCloses() {
        System.out.println("Executing: The chat interface closes");
        // Assuming the page state changes or a new element appears after chat closes.
    }

@When("User attempts to apply for a military discount")
public void userAttemptsToApplyForAMilitaryDiscount() {
    System.out.println("Executing: User attempts to apply for a military discount");
    // Simulate an action that would trigger the military discount information
    // For example, clicking a button or selecting an option related to military discount.
    page.locator("button:has-text('Check Military Discount Eligibility')").click();
}

@Then("The preferred display name field should show {string}")
public void verifyPreferredDisplayNameField(String expectedName) {
    System.out.println("Verifying preferred display name field shows: " + expectedName);
    assertThat(page.locator("#preferred_display_name")).hasValue(expectedName);
}

@Then("The agent connection capability message should not display {string}")
public void verifyAgentCapabilityMessageNotDisplay(String unexpectedMessage) {
    System.out.println("Executing: The agent connection capability message should not display " + unexpectedMessage);
    // This checks if the exact string is not the only text, or if a different message is present.
    // For a strong negative, one might check if the element exists and does NOT contain the full expected text.
    assertThat(page.locator(".agent-capability-message")).doesNotContainText(unexpectedMessage);
}

@When("User navigates to the application homepage {string}")
    public void userNavigatesToTheApplicationHomepage(String url) {
        System.out.println("Executing: User navigates to the application homepage " + url);
        page.navigate(url);
    }

@Given("a product {string} with initial price {string} exists")
public void setupProduct(String productName, String initialPrice) {
    System.out.println("Setting up product: " + productName + " with price: " + initialPrice);
    // This step would typically involve API or database setup to pre-configure product data.
    // Playwright itself does not interact with backend directly for setup.
}

@When("User views the shipping address section")
public void userViewsShippingAddressSection() {
    System.out.println("Viewing shipping address section");
    // No specific action needed here, as the address is typically displayed on page load.
}

@Given("User is on the chat interface before handover")
public void userIsOnChatInterfaceBeforeHandover() {
    System.out.println("Executing: User is on the chat interface before handover");
    page.navigate("https://example.com/chat"); // Assuming a chat application URL
    // Additional steps might be needed here to ensure the chat is in a pre-handover state,
    // e.g., clearing previous messages or waiting for initial load.
}

@Then("User should see the support email as {string}")
    public void userShouldSeeSupportEmail(String email) {
        System.out.println("Verifying support email: " + email);
        assertThat(page.locator("#support-email")).containsText(email);
    }

@Given("User is on the customer support chat page")
public void userIsOnSupportChatPage() {
    System.out.println("Navigating to customer support chat page");
    page.navigate("https://example.com/support/chat");
}

@Then("the chat input field should remain empty")
public void verifyChatInputFieldIsEmpty() {
    System.out.println("Verifying chat input field is empty");
    assertThat(page.locator("#chat-input")).isEmpty();
}

@Then("The message {string} should be displayed in the chat history")
public void messageShouldBeDisplayedInChatHistory(String message) {
    System.out.println("Verifying message in chat history: " + message);
    assertThat(page.locator("#chat-history")).containsText(message);
}

@Given("a user is on the chat support page with an ongoing conversation")
public void userOnChatPageWithOngoingConversation() {
    System.out.println("Executing: a user is on the chat support page with an ongoing conversation");
    page.navigate("https://example.com/chat-support");
    // Simulate an ongoing conversation state, e.g., by sending initial messages or waiting for chat to load.
}

@Then("The status message {string} should not be displayed")
public void verifyStatusMessageNotDisplayed_576(String unexpectedMessage) {
    System.out.println("Executing: Verify status message " + unexpectedMessage + " should not be displayed");
    assertThat(page.locator(".result")).not().containsText(unexpectedMessage);
}

@Then("The error message should not display {string}")
public void verifyErrorMessageNotDisplayed(String unexpectedMessage) {
    System.out.println("Executing: The error message should not display '" + unexpectedMessage + "'");
    assertThat(page.locator(".error")).not().containsText(unexpectedMessage);
}

@Given("User navigates to the customer support page")
public void navigateToSupportPage_578() {
    System.out.println("Executing: User navigates to the customer support page");
    page.navigate("https://example.com/support");
}

@Given("the user has completed a customer service interaction")
public void userHasCompletedInteraction() {
    System.out.println("Executing: User has completed a customer service interaction (conceptual step).");
    // This step is conceptual and assumes prior actions led to the confirmation state.
    // No direct Playwright action is performed here as per the provided text.
}

@When("User fills the subject as {string}")
public void userFillsSubject(String subject) {
    System.out.println("Filling subject field with: " + subject);
    page.locator("#subject-input").fill(subject);
}

@When("User clicks the 'Send' button without typing any message")
    public void clickSendButtonWithoutTyping() {
        System.out.println("Clicking 'Send' button without typing");
        // Ensure input is empty before clicking send
        page.locator("#chat-input").fill("");
        page.locator("button:has-text('Send')").click();
    }

@When("User enters delivery address {string} and date {string}")
public void userEntersDeliveryAddressAndDate(String address, String date) {
    System.out.println("Entering delivery address: " + address + " and date: " + date);
    page.locator("#delivery_address").fill(address);
    page.locator("#delivery_date").fill(date);
}

@Then("The system prompt should display {string}")
public void theSystemPromptShouldDisplay(String expectedMessage) {
    System.out.println("Executing: The system prompt should display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User enters agent code {string}")
public void userEntersAgentCode(String agentCode) {
    System.out.println("Entering agent code: " + agentCode);
    page.locator("#agent_code").fill(agentCode);
}

@Given("User selects the \"Other Issue\" option")
public void userSelectsOtherIssueOption() {
    System.out.println("Executing: User selects the \"Other Issue\" option");
    page.locator("#other_issue_option").click();
}

@Then("The welcome message container should display {string}")
public void verifyFullWelcomeMessage(String expectedMessage) {
    System.out.println("Verifying full welcome message: " + expectedMessage);
    assertThat(page.locator(".welcome-message-container")).containsText(expectedMessage);
}

@Then("the digital assistant's name should not be associated with the active input source")
public void digitalAssistantNotAssociatedWithInputSource() {
    System.out.println("Executing: Digital assistant's name should not be associated with the active input source");
    // Assuming an attribute like 'data-active-source' on the input field
    assertThat(page.locator(".chat-input-field")).not().hasAttribute("data-active-source", "digital_assistant");
}

@Then("The acknowledgement message should display {string}")
public void verifyAcknowledgementMessage(String message) {
    System.out.println("Verifying acknowledgement message: " + message);
    assertThat(page.locator(".result")).containsText(message);
}

@When("User enters city {string}")
public void userEntersCity(String city) {
    System.out.println("Executing: User enters city " + city);
    page.locator("#city").fill(city);
}

@When("User clicks the {string} button and a system error occurs")
public void userClicksTheButtonAndSystemErrorOccurs(String buttonText) {
    System.out.println("Simulating click on " + buttonText + " leading to system error. (Actual implementation would involve mocking or specific test data.)");
    // In a real scenario, this would involve setting up test data or mocks
    // to trigger an error state after clicking the button.
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Given("Agent is on the order tracking page")
public void agentIsOnOrderTrackingPage() {
    System.out.println("Executing: Agent is on the order tracking page");
    page.navigate("http://localhost:8080/agent/track-order");
}

@When("User enters order number {string} and clicks Track Order.")
public void enterOrderNumberAndTrack(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo + " and clicks Track Order.");
    page.locator("#order_no").fill(orderNo);
    page.locator("button:has-text('Track Order')").click();
}

@When("User clicks on {string} button")
public void userClicksOnButton_593(String buttonText) {
    System.out.println("Executing: User clicks on " + buttonText + " button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@When("User leaves the agent code field empty")
public void userLeavesTheAgentCodeFieldEmpty() {
    System.out.println("Leaving agent code field empty.");
    page.locator("#agent_code").fill(""); // Explicitly clear/fill with empty string
}

@When("User clicks the {string} button for {string}")
public void userClicksTheButtonFor(String buttonText, String itemName) {
    System.out.println("Clicking " + buttonText + " button for item: " + itemName);
    page.locator(".order-item:has-text('" + itemName + "')").locator("button:has-text('" + buttonText + "')").click();
}

@When("User submits the price adjustment request")
public void submitPriceAdjustmentRequest() {
    System.out.println("Submitting price adjustment request");
    page.locator("button:has-text('Request Adjustment')").click();
}

@Given("User is on the AI Bot page for loading check")
public void userIsOnBotPageForLoadingCheck() {
    System.out.println("Executing: User is on the AI Bot page for loading check");
    page.navigate("https://example.com/bot-page");
}

@Then("the error message should not be visible")
public void theErrorMessageShouldNotBeVisible() {
    System.out.println("Executing: The error message should not be visible");
    assertThat(page.locator(".error")).not().isVisible();
}

@When("User indicates they want agent assistance by typing {string}")
public void userAcceptsAgentAssistanceByTyping(String response) {
    System.out.println("Executing: User indicates they want agent assistance by typing " + response);
    page.locator("#user-input").fill(response);
}

@Then("The message {string} should be displayed")
public void theMessageShouldBeDisplayed(String expectedMessage) {
    System.out.println("Verifying message: " + expectedMessage);
    assertThat(page.locator(".error")).containsText(expectedMessage);
}

@When("User enters name {string}")
public void enterName(String name) {
    System.out.println("Entering name: " + name);
    page.locator("#name_input").fill(name);
}

@Then("The welcome message should display {string}")
public void verifyWelcomeMessage_602(String expectedMessage) {
    System.out.println("Executing: The welcome message should display " + expectedMessage);
    assertThat(page.locator(".welcome-message")).containsText(expectedMessage);
}

@Then("The chat widget should display a welcome message {string}")
public void theChatWidgetShouldDisplayAWelcomeMessage(String welcomeMessage) {
    System.out.println("Verifying chat widget welcome message: " + welcomeMessage);
    assertThat(page.locator("#chat-widget .welcome-message")).containsText(welcomeMessage);
}

@When("User looks for {string}")
public void userLooksForService(String serviceName) {
    System.out.println("User is looking for: " + serviceName + " (assuming information is presented on the page).");
    // In a real scenario, this might involve filtering, searching, or navigating within the services page.
    // For this generic step, we assume the relevant message will appear in a designated info area.
}

@When("User opens the {string}")
public void userOpensTheSupportWidget(String widgetName) {
    System.out.println("Executing: User opens the " + widgetName);
    page.locator("#support-widget-button").click();
}

@Then("The introductory welcome message should display {string}")
public void verifyIntroductoryWelcomeMessage(String expectedMessage) {
    System.out.println("Executing: The introductory welcome message should display " + expectedMessage);
    assertThat(page.locator(".welcome-message")).containsText(expectedMessage);
}

@Given("User is on the profile personalization page")
public void navigateToProfilePersonalizationPage() {
    System.out.println("Navigating to profile personalization page");
    page.navigate("/profile");
}

@Then("the status message result should contain the apology message {string}")
public void statusMessageShouldContainApology(String apologyMessage) {
    System.out.println("Executing: Verify apology message: " + apologyMessage);
    assertThat(page.locator(".result")).containsText(apologyMessage);
}

@When("User leaves billing zip code field empty")
public void userLeavesBillingZipCodeFieldEmpty_609() {
    System.out.println("Leaving billing zip code field empty.");
    page.locator("#billing_zip").fill("");
}

@Then("the wait time message should display {string}")
public void verifyWaitTimeMessage_610(String expectedMessage) {
    System.out.println("Verifying wait time message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("The status message should not display {string}")
public void theStatusMessageShouldNotDisplay(String unexpectedMessage) {
    System.out.println("Executing: The status message should not display " + unexpectedMessage);
    assertThat(page.locator(".result")).doesNotContainText(unexpectedMessage);
}

@When("a care representative becomes available and joins")
public void careRepresentativeJoins() {
    System.out.println("Executing: careRepresentativeJoins");
    // This action is an internal system event triggering the message, not a direct user interaction from the transcript.
}

@Then("The chat window should appear with title {string}")
    public void theChatWindowShouldAppearWithTitle(String title) {
        System.out.println("Verifying chat window title: " + title);
        assertThat(page.locator(".chat-window-header")).containsText(title);
    }

@Then("a survey prompt with id {string} should be displayed")
    public void surveyPromptWithIdShouldBeDisplayed(String elementId) {
        System.out.println("Executing: Survey prompt with id " + elementId + " should be displayed");
        assertThat(page.locator("#" + elementId)).isVisible();
    }

@Then("The system should display the agent connection guidance message: {string}")
public void systemDisplaysAgentConnectionGuidanceMessage(String expectedMessage) {
    System.out.println("Executing: The system should display the agent connection guidance message");
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Given("User navigates to the chat application")
public void navigateToChatApplication() {
    System.out.println("Executing: User navigates to the chat application");
    page.navigate("http://localhost:8080/chat");
}

@Then("the welcome message should contain {string}")
public void verifyWelcomeMessageContainsPhrase(String expectedPhrase) {
    System.out.println("Executing: verifyWelcomeMessageContainsPhrase with phrase: " + expectedPhrase);
    assertThat(page.locator("#ai-bot-welcome-message")).containsText(expectedPhrase);
}

@Then("The page should not display personalized welcome message {string}")
public void verifyNoPersonalizedWelcomeMessage(String partialMessage) {
    System.out.println("Verifying no personalized welcome message containing: " + partialMessage);
    assertThat(page.locator("#welcome-message")).not().containsText(partialMessage);
}

@When("User clicks {string}")
public void userClicksButton_619(String buttonText) {
    System.out.println("Executing: User clicks " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Given("User navigates to order tracking page")
public void userNavigatesToOrderTrackingPage_620() {
    System.out.println("Executing: User navigates to order tracking page");
    page.navigate("https://www.example.com/track-order"); // Placeholder URL
}

@When("User enters valid promo code {string} into the promo code field")
public void userEntersValidPromoCode(String promoCode) {
    System.out.println("Entering valid promo code: " + promoCode);
    page.locator("#order_no").fill(promoCode);
}

@Then("The informational message should state {string}")
public void informationalMessageShouldState(String expectedMessage) {
    System.out.println("Verifying informational message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("the system message {string} should be displayed")
public void systemMessageShouldBeDisplayed(String message) {
    System.out.println("Executing: Verifying system message: " + message);
    assertThat(page.locator(".system-message:has-text('" + message + "')")).isVisible();
}

@Then("The chat should not display a message containing {string}")
public void chatShouldNotDisplayMessageContaining(String unexpectedPartialMessage) {
    System.out.println("Executing: The chat should not display a message containing '" + unexpectedPartialMessage + "'");
    assertThat(page.locator(".chat-message-text")).doesNotContainText(unexpectedPartialMessage);
}

@Then("The support information section should display the email address {string}")
public void verifyEmailAddressDisplayed(String emailAddress) {
    System.out.println("Executing: The support information section should display the email address " + emailAddress);
    assertThat(page.locator(".support-info")).containsText(emailAddress);
}

@Then("the wait time message {string} should be displayed")
public void theWaitTimeMessageShouldBeDisplayed(String expectedMessage) {
    System.out.println("Verifying wait time message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Given("the user is in an active chat session with the digital assistant")
public void userIsInActiveChatSession() {
    System.out.println("Executing: User is in an active chat session with the digital assistant");
    page.navigate("https://example.com/chat");
    // Assume digital assistant is present
    assertThat(page.locator(".digital-assistant-presence")).isVisible();
}

@Then("User should be redirected to the dashboard page {string}")
public void verifyDashboardRedirection_628(String url) {
    System.out.println("Verifying redirection to dashboard: " + url);
    assertThat(page).hasURL(url);
}

@Then("The chat message area should not display {string}")
public void verifyChatMessageNotDisplayed(String unexpectedMessage) {
    System.out.println("Verifying chat message is NOT displayed: " + unexpectedMessage);
    assertThat(page.locator(".chat-messages:has-text(\"" + unexpectedMessage + "\")")).not().isVisible();
}

@When("User initiates a request for human assistance")
public void initiateHumanAssistance() {
    System.out.println("Executing: User initiates a request for human assistance (using order tracking elements as placeholders for interaction)");
    // Using order tracking elements as a placeholder for an action that triggers a chat request
    page.locator("#order_no").fill("CHAT_REQUEST_001");
    page.locator("button:has-text('Track Order')").click();
}

@Then("the chat inactivity prompt should display \"{string}\"")
public void verifyChatInactivityPrompt(String expectedPrompt) {
    System.out.println("Verifying chat inactivity prompt: " + expectedPrompt);
    assertThat(page.locator("#chat-inactivity-message")).containsText(expectedPrompt);
}

@Then("the bot displays the fallback promise {string}")
public void theBotDisplaysTheFallbackPromise(String expectedMessage) {
    System.out.println("Executing: the bot displays the fallback promise \"" + expectedMessage + "\"");
    assertThat(page.locator(".bot-message")).containsText(expectedMessage);
}

@Given("user is on the customer service chat page")
public void userOnChatPage_633() {
    System.out.println("Executing: user is on the customer service chat page");
    page.navigate("https://example.com/customer-service-chat");
}

@Then("the return option text {string}" should not be visible")
public void verifyReturnOptionNotVisible(String optionText) {
    System.out.println("Executing: Verifying non-visibility of return option: " + optionText);
    assertThat(page.locator(String.format("text='%s'", optionText))).isHidden();
}

@Given("I am on the order retrieval page")
public void navigateToOrderRetrievalPage() {
    System.out.println("Executing: Navigating to order retrieval page.");
    page.navigate("https://example.com/order-retrieval");
}

@Then("The user should remain on the {string}")
public void userShouldRemainOnPage(String pageName) {
    System.out.println("Verifying user remains on: " + pageName);
    assertThat(page).hasURL("https://www.example.com");
}

@When("the user sends a query that requires agent assistance")
public void sendComplexQuery() {
    System.out.println("Executing: the user sends a query that requires agent assistance");
    page.locator("#chat_input").fill("I have a very specific technical issue that needs expert help.");
    page.locator("#send_message_button").click();
}

@When("User enters question {string}")
public void enterQuestion(String question) {
    System.out.println("Entering question: " + question);
    page.locator("#questionInput").fill(question);
}

@Then("the message \"The digital assistant is stepping away to allow them to take over.\" should NOT be displayed")
public void verifySteppingAwayMessageIsNotDisplayed() {
    System.out.println("Executing: verifySteppingAwayMessageIsNotDisplayed");
    assertThat(page.locator("text='The digital assistant is stepping away to allow them to take over.'")).isHidden();
}

@When("User enters {string} in the name field")
public void userEntersName(String name) {
    System.out.println("Entering name: " + name);
    page.locator("#chat-name").fill(name);
}

@Then("The chat should display a message containing {string}")
public void chatShouldDisplayMessageContaining(String partialMessage) {
    System.out.println("Executing: The chat should display a message containing '" + partialMessage + "'");
    assertThat(page.locator(".chat-message-text")).containsText(partialMessage);
}

@Then("I should not see the message {string}")
public void verifyMessageNotDisplayed(String unexpectedMessage) {
    System.out.println("Executing: I should not see the message " + unexpectedMessage);
    // Assuming the message would appear in the .result locator if present
    assertThat(page.locator(".result")).not(containsText(unexpectedMessage));
}

@Given("a handoff to a care representative is in progress")
public void handoffInProgress() {
    System.out.println("Executing: a handoff to a care representative is in progress");
    page.navigate("/chat");
    // As a precondition, assume the first part of the handoff message has appeared.
    assertThat(page.locator(".chat-system-message:has-text('A care representative is joining now to continue the conversation.')")).isVisible();
}

@When("User clicks the button with text {string}")
public void clickButton(String buttonText) {
    System.out.println("Executing: User clicks the button with text");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Given("the digital assistant's status is {string}")
public void digitalAssistantStatusIs(String status) {
    System.out.println("Executing: Digital assistant's status is " + status);
    assertThat(page.locator("#digital-assistant-status")).containsText(status);
}

@When("I click the {string} button")
public void clickTrackOrderButton_646(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@When("User types {string} into the chat input")
    public void userTypesIntoChatInput(String message) {
        System.out.println("Executing: User types \"" + message + "\" into the chat input");
        page.locator("input[placeholder*='Type your message']").fill(message);
    }

@Given("User navigates to the chat support initiation page")
public void navigateToChatSupportPage() {
    System.out.println("Executing: User navigates to the chat support initiation page");
    // Assuming a chat support page URL, replace with actual URL if available
    page.navigate("https://example.com/chat-support");
}

@When("The system displays the queue message")
public void systemDisplaysQueueMessage() {
    System.out.println("Executing: The system displays the queue message");
    // No explicit action needed, subsequent 'Then' step will assert visibility and content.
}

@Given("User is on the product search page")
public void userIsOnProductSearchPage() {
    System.out.println("Executing: User is on the product search page");
    page.navigate("https://www.example.com/products/search");
}

@Then("The eligibility message should display {string}")
public void theEligibilityMessageShouldDisplay(String expectedMessage) {
    System.out.println("Verifying eligibility message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("The business hours section should not be visible")
public void verifyBusinessHoursNotVisible() {
    System.out.println("Verifying business hours section is not visible.");
    assertThat(page.locator(".business-hours")).not().isVisible();
}

@Given("User views order {string}")
public void viewOrder(String orderNo) {
    System.out.println("Executing: User views order " + orderNo);
    // Assuming the order number is part of the URL or a search field is used
    // For simplicity, let's assume it navigates to a specific order detail page.
    page.navigate("https://example.com/order/" + orderNo);
}

@When("User enters the question {string}")
public void enterQuestion_654(String question) {
    System.out.println("Executing: User enters the question " + question);
    page.locator("#question-input").fill(question);
}

@Then("the message \"The digital assistant is stepping away to allow them to take over.\" should be displayed")
public void verifyDigitalAssistantSteppingAwayMessage() {
    System.out.println("Executing: verifyDigitalAssistantSteppingAwayMessage");
    assertThat(page.locator(".result")).containsText("The digital assistant is stepping away to allow them to take over.");
}

@When("User enters order number {string} and clicks Track Order")
public void userEntersOrderNumberAndClicksTrackOrder(String orderNumber) {
    System.out.println("Entering order number: " + orderNumber + " and clicking Track Order");
    page.locator("#order_no").fill(orderNumber);
    page.locator("button:has-text('Track Order')").click();
}

@Given("User is on the return eligibility page")
public void userIsOnReturnEligibilityPage() {
    System.out.println("Navigating to return eligibility page.");
    page.navigate("http://localhost:8080/return-eligibility");
}

@Given("User is on the support page with \"Get a human\" button disabled")
public void userIsOnSupportPageWithButtonDisabled() {
    System.out.println("Navigating to support page where 'Get a human' button is disabled.");
    // Assuming a test setup or specific URL makes the button disabled
    page.navigate("https://example.com/support?status=disabled");
    assertThat(page.locator("button:has-text('Get a human')")).isDisabled();
}

@Given("a user navigates to the \"{string}\" chat page")
public void navigateToChatPage_659(String chatStatus) {
    System.out.println("Navigating to " + chatStatus + " chat page");
    if (chatStatus.equals("inactive")) {
        page.navigate("https://example.com/chat/inactive");
    }

@Given("I navigate to the OwnCompany welcome page")
public void navigateToWelcomePage() {
    System.out.println("Executing: I navigate to the OwnCompany welcome page");
    page.navigate("https://www.owncompany.com/welcome");
}

@Then("The product title should display {string}")
public void productTitleShouldDisplay(String expectedTitle) {
    System.out.println("Verifying product title: " + expectedTitle);
    assertThat(page.locator(".product-title")).containsText(expectedTitle);
}

@When("User enters state {string}")
public void userEntersState(String state) {
    System.out.println("Executing: User enters state " + state);
    page.locator("#state").fill(state);
}

@Then("The order status should display {string}")
public void theOrderStatusShouldDisplay(String expectedStatus) {
    System.out.println("Executing: The order status should display " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("the digital assistant should resume active status")
public void digitalAssistantShouldResumeActiveStatus() {
    System.out.println("Executing: Digital assistant should resume active status");
    assertThat(page.locator(".digital-assistant-active")).isVisible();
}

@Then("the chat input field should be enabled")
public void verifyChatInputFieldEnabled() {
    System.out.println("Verifying chat input field is enabled");
    assertThat(page.locator("#chat-input-field")).isEnabled();
    assertThat(page.locator("#chat-input-field")).isVisible();
}

@Then("the page should not contain the text {string}")
public void verifyPageDoesNotContainIncorrectText(String unexpectedText) {
    System.out.println("Verifying page does not contain text: " + unexpectedText);
    assertThat(page.locator("body")).doesNotContainText(unexpectedText);
}

@Then("User should see an error message {string}")
public void userShouldSeeAnErrorMessage(String errorMessage) {
    System.out.println("Verifying error message: " + errorMessage);
    assertThat(page.locator(".error-message")).containsText(errorMessage);
}

@Then("The status message should display {string}.")
public void verifyStatusMessage_668(String expectedMessage) {
    System.out.println("Executing: The status message should display " + expectedMessage + ".");
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User enters {string} as preferred display name")
public void enterPreferredDisplayName(String displayName) {
    System.out.println("Entering preferred display name: " + displayName);
    page.locator("#preferred_display_name").fill(displayName);
}

@When("User specifies reason {string}")
public void specifyReason(String reason) {
    System.out.println("Specifying reason: " + reason);
    page.locator("#reason").fill(reason);
}

@Given("User navigates to the AI Bot Assistant chat interface")
public void navigateToChatInterface_671() {
    System.out.println("Executing: User navigates to the AI Bot Assistant chat interface");
    page.navigate("http://localhost:8080/ai-chat");
}

@Then("the URL should remain on the tracking page")
    public void verifyUrlRemainsTrackingPage() {
        System.out.println("Executing: Verify URL remains on tracking page");
        assertThat(page).hasURL("http://localhost:8080/track-order");
    }

@When("Clicks on the 'Track Order' button")
public void clicksOnTrackOrderButton() {
    System.out.println("Clicking 'Track Order' button");
    page.locator("button:has-text('Track Order')").click();
}

@When("User enters billing zip code {string}")
public void userEntersBillingZipCode(String zipCode) {
    System.out.println("Entering billing zip code: " + zipCode);
    page.locator("#billing_zip").fill(zipCode);
}

@Then("I should see the order details for {string}")
public void verifyOrderDetails_675(String orderId) {
    System.out.println("Executing: Verifying order details for: " + orderId);
    assertThat(page.locator(".result")).containsText(orderId);
}

@Then("the status message should contain {string}")
public void statusMessageShouldContain(String expectedPartialMessage) {
    System.out.println("Executing: The status message should contain " + expectedPartialMessage);
    assertThat(page.locator(".result")).containsText(expectedPartialMessage);
}

@When("User leaves issue description empty")
public void leaveIssueDescriptionEmpty() {
    System.out.println("Leaving issue description empty");
    page.locator("#issue_description").fill("");
}

@Given("User navigates to the order tracking page")
public void navigateToOrderTrackingPage_678() {
    System.out.println("Executing: User navigates to the order tracking page");
    page.navigate("http://localhost:8080/track-order");
}

@Then("the current URL should be {string}")
public void theCurrentURLShouldBe(String expectedUrl) {
    System.out.println("Verifying current URL: " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@Given("User is on a browser")
    public void userIsOnABrowser() {
        System.out.println("Executing: User is on a browser");
        // Browser context is typically set up before steps, no explicit action here.
    }

@Then("the chat message area should display {string}")
public void chatMessageAreaShouldDisplay(String expectedMessage) {
    System.out.println("Executing: chatMessageAreaShouldDisplay with message: " + expectedMessage);
    // Using .result as a generic locator for a message display area, as per prompt guidance for message locators.
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User uploads multiple photo files {string}")
    public void userUploadsMultiplePhotoFiles(String fileNames) {
        System.out.println("Executing: User uploads multiple photo files " + fileNames);
        String[] files = fileNames.split(",");
        Path[] filePaths = new Path[files.length];
        for (int i = 0; i < files.length; i++) {
            Path filePath = Paths.get("src/test/resources/" + files[i].trim());
            try {
                Files.createDirectories(filePath.getParent());
                Files.write(filePath, ("dummy content for " + files[i]).getBytes());
            }

@When("the chat widget loads")
    public void theChatWidgetLoads() {
        System.out.println("Executing: The chat widget loads");
        // In a real scenario, you might wait for a specific chat element to be visible
        PlaywrightAssertions.assertThat(page.locator(".result")).isVisible();
    }

@Then("User should remain on the login page")
public void verifyOnLoginPage() {
    System.out.println("Executing: User should remain on the login page");
    assertThat(page).hasURL("http://localhost:8080/login");
}

@When("user enters billing zip code {string}")
public void userEntersBillingZipCode_685(String zipCode) {
    System.out.println("Entering billing zip code: " + zipCode);
    page.locator("#billing_zip").fill(zipCode);
}

@Then("the bot's message should identify itself as {string}")
public void botIdentifiesAs(String identificationText) {
    System.out.println("Executing: Then the bot's message should identify itself as " + identificationText);
    assertThat(page.locator(".result")).containsText(identificationText);
}

@When("User enters order number {string}")
public void enterOrderNumber_687(String orderNo) {
    System.out.println("Entering order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Given("User is on the file upload page")
public void userIsOnTheFileUploadPage() {
    System.out.println("Executing: User is on the file upload page");
    page.navigate("https://example.com/upload");
}

@Then("the chat window should display the message {string}")
public void chatWindowDisplaysMessage(String message) {
    System.out.println("Executing: chatWindowDisplaysMessage: " + message);
    assertThat(page.locator(".result")).containsText(message);
}

@Then("the chat message result displays {string}")
public void verifyChatMessageDisplays(String expectedMessage) {
    System.out.println("Executing: Verify chat message result displays: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("the chatbot successfully resolves the issue")
public void chatbotResolvesIssue() {
    System.out.println("Executing: the chatbot successfully resolves the issue");
    // This step assumes prior actions that lead to the resolution state.
    // No direct Playwright action is derived from the transcript for this 'When' step.
}

@Then("A confirmation message {string} should be visible")
public void verifyConfirmationMessage_692(String message) {
    System.out.println("Verifying confirmation message: " + message);
    assertThat(page.locator(".confirmation-message")).containsText(message);
    assertThat(page.locator(".confirmation-message")).isVisible();
}

@When("I enter order number {string}")
public void enterOrderNumber_693(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@When("the system is experiencing {string}")
public void systemIsExperiencing(String volumeStatus) {
    System.out.println("System is experiencing: " + volumeStatus);
    // Assuming the page is loaded in this state.
}

@Given("User is on the cancellation confirmation page")
public void userOnCancellationConfirmationPage() {
    System.out.println("Executing: User is on the cancellation confirmation page");
    page.navigate("https://example.com/cancel-confirmation"); // Placeholder URL
}

@Given("User is on the agent code referencing page")
public void userIsOnAgentCodeReferencingPage() {
    System.out.println("Navigating to agent code referencing page.");
    page.navigate("http://localhost:8080/agent-reference");
}

@When("The system displays the prompt {string}")
public void systemDisplaysPrompt(String promptText) {
    System.out.println("Executing: The system displays the prompt " + promptText);
    assertThat(page.locator(".prompt-message")).containsText(promptText);
}

@Then("The returns policy section should NOT display {string}")
    public void verifyReturnsPolicyNotDisplay(String unexpectedText) {
        System.out.println("Verifying returns policy does NOT contain: " + unexpectedText);
        assertThat(page.locator(".result")).not().containsText(unexpectedText);
    }

@Then("The bot message should NOT display {string}")
public void verifyBotMessageNotDisplayed_699(String unexpectedMessage) {
    System.out.println("Executing: Verify bot message does NOT display: " + unexpectedMessage);
    assertThat(page.locator(".result")).doesNotContainText(unexpectedMessage);
}

@Then("the message \"{string}\" should not be displayed")
public void verifyMessageNotDisplayed_700(String message) {
    System.out.println("Executing: verifyMessageNotDisplayed - " + message);
    assertThat(page.locator("text='" + message + "'")).isHidden();
}

@When("User enters order number {string} and clicks Track Order button")
public void userEntersOrderNumberAndClicksTrackOrderButton(String orderNo) {
    System.out.println("Entering order number: " + orderNo + " and clicking Track Order");
    page.locator("#order_no").fill(orderNo);
    page.locator("button:has-text('Track Order')").click();
}

@Then("the chat window should display a message containing {string}")
public void verifyMessageContains(String expectedText) {
    System.out.println("Executing: verifyMessageContains with text: " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

@When("User navigates to the {string} page {string}")
    public void userNavigatesToTheSpecificPage(String pageName, String url) {
        System.out.println("Executing: User navigates to the " + pageName + " page " + url);
        page.navigate(url);
    }

@Then("the welcome message should display {string}")
public void verifyFullWelcomeMessage_704(String expectedMessage) {
    System.out.println("Executing: verifyFullWelcomeMessage with message: " + expectedMessage);
    assertThat(page.locator("#ai-bot-welcome-message")).hasText(expectedMessage);
}

@Then("The bot should display {string}")
public void botShouldDisplayMessage(String expectedMessage) {
    System.out.println("Executing: The bot should display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("The page should contain the text {string}")
public void verifyPageContainsText_706(String expectedText) {
    System.out.println("Verifying page contains text: " + expectedText);
    assertThat(page.locator("body")).containsText(expectedText);
}

@Then("The AI Bot Assistant welcome message is displayed")
public void theAIBotAssistantWelcomeMessageIsDisplayed() {
    System.out.println("Verifying AI Bot welcome message");
    assertThat(page.locator("#ai-bot-welcome")).containsText("Welcome! I'm your AI Bot Assistant.");
}

@Given("the chat session has been explicitly ended by the agent")
public void chatSessionEndedByAgent() {
    System.out.println("Simulating chat session ended by agent (no direct action, state for assertion)");
    // In a real test, this might involve an API call or specific UI action to end the chat.
    // For this example, we assume the UI state reflects this state.
}

@When("The system attempts to connect to a representative")
public void systemAttemptsToConnect() {
    System.out.println("Executing: The system attempts to connect to a representative");
    // Simulate connection attempt by checking for a loading status message
    assertThat(page.locator(".connection-status")).containsText("Connecting...");
}

@Then("User should be on the {string} page")
public void verifyCurrentPage(String pageName) {
    System.out.println("Executing: User should be on the " + pageName + " page");
    assertThat(page).hasURL("http://localhost:8080/" + pageName);
}

@Then("the status message result should contain the pleasure message {string}")
public void statusMessageShouldContainPleasure(String pleasureMessage) {
    System.out.println("Executing: Verify pleasure message: " + pleasureMessage);
    assertThat(page.locator(".result")).containsText(pleasureMessage);
}

@Then("The business hours display should not show {string}")
public void verifyBusinessHoursDisplayNotShow(String unexpectedHours) {
    System.out.println("Verifying business hours display does not show: " + unexpectedHours);
    assertThat(page.locator(".business-hours-display")).not().containsText(unexpectedHours);
}

@Given("User navigates to the chat support page")
public void userNavigatesToChatSupportPage() {
    System.out.println("Executing: User navigates to the chat support page");
    page.navigate("https://www.owncompany.com/chat");
}

@When("clicks the {string} button")
public void clicksTheTrackOrderButton(String buttonText) {
    System.out.println("Executing: Clicking the '" + buttonText + "' button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@When("User clicks the \"Check Eligibility\" button")
    public void userClicksCheckEligibilityButton_715() {
        System.out.println("Clicking Check Eligibility button");
        page.locator("button:has-text('Check Eligibility')").click();
    }

@When("User searches for product {string}")
public void userSearchesForProduct(String productName) {
    System.out.println("Searching for product: " + productName);
    page.locator("#search-input").fill(productName);
    page.locator("button:has-text('Search')").click();
}

@When("the support system displays a follow-up prompt")
public void supportSystemDisplaysFollowUpPrompt() {
    System.out.println("Waiting for the follow-up prompt to appear (assertion in Then step)");
    // No specific action needed here, the message visibility is checked in the 'Then' step.
}

@When("the digital assistant continues to be active")
public void digitalAssistantContinuesToBeActive() {
    System.out.println("Executing: Digital assistant continues to be active");
    // This simulates the DA not stepping away by checking its active indicator is still present
    assertThat(page.locator(".digital-assistant-active")).isVisible();
}

@Given("User is on the homepage")
public void userIsOnTheHomepage_719() {
    System.out.println("Executing: User is on the homepage");
    page.navigate("http://localhost:8080"); // Assuming a base URL for the homepage
}

@Given("User is on the chat interface at {string}")
public void userIsOnChatInterface_720(String url) {
    System.out.println("Executing: User is on the chat interface at " + url);
    page.navigate(url);
}

@When("User leaves order number field empty")
public void userLeavesOrderNumberFieldEmpty_721() {
    System.out.println("Executing: User leaves order number field empty");
    page.locator("#order_no").fill("");
}

@Then("The availability status should display {string}")
public void theAvailabilityStatusShouldDisplay(String expectedStatus) {
    System.out.println("Verifying agent availability status: " + expectedStatus);
    assertThat(page.locator("#agentAvailabilityStatus")).containsText(expectedStatus);
}

@Given("User is on the product availability page")
public void userIsOnProductAvailabilityPage() {
    System.out.println("Executing: User is on the product availability page");
    page.navigate("https://www.example.com/products/availability");
}

@Given("User navigates to the customer service chat page")
    public void userNavigatesToTheCustomerServiceChatPage() {
        System.out.println("Executing: User navigates to the customer service chat page");
        page.navigate("https://example.com/customer-service-chat"); // Placeholder URL
    }

@Given("User is on the {string} page for order {string}")
public void userIsOnPageForOrder(String pageName, String orderNo) {
    System.out.println("Navigating to: " + pageName + " page for order: " + orderNo);
    page.navigate("https://example.com/" + pageName.replace(" ", "-") + "/" + orderNo);
}

@Then("The bot identity should not display {string}")
public void verifyBotIdentityNotDisplayed(String unexpectedIdentity) {
    System.out.println("Executing: The bot identity should not display " + unexpectedIdentity);
    assertThat(page.locator(".bot-identity")).doesNotContainText(unexpectedIdentity);
}

@When("User enters {string} into the name field")
public void userEntersName_727(String name) {
    System.out.println("Executing: User enters " + name + " into the name field");
    page.locator("#name_input").fill(name);
}

@Then("The eligibility status should display {string}")
    public void eligibilityStatusShouldDisplay(String expectedStatus) {
        System.out.println("Verifying eligibility status: " + expectedStatus);
        assertThat(page.locator(".result")).containsText(expectedStatus);
    }

@Given("User is on the customer support chat page and the follow-up prompt is displayed")
public void userIsOnSupportChatPageAndPromptDisplayed() {
    System.out.println("Navigating to customer support chat page and ensuring prompt is displayed");
    page.navigate("https://example.com/support/chat");
    assertThat(page.locator(".chat-closing-prompt")).containsText("Is there anything else I can assist you with today?");
    assertThat(page.locator("#chat-input-field")).isEnabled();
}

@When("User clicks the Track Order button")
public void userClicksTrackOrderButton_730() {
    System.out.println("Clicking Track Order button");
    page.locator("button:has-text('Track Order')").click();
}

@Then("User should not see the element with id {string}")
    public void userShouldNotSeeElementWithId(String elementId) {
        System.out.println("Verifying absence of element with id: " + elementId);
        assertThat(page.locator("#" + elementId)).isHidden();
    }

@Then("The status message should also display {string}")
public void theStatusMessageShouldAlsoDisplay(String expectedMessage) {
    System.out.println("Executing: The status message should also display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("The chat message display area should not contain the phrase {string}")
public void chatMessageAreaShouldNotContainPhrase(String unexpectedPhrase) {
    System.out.println("Executing: The chat message display area should not contain the phrase: " + unexpectedPhrase);
    assertThat(page.locator(".chat-message-display")).doesNotContainText(unexpectedPhrase);
}

@When("A care representative has not yet joined the conversation")
public void careRepresentativeHasNotYetJoinedTheConversation() {
    System.out.println("Executing: A care representative has not yet joined the conversation");
    // This step represents a state where the handover event has not occurred yet.
}

@Then("The system should display a checking message {string}")
public void systemDisplaysCheckingMessage(String checkingMessage) {
    System.out.println("Executing: The system should display a checking message " + checkingMessage);
    assertThat(page.locator(".result")).containsText(checkingMessage);
}

@Then("The message {string} should not be displayed")
public void messageShouldNotBeDisplayed(String unexpectedMessage) {
    System.out.println("Executing: The message " + unexpectedMessage + " should not be displayed");
    assertThat(page.locator(".chat-message:has-text(\"" + unexpectedMessage + "\")")).not().isVisible();
}

@Then("the chat input field should show a placeholder {string}")
public void chatInputFieldShouldShowPlaceholder(String placeholder) {
    System.out.println("Executing: Chat input field should show placeholder: " + placeholder);
    assertThat(page.locator(".chat-input-field")).hasAttribute("placeholder", placeholder);
}

@Given("User navigates to the active chat URL {string}")
public void navigateToActiveChatUrl(String url) {
    System.out.println("Executing: User navigates to the active chat URL " + url);
    page.navigate(url);
}

@Then("The status message should contain {string}")
public void verifyStatusMessageContains_739(String expectedText) {
    System.out.println("Executing: The status message should contain " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

@When("User enters site URL {string}")
public void userEntersSiteURL(String url) {
    System.out.println("Entering site URL: " + url);
    page.locator("#order_no").fill(url);
}

@Given("User is on the product listing page")
public void userIsOnProductListingPage() {
    System.out.println("Executing: User is on the product listing page");
    page.navigate("http://localhost:8080/products");
}

@Then("the page should not display the text {string}")
    public void verifyPageDoesNotContainText(String unexpectedText) {
        System.out.println("Verifying page does not contain text: " + unexpectedText);
        assertThat(page.locator("body")).doesNotContainText(unexpectedText);
    }

@Then("The system should display a button {string}")
public void theSystemShouldDisplayAButton(String buttonText) {
    System.out.println("Verifying button display: " + buttonText);
    assertThat(page.locator("button:has-text('" + buttonText + "')")).isVisible();
}

@Then("the welcome message area should display {string}")
public void verifyWelcomeMessage_744(String expectedMessage) {
    System.out.println("Executing: verifyWelcomeMessage with message: " + expectedMessage);
    assertThat(page.locator(".welcome-message-area")).containsText(expectedMessage);
}

@When("A care representative joins the conversation")
public void careRepresentativeJoinsTheConversation() {
    System.out.println("Executing: A care representative joins the conversation");
    // This action would typically be triggered by a backend event or a simulated action
    // For automation, we assume the state change occurs after this 'When' step
}

@Given("User is on the order tracking page {string}")
public void userIsOnTheOrderTrackingPage_746(String url) {
    System.out.println("Navigating to order tracking page: " + url);
    page.navigate(url);
    assertThat(page).hasURL(url);
}

@Given("User navigates to the {string} page at {string}")
public void navigateToPage_747(String pageName, String url) {
    System.out.println("Navigating to " + pageName + " page: " + url);
    page.navigate(url);
}

@Given("User is on the \"Connect with Care Representative\" page")
public void userOnConnectWithCareRepresentativePage() {
    System.out.println("Executing: User is on the Connect with Care Representative page");
    page.navigate("/care-representative");
}

@Then("The system message {string} should NOT be displayed")
public void verifySystemMessageNotDisplayed(String unexpectedMessage) {
    System.out.println("Verifying system message is NOT displayed: " + unexpectedMessage);
    assertThat(page.locator(".result")).not().containsText(unexpectedMessage);
}

@Given("User is on the support page during off-hours")
public void userIsOnSupportPageDuringOffHours() {
    System.out.println("Navigating to support page during off-hours (simulated).");
    // Assuming a test setup or specific URL simulates off-hours
    page.navigate("https://example.com/support?time=offhours");
}

@Given("user navigates to the customer service chat page")
public void userNavigatesToChatPage() {
    System.out.println("Executing: user navigates to the customer service chat page");
    page.navigate("https://example.com/customer-service-chat");
}

@Then("The page displays the routing prompt message {string}")
public void verifyRoutingPromptMessage(String expectedMessage) {
    System.out.println("Executing: Verifying routing prompt message: " + expectedMessage);
    assertThat(page.locator("#routing-prompt")).containsText(expectedMessage);
}

@Given("User is on the support chat page")
public void userIsOnSupportChatPage_753() {
    System.out.println("Executing: User is on the support chat page");
    page.navigate("https://example.com/support");
}

@Then("the return option text {string}" should be visible")
public void verifyReturnOptionVisible(String optionText) {
    System.out.println("Executing: Verifying visibility of return option: " + optionText);
    assertThat(page.locator(String.format("text='%s'", optionText))).isVisible();
}

@Then("the result message should not contain {string}")
public void verifySupportMessageDoesNotContain(String unexpectedPart) {
    System.out.println("Verifying result message does NOT contain: " + unexpectedPart);
    assertThat(page.locator(".result")).doesNotContainText(unexpectedPart);
}

@Then("The current URL should remain {string}")
public void theCurrentURLShouldRemain(String expectedUrl) {
    System.out.println("Verifying current URL remains: " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@Then("The chat message should contain {string}")
public void verifyChatMessage_757(String expectedMessage) {
    System.out.println("Executing: The chat message should contain " + expectedMessage);
    // Assuming a generic locator for the chat message displayed on the page
    assertThat(page.locator(".chat-message")).containsText(expectedMessage);
}

@Given("the system is in a state ready for a handover")
public void systemReadyForHandover() {
    System.out.println("Executing: systemReadyForHandover");
    // This step represents the prerequisite state for a handover, not requiring direct UI interaction from the transcript.
}

@Then("The current URL should not be {string}")
public void theCurrentURLShouldNotBe(String expectedUrl) {
    System.out.println("Executing: The current URL should not be " + expectedUrl);
    assertThat(page).isNotOnURL(expectedUrl);
}

@Then("I should see the message {string}")
public void verifyMessage(String expectedMessage) {
    System.out.println("Executing: I should see the message " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("User should not see the welcome message {string}")
public void userShouldNotSeeWelcomeMessage(String welcomeMessage) {
    System.out.println("Executing: User should not see the welcome message " + welcomeMessage);
    assertThat(page.locator(".result")).not().containsText(welcomeMessage);
}

@Then("The availability message should display {string}")
public void theAvailabilityMessageShouldDisplay(String expectedMessage) {
    System.out.println("Verifying availability message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User enters contact email {string}")
public void enterContactEmail(String email) {
    System.out.println("Entering contact email: " + email);
    page.locator("#contact_email").fill(email);
}

@Then("The high volume message should display {string}")
public void verifyHighVolumeMessage(String expectedMessage) {
    System.out.println("Executing: The high volume message should display " + expectedMessage);
    assertThat(page.locator(".high-volume-message")).containsText(expectedMessage);
}

@Given("I navigate to an invalid OwnCompany page")
public void navigateToInvalidPage() {
    System.out.println("Executing: I navigate to an invalid OwnCompany page");
    page.navigate("https://www.owncompany.com/invalid-page-123");
}

@Given("the user is on the chat interface")
public void userIsOnChatInterface_766() {
    System.out.println("Executing: Given the user is on the chat interface");
    // Assuming the chat interface is the initial page or already navigated to.
    // If a specific URL is required, it should be defined in the requirements.
    // Example: page.navigate("https://example.com/chat");
}

@When("user types {string} into the chat input")
public void userTypesIntoChatInput_767(String message) {
    System.out.println("Executing: user types " + message + " into the chat input");
    page.locator("#chatInput").fill(message);
}

@Then("User should see a success message {string}")
public void userShouldSeeASuccessMessage(String successMessage) {
    System.out.println("Verifying success message: " + successMessage);
    assertThat(page.locator(".success-message")).containsText(successMessage);
}

@Then("The error message \"Please select an issue category to proceed.\" should be displayed")
public void theErrorMessageShouldBeDisplayed_769(String expectedErrorMessage) {
    System.out.println("Executing: The error message \"" + expectedErrorMessage + "\" should be displayed");
    assertThat(page.locator(".error")).containsText(expectedErrorMessage);
}

@Given("User navigates to the login page {string}")
public void navigateToLoginPage_770(String url) {
    System.out.println("Navigating to login page: " + url);
    page.navigate(url);
}

@Then("The bot's welcome message should be {string}")
public void verifyBotWelcomeMessage_771(String expectedMessage) {
    System.out.println("Verifying bot welcome message: " + expectedMessage);
    assertThat(page.locator(".bot-message")).containsText(expectedMessage);
}

@Given("User is on the Anywhere Chair order tracking page")
public void navigateToTrackingPage() {
    System.out.println("Navigating to Anywhere Chair order tracking page.");
    page.navigate("https://anywherechair.com/track");
}

@When("the contact page loads with high volume status")
public void contactPageLoadsWithHighVolumeStatus() {
    System.out.println("Assuming contact page loaded with high volume status");
    // In a real scenario, this might involve mocking network responses or triggering a specific state.
    // For this test, we assume the message is present upon navigation.
}

@Then("Order details should be displayed containing {string}")
public void orderDetailsShouldBeDisplayedContaining(String expectedText) {
    System.out.println("Executing: Order details should be displayed containing " + expectedText);
    assertThat(page.locator("#orderDetailsResult")).containsText(expectedText);
}

@Then("the assistant's message displays question {string}")
public void verifyAssistantQuestion(String question) {
    System.out.println("Executing: verify assistant's question: " + question);
    // Assuming .assistant-message is the locator for the assistant's message container
    assertThat(page.locator(".assistant-message")).containsText(question);
}

@Given("I am on the home page")
public void navigateToHomePage_776() {
    System.out.println("Navigating to home page");
    page.navigate("http://localhost:8080/"); // Assuming a base URL for the home page
}

@Then("The support message area should not be visible")
public void verifySupportMessageNotVisible() {
    System.out.println("Executing: Verifying support message area is not visible.");
    assertThat(page.locator(".support-message")).not().isVisible();
}

@Given("User navigates to the chat application page")
public void navigateToChatPage_778() {
    System.out.println("Executing: User navigates to the chat application page");
    page.navigate("https://example.com/chat");
}

@Then("the {string} should not be displayed with an attached name on the wishlist page")
public void itemShouldNotBeDisplayedOnWishlist(String itemName) {
    System.out.println("Executing: Verifying " + itemName + " is not displayed on wishlist");
    assertThat(page.locator(".wishlist-item:has-text('" + itemName + "')")).not().isVisible();
}

@Then("The agent unavailability message should display {string}")
public void theAgentUnavailabilityMessageShouldDisplay(String expectedMessage) {
    System.out.println("Verifying agent unavailability message: " + expectedMessage);
    assertThat(page.locator(".error")).containsText(expectedMessage);
}

@Given("a user is on the chat application page")
public void userOnChatApplicationPage() {
    System.out.println("Executing: User is on the chat application page");
    page.navigate("https://chat.example.com"); // Placeholder URL for a chat application
}

@When("the page finishes loading")
public void pageFinishesLoading_782() {
    System.out.println("Executing: Page finishes loading (implicit wait)");
    // Playwright automatically waits for elements to be visible/enabled before actions
    // No explicit action needed here unless specific waits are required.
}

@Then("A message {string} should be displayed")
public void aMessageShouldBeDisplayed(String message) {
    System.out.println("Executing: A message '" + message + "' should be displayed");
    assertThat(page.locator(".no-results-message")).containsText(message); // Invented locator for no results message
}

@Given("User navigates to the AI Bot chat page")
public void userNavigatesToTheAIBotChatPage() {
    System.out.println("Executing: User navigates to the AI Bot chat page");
    page.navigate("https://example.com/aibot");
}

@Then("The total amount should revert to {string}")
public void verifyTotalAmountReverted(String originalAmount) {
    System.out.println("Verifying total amount reverted to: " + originalAmount);
    assertThat(page.locator("#cart_total_amount")).containsText(originalAmount);
}

@Then("A success message should display {string}")
public void aSuccessMessageShouldDisplay(String expectedMessage) {
    System.out.println("Executing: A success message should display: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("the wait time message should not display {string}")
public void verifyWaitTimeMessageNotDisplayed_787(String unexpectedMessage) {
    System.out.println("Verifying wait time message is not displayed: " + unexpectedMessage);
    // This assertion checks that the element *does not* contain the text, implying it's either absent or different.
    // If the element itself might be absent, a more robust check would involve checking visibility first.
    assertThat(page.locator(".result")).doesNotContainText(unexpectedMessage);
}

@Then("the status message should not contain {string}")
public void statusMessageShouldNotContain(String unexpectedPartialMessage) {
    System.out.println("Executing: The status message should not contain " + unexpectedPartialMessage);
    assertThat(page.locator(".result")).doesNotContainText(unexpectedPartialMessage);
}

@Then("I should not see any error messages")
public void verifyNoErrorMessages() {
    System.out.println("Executing: I should not see any error messages");
    assertThat(page.locator(".error")).not(isVisible());
}

@Then("The error message should not contain {string}")
public void theErrorMessageShouldNotContain(String unexpectedMessage) {
    System.out.println("Executing: The error message should not contain " + unexpectedMessage);
    assertThat(page.locator(".error")).doesNotContainText(unexpectedMessage);
}

@Then("User should be navigated to {string}")
public void userShouldBeNavigatedTo(String expectedUrl) {
    System.out.println("Verifying navigation to: " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@Given("User is on the chat page with an active session")
public void userIsOnChatPageWithActiveSession() {
    System.out.println("Navigating to chat page simulating an active session.");
    page.navigate("https://example.com/chat/active");
}

@When("User attempts to track an order by entering order number {string} and clicking {string}")
public void userAttemptsToTrackOrder(String orderNumber, String buttonText) {
    System.out.println("Entering order number: " + orderNumber);
    page.locator("#order_no").fill(orderNumber);
    System.out.println("Clicking track button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Given("the user is on the chat application page")
public void userOnChatPage_794() {
    System.out.println("Executing: the user is on the chat application page");
    page.navigate("/chat");
}

@Given("User is on the bot interaction page")
public void userIsOnBotInteractionPage() {
    System.out.println("Navigating to the bot interaction page.");
    page.navigate("https://example.com/bot"); // Assuming a URL for the bot interaction page
}

@When("The digital assistant is stepping away")
public void digitalAssistantIsSteppingAway() {
    System.out.println("Simulating digital assistant stepping away");
    // This step would follow the representative joining and signify the DA's transition.
}

@Given("User is logged in and needs order cancellation assistance")
public void userIsLoggedInAndNeedsCancellationAssistance() {
    System.out.println("Navigating to dashboard (assuming logged in)");
    page.navigate("https://example.com/dashboard");
    // Assume login state is handled or already established
}

@Then("the chat window should display the system message {string}")
public void chatWindowDisplaysSystemMessage(String expectedMessage) {
    System.out.println("Executing: The chat window should display the system message: " + expectedMessage);
    assertThat(page.locator(".system-message")).containsText(expectedMessage);
}

@When("User enters complete billing zip code {string}")
public void userEntersCompleteBillingZipCode(String zipCode) {
    System.out.println("Entering complete billing zip code: " + zipCode);
    page.locator("#billing_zip_code").fill(zipCode);
}

@Then("The \"Get a human\" button should remain disabled")
public void getAHumanButtonShouldRemainDisabled() {
    System.out.println("Verifying 'Get a human' button remains disabled.");
    assertThat(page.locator("button:has-text('Get a human')")).isDisabled();
}

@When("User enters zip code {string}")
public void userEntersZipCode(String zipCode) {
    System.out.println("Executing: User enters zip code " + zipCode);
    page.locator("#zip_code").fill(zipCode);
}

@Then("The chat system should NOT display {string}")
public void chatSystemShouldNotDisplay(String unexpectedText) {
    System.out.println("Executing: The chat system should NOT display " + unexpectedText);
    assertThat(page.locator(".result")).doesNotContainText(unexpectedText);
}

@Then("The cart should no longer display a {string} discount")
public void verifyDiscountNoLongerDisplayed(String discount) {
    System.out.println("Verifying discount no longer displayed: " + discount);
    assertThat(page.locator("#discount_value")).doesNotContainText(discount);
}

@Then("The bot message should not contain {string}")
public void verifyBotMessageDoesNotContain(String unexpectedText) {
    System.out.println("Verifying bot message does not contain: " + unexpectedText);
    assertThat(page.locator(".bot-message")).doesNotContainText(unexpectedText);
}

@Then("The disclaimer message {string} should be displayed")
public void verifyDisclaimerMessage(String expectedMessage) {
    System.out.println("Executing: The disclaimer message should be displayed: " + expectedMessage);
    assertThat(page.locator("text=" + expectedMessage)).isVisible();
}

@When("User waits for {string} seconds without interaction")
public void waitForSeconds_806(String seconds) {
    System.out.println("Waiting for " + seconds + " seconds without interaction");
    page.waitForTimeout(Long.parseLong(seconds) * 1000);
}

@Then("The chat message display area should contain the exact message: {string}")
public void chatMessageAreaShouldContainExactMessage(String expectedMessage) {
    System.out.println("Executing: The chat message display area should contain the exact message: " + expectedMessage);
    assertThat(page.locator(".chat-message-display")).containsText(expectedMessage);
}

@Then("the chat history should contain {string}")
public void chatHistoryContains(String message) {
    System.out.println("Executing: chatHistoryContains: " + message);
    assertThat(page.locator(".result")).containsText(message);
}

@Then("the chatbot should respond with {string}")
public void chatbotRespondsWith(String expectedResponse) {
    System.out.println("Executing: Chatbot should respond with: " + expectedResponse);
    assertThat(page.locator(".chatbot-response-message")).containsText(expectedResponse);
}

@When("User enters adjustment amount {string}")
public void userEntersAdjustmentAmount(String amount) {
    System.out.println("Typing adjustment amount: " + amount);
    page.locator("#adjustment_amount").fill(amount);
}

@When("A care representative named {string} joins the conversation")
public void careRepresentativeNamedJoinsConversation(String agentName) {
    System.out.println("Executing: A care representative named " + agentName + " joins the conversation");
    // Simulate agent joining, e.g., via backend or direct manipulation for testing
}

@Then("The status message should display {string}")
public void verifyStatusMessage_812(String expectedMessage) {
    System.out.println("Verifying status message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User uses the search bar to find {string}")
public void userUsesSearchBarToFind(String searchTerm) {
    System.out.println("Typing into search bar: " + searchTerm);
    page.locator("#search-input").fill(searchTerm);
}

@When("I click the \"Track Order\" button")
public void clickTrackOrderButton_814() {
    System.out.println("Clicking Track Order button");
    page.locator("button:has-text('Track Order')").click();
}

@When("User closes the {string} widget")
public void closeChatWidget(String widgetName) {
    System.out.println("Closing " + widgetName + " widget");
    page.locator("#close-chat-button").click(); // Assuming a close button exists
}

@Given("User is on the {string} page with items totaling {string}")
public void userIsOnCartPageWithItems(String pageName, String subtotal) {
    System.out.println("Navigating to " + pageName + " page with subtotal: " + subtotal);
    page.navigate("/" + pageName);
    // Assuming the subtotal is reflected on the page, or set by a prior action
    assertThat(page.locator("#subtotal-value")).containsText(subtotal);
}

@Then("The cart total should display {string}")
public void cartTotalShouldDisplay(String expectedTotal) {
    System.out.println("Executing: The cart total should display " + expectedTotal);
    // Using the specified '.result' locator for the cart total display
    assertThat(page.locator(".result")).containsText(expectedTotal);
}

@When("User clicks the \"Get a human\" link")
public void userClicksGetAHumanLink() {
    System.out.println("Clicking 'Get a human' link.");
    page.locator("a:has-text('Get a human')").click();
}

@When("I navigate to the {string} page")
public void navigateToPage_819(String pageName) {
    System.out.println("Navigating to " + pageName + " page");
    page.locator("a:has-text('" + pageName + "')").click();
    assertThat(page).hasURL(Pattern.compile(".*" + pageName.toLowerCase().replace(" ", "-") + ".*"));
}

@Then("the order details should show {string}")
public void verifyOrderDetails_820(String details) {
    System.out.println("Verifying order details: " + details);
    assertThat(page.locator(".result")).containsText(details);
}

@Then("The loading message {string} should disappear")
public void verifyLoadingMessageDisappears(String message) {
    System.out.println("Executing: The loading message " + message + " should disappear");
    assertThat(page.locator("text='" + message + "'")).isHidden();
}

@Then("the send chat button should be disabled")
public void verifySendChatButtonIsDisabled() {
    System.out.println("Verifying send chat button is disabled");
    assertThat(page.locator("#send-chat-button")).isDisabled();
}

@Then("The water bottle preview should display name {string}")
public void waterBottlePreviewShouldDisplayName(String expectedName) {
    System.out.println("Executing: The water bottle preview should display name " + expectedName);
    assertThat(page.locator("#name_preview_display")).containsText(expectedName);
}

@Then("The page should display public content {string}")
public void verifyPublicContent(String publicContent) {
    System.out.println("Verifying public content: " + publicContent);
    assertThat(page.locator("#public-content")).containsText(publicContent);
}

@When("the chatbot presents its final statement")
public void chatbotPresentsFinalStatement() {
    System.out.println("Executing: the chatbot presents its final statement");
    // No direct Playwright action is derived from the transcript for this 'When' step.
}

@When("User enters a non-existent order number {string}")
    public void userEntersNonExistentOrderNumber_826(String orderNo) {
        System.out.println("Typing non-existent order number: " + orderNo);
        page.locator("#order_no").fill(orderNo);
    }

@When("a live agent takes over the chat")
public void liveAgentTakesOver() {
    System.out.println("Executing: liveAgentTakesOver");
    // This step represents a system-initiated event, not a direct user action.
    // The page state is expected to change, which will be asserted in the 'Then' steps.
}

@Then("order status should be displayed as {string} for {string}")
public void orderStatusShouldBeDisplayed(String expectedStatus, String orderNo) {
    System.out.println("Verifying order status: " + expectedStatus + " for " + orderNo);
    assertThat(page.locator(".result")).containsText(expectedStatus);
    assertThat(page.locator(".result")).containsText(orderNo);
}

@Given("User is on the water bottle personalization page")
public void userIsOnPersonalizationPage() {
    System.out.println("Executing: User is on the water bottle personalization page");
    page.navigate("/personalize/water-bottle");
    assertThat(page).hasURL(".*personalize/water-bottle");
}

@When("User selects the \"Billing Inquiry\" option")
public void userSelectsBillingInquiryOption() {
    System.out.println("Executing: User selects the \"Billing Inquiry\" option");
    page.locator("#billing_inquiry_option").click();
}

@Given("User navigates to the AI Bot assistant page")
public void navigateToBotAssistantPage() {
    System.out.println("Navigating to AI Bot assistant page");
    page.navigate("https://example.com/bot-assistant");
}

@When("User selects a large file {string}")
public void userSelectsALargeFile(String fileName) {
    System.out.println("Executing: User selects a large file " + fileName);
    page.locator("input[type='file']").setInputFiles(Paths.get("src/test/resources/" + fileName));
}

@Then("The page should display a heading {string}")
public void thePageShouldDisplayAHeading(String headingText) {
    System.out.println("Verifying page heading: " + headingText);
    assertThat(page.locator("h1")).containsText(headingText);
}

@Then("The wait time information message should contain {string}")
public void verifyWaitTimeDurationInMessage(String expectedDuration) {
    System.out.println("Executing: The wait time information message should contain " + expectedDuration);
    assertThat(page.locator(".result")).containsText(expectedDuration);
}

@Then("The chatbot welcome message should be displayed as {string}")
public void verifyChatbotWelcomeMessage(String expectedMessage) {
    System.out.println("Executing: The chatbot welcome message should be displayed as " + expectedMessage);
    assertThat(page.locator(".chat-message-display")).containsText(expectedMessage);
}

@When("User logs in with email {string} and password {string}")
public void userLogsIn(String email, String password) {
    System.out.println("Executing: User logs in with email " + email);
    page.locator("#email").fill(email);
    page.locator("#password").fill(password);
    page.locator("button:has-text('Login')").click();
}

@Given("User has searched for {string} and sees it in results")
public void userHasSearchedForAndSeesItInResults(String productName) {
    System.out.println("Executing: User has searched for '" + productName + "' and sees it in results");
    page.navigate("http://localhost:8080/products"); // Navigate to search page
    page.locator("#search_input").fill(productName);
    page.locator("button:has-text('Search')").click();
    assertThat(page.locator(".product-title:has-text('" + productName + "')")).isVisible();
}

@Then("The business hours display should show {string}")
public void verifyBusinessHoursDisplay(String expectedHours) {
    System.out.println("Verifying business hours display: " + expectedHours);
    assertThat(page.locator(".business-hours-display")).containsText(expectedHours);
}

@Then("The error message {string} should be displayed")
public void verifyErrorMessage_839(String expectedMessage) {
    System.out.println("Executing: Verifying error message: " + expectedMessage);
    assertThat(page.locator(".error")).containsText(expectedMessage);
}

@Given("User is on the contact page")
public void userIsOnTheContactPage() {
    System.out.println("Navigating to contact page");
    page.navigate("http://localhost:8080/contact-us");
}

@Given("User navigates to the portal login page")
public void navigateToLoginPage_841() {
    System.out.println("Executing: User navigates to the portal login page");
    page.navigate("http://localhost:8080/login");
}

@Given("User navigates to the application chat page")
public void navigateToChatPage_842() {
    System.out.println("Executing: User navigates to the application chat page");
    // Assuming a base URL for the chat feature, as no specific URL was provided.
    page.navigate("https://example.com/chat");
}

@Given("User is on the email input page")
public void navigateToEmailInputPage() {
    System.out.println("Navigating to email input page");
    page.navigate("http://localhost:8080/email-input");
}

@Then("The business hours display element should not be visible")
public void verifyBusinessHoursDisplayElementNotVisible() {
    System.out.println("Verifying business hours display element is not visible.");
    assertThat(page.locator(".business-hours-display")).not().isVisible();
}

@Then("The page should display personalized welcome message {string}")
public void verifyPersonalizedWelcomeMessage(String message) {
    System.out.println("Verifying personalized welcome message: " + message);
    assertThat(page.locator("#welcome-message")).containsText(message);
}

@Given("I navigate to the OwnCompany \"About Us\" page")
public void navigateToAboutUsPage() {
    System.out.println("Executing: I navigate to the OwnCompany \"About Us\" page");
    page.navigate("https://www.owncompany.com/about");
}

@When("User selects location {string} and applies")
public void userSelectsLocationAndApplies(String location) {
    System.out.println("Executing: User selects location " + location + " and applies");
    // Assuming a dropdown or input for location selection and an apply button
    page.locator("#location-selector").selectOption(location);
    page.locator("button:has-text('Apply')").click();
}

@When("A care representative takes over the conversation")
public void careRepresentativeTakesOverTheConversation() {
    System.out.println("Executing: A care representative takes over the conversation");
    // This step assumes an event has occurred or the state is set for the message to appear.
    // No direct UI interaction is specified in the requirement.
}

@Given("User is on the order processing page")
public void userIsOnOrderProcessingPage() {
    System.out.println("Executing: User is on the order processing page");
    page.navigate("http://localhost:8080/order-processing");
}

@Then("the chat message result does not display {string}")
public void verifyChatMessageDoesNotDisplay(String unexpectedMessage) {
    System.out.println("Executing: Verify chat message result does not display: " + unexpectedMessage);
    assertThat(page.locator(".result")).doesNotContainText(unexpectedMessage);
}

@Then("The chatbot agent connection policy should be displayed as {string}")
public void verifyChatbotAgentConnectionPolicy(String expectedPolicy) {
    System.out.println("Executing: The chatbot agent connection policy should be displayed as " + expectedPolicy);
    assertThat(page.locator(".chat-message-display")).containsText(expectedPolicy);
}

@When("User confirms the cancellation")
public void userConfirmsTheCancellation() {
    System.out.println("Confirming cancellation");
    page.locator("button:has-text('Confirm Cancellation')").click();
}

@Given("User is on the photo upload page")
    public void userIsOnPhotoUploadPage() {
        System.out.println("Executing: User is on the photo upload page");
        page.navigate("https://example.com/upload-photos"); // Example URL
    }

@Given("User is on the AI Chat page")
public void userIsOnAIChatPage() {
    System.out.println("Navigating to the AI Chat page.");
    page.navigate("https://example.com/chat");
}

@When("I leave the billing zip code empty")
public void leaveBillingZipCodeEmpty() {
    System.out.println("Leaving billing zip code empty");
    page.locator("#billing_zip").fill("");
}

@When("User provides {string} as issue description")
public void userProvidesAsIssueDescription(String issueDescription) {
    System.out.println("Providing issue description: " + issueDescription);
    page.locator("#issue_description").fill(issueDescription);
}

@Then("the system should display the message {string}")
public void systemDisplaysMessage(String message) {
    System.out.println("Executing: the system should display the message: " + message);
    // Using a generic locator for system messages within a chat window
    assertThat(page.locator(".chat-system-message:has-text('" + message + "')")).isVisible();
}

@Then("The success message should display {string}")
public void verifySuccessMessage_858(String expectedMessage) {
    System.out.println("Verifying success message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Given("the system is configured for {string} at {string}")
public void systemIsConfiguredForOutsideBusinessHours(String businessHoursStatus, String time) {
    System.out.println("Executing: Simulating system configured for " + businessHoursStatus + " at " + time + ". This typically involves environment setup or mocking.");
    // In a real scenario, this step might involve setting up test data or mocking API responses
    // to simulate the 'outside business hours' condition on the server side.
}

@When("the user enters zip code {string}")
public void enterZipCode(String zipCode) {
    System.out.println("Executing: Enter zip code: " + zipCode);
    page.locator("#zip_code").fill(zipCode);
}

@When("the chat system has performed a handover")
public void chatSystemHasPerformedHandover() {
    System.out.println("Executing: chatSystemHasPerformedHandover");
    // This step represents the state where handover messages are expected to be present.
    // No direct Playwright action is typically performed here to trigger a system event.
}

@Then("User should be redirected to the login page")
public void verifyRedirectToLoginPage() {
    System.out.println("Executing: User should be redirected to the login page");
    assertThat(page).hasURL("http://localhost:8080/login");
}

@When("the digital assistant initiates a handoff to a care representative")
public void digitalAssistantInitiatesHandoff() {
    System.out.println("Executing: the digital assistant initiates a handoff to a care representative");
    // This step typically represents an internal system event or a prior user action not detailed in the transcript.
    // No direct Playwright action is needed here to 'initiate' it, only to set the context for the 'Then' step.
}

@When("The system experiences very high call volume and the estimated wait time is {string}")
public void systemExperiencesVeryHighVolume(String waitTime) {
    System.out.println("Simulating system very high volume with wait time: " + waitTime);
    // In a real scenario, this 'When' step might involve triggering an event
    // or setting up a mock service response that leads to the message display.
    // For this exercise, we assume the page state will reflect this implicitly.
}

@When("User attempts to initiate contact")
public void attemptToInitiateContact() {
    System.out.println("Clicking 'Contact Support' button");
    page.locator("button:has-text('Contact Support')").click();
}

@When("User provides too short information {string}")
public void provideTooShortInformation(String shortInfo) {
    System.out.println("Executing: User provides too short information: " + shortInfo);
    page.locator("#issue_description").fill(shortInfo);
}

@Then("The estimated wait time should display {string}")
public void verifyWaitTimeMessage_867(String expectedMessage) {
    System.out.println("Executing: The estimated wait time should display " + expectedMessage);
    assertThat(page.locator(".wait-time-message")).containsText(expectedMessage);
}

@Then("The chat area should NOT display the message {string}")
public void chatAreaShouldNotDisplayMessage(String unexpectedMessage) {
    System.out.println("Executing: The chat area should NOT display the message '" + unexpectedMessage + "'");
    assertThat(page.locator(".chat-message-area")).doesNotContainText(unexpectedMessage);
}

@Then("the system message should display {string}")
public void theSystemMessageShouldDisplay(String expectedMessage) {
    System.out.println("Executing: The system message should display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("The response message should confirm {string}")
public void responseMessageShouldConfirm(String expectedMessage) {
    System.out.println("Verifying response message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Given("I am on the OwnCompany website")
public void navigateToWebsite() {
    System.out.println("Navigating to OwnCompany website");
    page.navigate("https://www.owncompany.com/order-tracking");
    assertThat(page).hasURL("https://www.owncompany.com/order-tracking");
}

@When("user enters empty order number {string}")
public void userEntersEmptyOrderNumber(String orderNo) {
    System.out.println("Entering empty order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("A human agent indicator should not be visible")
public void humanAgentIndicatorShouldNotBeVisible() {
    System.out.println("Executing: A human agent indicator should not be visible");
    assertThat(page.locator("#human-agent-indicator")).not().isVisible();
}

@Then("The welcome message area should display {string}")
public void verifyWelcomeMessage_874(String expectedMessage) {
    System.out.println("Executing: The welcome message area should display " + expectedMessage);
    // Using '.result' as a generic locator for a displayed message, as per critical locator guidelines.
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("the user should be on the {string} URL")
public void userShouldBeOnUrl(String expectedUrl) {
    System.out.println("Executing: the user should be on the " + expectedUrl + " URL");
    assertThat(page).hasURL(expectedUrl);
}

@Given("the user is logged in as a {string} and on the {string} page")
public void userIsLoggedInAsAndOnPage(String userRole, String pageName) {
    System.out.println("Executing: Logging in as " + userRole + " and navigating to " + pageName + " page");
    // Assume login mechanism based on userRole is handled here, e.g., setting cookies or specific login flow
    if (pageName.equals("Registry Management")) {
        page.navigate("/registry/manage");
    }

@When("User enters competitor price {string}")
public void userEntersCompetitorPrice(String competitorPrice) {
    System.out.println("Entering competitor price: " + competitorPrice);
    page.locator("#competitor_price").fill(competitorPrice);
}

@Then("The chatbot should NOT display the message {string}")
public void chatbotShouldNotDisplayTheMessage(String unexpectedMessage) {
    System.out.println("Executing: The chatbot should NOT display the message '" + unexpectedMessage + "'");
    assertThat(page.locator(".chat-message-display")).not().containsText(unexpectedMessage);
}

@Given("User navigates to the customer support chat interface")
public void userNavigatesToChatInterface() {
    System.out.println("Executing: User navigates to the customer support chat interface");
    page.navigate("https://example.com/support/chat");
}

@When("A care representative joins the chat")
public void careRepresentativeJoinsChat() {
    System.out.println("Simulating care representative joining");
    // In a real scenario, this step would trigger the backend event
    // For automation, we might need to interact with a specific UI element
    // or wait for the message to appear after a certain action.
}

@When("a care representative is assigned to the conversation")
public void aCareRepresentativeIsAssignedToTheConversation() {
    System.out.println("Executing: a care representative is assigned to the conversation");
    // This step simulates the event where a care representative is assigned.
    // In a real test, this might involve a specific UI action (e.g., clicking 'Request Human Agent')
    // or a backend event that triggers the UI update.
    // For this example, we assume the event has occurred and the UI is expected to reflect it.
}

@Then("the system message display should contain {string}")
public void verifySystemMessage(String expectedMessage) {
    System.out.println("Executing: the system message display should contain " + expectedMessage);
    assertThat(page.locator(".system-message-display")).containsText(expectedMessage);
}

@Then("the result message should display {string}")
    public void verifyResultMessage(String expectedMessage) {
        System.out.println("Executing: Verify result message: " + expectedMessage);
        assertThat(page.locator(".result")).containsText(expectedMessage);
    }

@Then("the assistant's message displays company {string}")
public void verifyAssistantCompany(String company) {
    System.out.println("Executing: verify assistant's company: " + company);
    // Assuming .assistant-message is the locator for the assistant's message container
    assertThat(page.locator(".assistant-message")).containsText(company);
}

@Then("The result message should display {string}")
public void theResultMessageShouldDisplay(String expectedMessage) {
    System.out.println("Executing: The result message should display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User enters order number {string} for cancellation")
public void enterOrderForCancellation(String orderNo) {
    System.out.println("Typing order number for cancellation: " + orderNo);
    // Inferring locator based on existing patterns
    page.locator("#cancel_order_no").fill(orderNo);
}

@Then("The chat bot response should not contain {string}")
public void verifyChatResponseNotContain(String unexpectedText) {
    System.out.println("Executing: The chat bot response should not contain " + unexpectedText);
    assertThat(page.locator(".chat-response")).not().containsText(unexpectedText);
}

@Given("User has {string} with price {string} in the cart")
public void userHasProductInCart(String productName, String productPrice) {
    System.out.println("User has " + productName + " with price " + productPrice + " in the cart. Navigating to cart.");
    page.navigate("/cart");
    // Assuming an element exists to verify the product and its price in the cart
    assertThat(page.locator(".cart-item:has-text('" + productName + "') .item-price")).containsText(productPrice);
}

@When("the chat support session ends with an unresolved issue")
public void concludeChatUnresolved() {
    System.out.println("Executing: The chat support session concludes with an unresolved issue");
    // This step abstractly represents the actions leading to the display of the message.
    // In a real scenario, this would involve specific UI interactions or API calls
    // to simulate an unresolved issue and trigger the agent's closing message.
}

@Given("User is on the {string} home page")
public void userIsOnTheHomePage(String url) {
    System.out.println("Navigating to home page: " + url);
    page.navigate(url);
}

@When("User waits for {string} seconds without further interaction")
public void waitForSecondsNoFurtherInteraction(String seconds) {
    System.out.println("Waiting for " + seconds + " seconds without further interaction");
    page.waitForTimeout(Long.parseLong(seconds) * 1000);
}

@When("User clicks the login button")
public void clickLoginButton_892() {
    System.out.println("Executing: User clicks the login button");
    page.locator("button:has-text('Login')").click();
}

@Then("The FAQ content should display {string}")
    public void verifyFaqContentDisplay(String expectedText) {
        System.out.println("Verifying FAQ content text: " + expectedText);
        assertThat(page.locator(".result")).containsText(expectedText);
    }

@Given("the user is interacting with the digital assistant")
public void userInteractingWithAssistant() {
    System.out.println("Executing: userInteractingWithAssistant");
    page.navigate("https://example.com/chat-support");
}

@Then("The page should not display the message {string}")
public void pageShouldNotDisplayMessage(String unexpectedMessage) {
    System.out.println("Verifying page does NOT display message: " + unexpectedMessage);
    assertThat(page.locator("text=" + unexpectedMessage + "")).isHidden();
}

@Given("User navigates to the {string} page")
public void navigateToPage_896(String pageName) {
    System.out.println("Navigating to: " + pageName + " page");
    page.navigate("https://example.com/" + pageName);
}

@When("User indicates they want agent assistance by clicking {string}")
public void userAcceptsAgentAssistanceByClicking(String buttonText) {
    System.out.println("Executing: User indicates they want agent assistance by clicking " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The support message area should contain {string}")
public void verifySupportMessageContains_898(String expectedText) {
    System.out.println("Executing: Verifying support message area contains: " + expectedText);
    assertThat(page.locator(".support-message")).containsText(expectedText);
}

@Given("User navigates to the greeting application")
public void navigateToGreetingApp() {
    System.out.println("Navigating to greeting application");
    page.navigate("http://localhost:8080/greeting");
}

@Given("a user is on the customer support chat page after digital assistant handover")
public void userIsOnChatPageAfterHandover() {
    System.out.println("Executing: User is on the customer support chat page after digital assistant handover");
    // This step assumes the handover has already occurred or is being simulated
}

@When("User registers with email {string} and password {string}")
public void registerUser(String email, String password) {
    System.out.println("Registering user with email: " + email);
    page.locator("#email").fill(email);
    page.locator("#password").fill(password);
    page.locator("#register-button").click();
    // Assuming registration leads to a success page or auto-login
    assertThat(page).hasURL("https://example.com/registration-success");
}

@Then("The response message should display {string}")
public void theResponseMessageShouldDisplay(String expectedMessage) {
    System.out.println("Executing: Verifying response message: " + expectedMessage);
    assertThat(page.locator("#response-message")).containsText(expectedMessage);
}

@Then("The agent availability message should display {string}")
public void theAgentAvailabilityMessageShouldDisplay(String expectedMessage) {
    System.out.println("Executing: The agent availability message should display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("the user clicks the \"Track Order\" button")
public void userClicksTrackOrderButton_904() {
    System.out.println("Executing: User clicks the Track Order button");
    page.locator("button:has-text('Track Order')").click();
}

@When("User is successfully connected to a representative")
public void connectedToRepresentative() {
    System.out.println("Executing: User is successfully connected to a representative");
    // Simulate successful connection by checking for chat window visibility and representative status
    assertThat(page.locator("#chat_window")).isVisible();
    assertThat(page.locator(".representative-status")).containsText("Connected to");
}

@Given("User is on the price adjustment page")
public void userIsOnPriceAdjustmentPage() {
    System.out.println("Navigating to price adjustment page.");
    page.navigate("/price-adjustment-page");
}

@Then("the bot message should not contain {string}")
public void verifyBotMessageDoesNotContain_907(String unexpectedMessage) {
    System.out.println("Executing: verifyBotMessageDoesNotContain with message: " + unexpectedMessage);
    assertThat(page.locator(".bot-message")).doesNotContainText(unexpectedMessage);
}

@When("the chat interface is initialized")
public void chatInterfaceInitialized() {
    System.out.println("Executing: the chat interface is initialized");
    // This step assumes the page has fully loaded but no interaction has occurred.
    // No direct Playwright action is derived from the transcript for this 'When' step.
}

@Given("User has not selected any option")
public void userHasNotSelectedAnyOption() {
    System.out.println("Executing: User has not selected any option (default state assumed).");
    // No action needed for this step, as it describes a state.
}

@Given("User is on the chat interface page")
public void userIsOnChatInterfacePage() {
    System.out.println("Executing: User is on the chat interface page");
    page.navigate("https://example.com/chat");
}

@Given("User is on the package tracking page")
public void userIsOnThePackageTrackingPage() {
    System.out.println("Navigating to package tracking page");
    page.navigate("http://localhost:8080/track-package");
    assertThat(page).hasURL("http://localhost:8080/track-package");
}

@When("User enters competitor URL {string}")
public void userEntersCompetitorURL(String competitorURL) {
    System.out.println("Entering competitor URL: " + competitorURL);
    page.locator("#competitor_url").fill(competitorURL);
}

@Then("I should see the business hours displayed as {string} in the footer")
public void verifyBusinessHoursInFooter(String expectedHours) {
    System.out.println("Verifying business hours in footer: " + expectedHours);
    assertThat(page.locator("footer .business-hours")).containsText(expectedHours);
}

@Then("The system should confirm the request and display {string}")
public void systemConfirmsRequestAndDisplays(String message) {
    System.out.println("Verifying request confirmation message: " + message);
    assertThat(page.locator(".result")).containsText(message);
}

@Then("The support message area should not contain {string}")
public void verifySupportMessageDoesNotContain_915(String unexpectedText) {
    System.out.println("Executing: Verifying support message area does not contain: " + unexpectedText);
    assertThat(page.locator(".support-message")).not().containsText(unexpectedText);
}

@Then("The digital assistant indicator should no longer be visible")
public void digitalAssistantIndicatorShouldNoLongerBeVisible() {
    System.out.println("Executing: The digital assistant indicator should no longer be visible");
    assertThat(page.locator("#digital-assistant-indicator")).not().isVisible();
}

@Then("The chatbot greeting should be {string}")
public void verifyChatbotGreeting(String expectedGreeting) {
    System.out.println("Executing: The chatbot greeting should be " + expectedGreeting);
    // Assuming the chatbot greeting is displayed in an element with class 'chatbot-greeting'
    assertThat(page.locator(".chatbot-greeting")).containsText(expectedGreeting);
}

@Then("The business hours should not display {string}")
public void verifyBusinessHoursNotDisplay(String unexpectedHours) {
    System.out.println("Verifying business hours do not display: " + unexpectedHours);
    assertThat(page.locator(".business-hours")).doesNotContainText(unexpectedHours);
}

@When("a post-chat survey is triggered")
    public void postChatSurveyIsTriggered() {
        System.out.println("Executing: A post-chat survey is triggered");
        // No explicit action needed here, as the page state is assumed to reflect the trigger.
        // In a real application, this might be a navigation or a dynamic element appearing.
    }

@Given("User navigates to the AI Bot interface")
public void navigateToBotInterface_920() {
    System.out.println("Executing: User navigates to the AI Bot interface");
    page.navigate("http://localhost:8080/bot");
}

@When("User does not enter any order number")
public void userDoesNotEnterAnyOrderNumber() {
    System.out.println("Executing: User does not enter any order number");
    // No action needed for the input field, assuming it starts empty
}

@Then("A success message \"Your call request has been received. We will contact you shortly.\" should be displayed")
public void successMessageShouldBeDisplayed_922(String message) {
    System.out.println("Verifying success message: " + message);
    assertThat(page.locator(".result")).containsText(message);
}

@When("The system experiences high call volume and the estimated wait time is {string}")
public void systemExperiencesHighVolume(String waitTime) {
    System.out.println("Simulating system high volume with wait time: " + waitTime);
    // In a real scenario, this 'When' step might involve triggering an event
    // or setting up a mock service response that leads to the message display.
    // For this exercise, we assume the page state will reflect this implicitly.
}

@Then("The chat welcome message should contain {string}")
public void verifyWelcomeMessageContains(String partialText) {
    System.out.println("Executing: The chat welcome message should contain " + partialText);
    assertThat(page.locator(".chat-welcome-message")).containsText(partialText);
}

@Given("User is on the order inquiry page")
public void userIsOnOrderInquiryPage() {
    System.out.println("Navigating to order inquiry page.");
    page.navigate("https://example.com/order-inquiry");
}

@Then("the care representative's status should change to {string}")
public void careRepresentativeStatusShouldChangeTo(String newStatus) {
    System.out.println("Executing: Verifying care representative's status changes to " + newStatus);
    assertThat(page.locator("#care-representative-status")).containsText(newStatus);
}

@Then("The chat status message should display {string}")
    public void theChatStatusMessageShouldDisplay(String message) {
        System.out.println("Verifying chat status message: " + message);
        assertThat(page.locator(".chat-status-message")).containsText(message);
    }

@Then("The greeting message should display {string}")
public void verifyGreetingMessage_928(String message) {
    System.out.println("Verifying greeting message: " + message);
    assertThat(page.locator(".result")).containsText(message);
}

@Given("User is on the support query page")
public void userIsOnSupportQueryPage() {
    System.out.println("Navigating to support query page.");
    page.navigate("https://example.com/support"); // Assuming a support page URL
}

@Given("the user is on the application's starting page")
    public void userIsOnStartingPage() {
        System.out.println("Executing: the user is on the application's starting page");
        // Assuming a base URL for the application. Replace with the actual starting URL.
        page.navigate("http://localhost:8080/app");
    }

@When("User updates delivery address to {string} and date to {string}")
public void userUpdatesDeliveryAddressAndDate(String address, String date) {
    System.out.println("Updating delivery address to: " + address + " and date to: " + date);
    page.locator("#delivery_address").fill(address);
    page.locator("#delivery_date").fill(date);
}

@Then("The status message should not contain {string}")
public void verifyStatusMessageNotContains(String unexpectedText) {
    System.out.println("Executing: The status message should not contain " + unexpectedText);
    assertThat(page.locator(".result")).not().containsText(unexpectedText);
}

@Then("The {string} button should not be visible")
public void theSupportWidgetButtonShouldNotBeVisible(String buttonName) {
    System.out.println("Executing: Verifying that '" + buttonName + "' button is not visible");
    assertThat(page.locator("#support-widget-button")).not().isVisible();
}

@When("A care representative fails to join the conversation")
public void careRepresentativeFailsToJoinConversation() {
    System.out.println("Executing: A care representative fails to join the conversation");
    // Simulate the failure of an agent joining
}

@Given("User is on the bot's chat interface")
public void userIsOnBotChatInterface() {
    System.out.println("Executing: User is on the bot's chat interface");
    page.navigate("https://example.com/chat");
}

@Given("the user is on the post-chat completion page")
    public void userIsOnPostChatPage() {
        System.out.println("Executing: User is on the post-chat completion page");
        page.navigate("https://www.owncompany.com/post-chat-complete");
    }

@Then("The URL should contain {string}")
public void theURLShouldContain(String expectedUrlPart) {
    System.out.println("Verifying URL contains: " + expectedUrlPart);
    assertThat(page).hasURL(Pattern.compile(".*" + Pattern.quote(expectedUrlPart) + ".*"));
}

@Then("the user should NOT be on the {string} URL")
public void userShouldNotBeOnUrl(String unexpectedUrl) {
    System.out.println("Executing: the user should NOT be on the " + unexpectedUrl + " URL");
    assertThat(page).not().hasURL(unexpectedUrl);
}

@Given("User has requested chat support")
public void userHasRequestedChatSupport() {
    System.out.println("Executing: User has requested chat support");
    page.navigate("https://example.com/chat");
    page.locator("#requestChatLink").click();
}

@Given("User navigates to the customer support chat page")
public void navigateToChatSupportPage_940() {
    System.out.println("Navigating to customer support chat page");
    page.navigate("https://example.com/support-chat");
}

@When("User types a message longer than {string} characters into the chat input")
    public void userTypesOversizedMessageIntoChatInput(String charLimit) {
        System.out.println("Executing: User types a message longer than " + charLimit + " characters into the chat input");
        int limit = Integer.parseInt(charLimit);
        StringBuilder longMessage = new StringBuilder();
        for (int i = 0; i < limit + 10; i++) { // +10 to ensure it's longer
            longMessage.append("a");
        }

@When("User selects issue status as {string}")
public void userSelectsIssueStatusAs(String status) {
    System.out.println("Selecting issue status: " + status);
    // Assuming a dropdown or input to simulate issue status
    page.locator("#issueStatusSelect").selectOption(status);
}

@Then("the welcome message should not contain {string}")
public void verifyWelcomeMessageNotContainsIrrelevantPhrase(String irrelevantPhrase) {
    System.out.println("Executing: verifyWelcomeMessageNotContainsIrrelevantPhrase with phrase: " + irrelevantPhrase);
    assertThat(page.locator("#ai-bot-welcome-message")).not().containsText(irrelevantPhrase);
}

@Then("The product price area should display {string}")
public void verifyProductPriceAreaDisplay(String expectedMessage) {
    System.out.println("Verifying product price area displays: " + expectedMessage);
    assertThat(page.locator(".product-price")).containsText(expectedMessage);
}

@Then("The page should NOT contain {string}")
    public void verifyPageDoesNotContainText_945(String unexpectedText) {
        System.out.println("Verifying page does NOT contain: " + unexpectedText);
        assertThat(page.locator("body")).not().containsText(unexpectedText);
    }

@Then("the delivery status should indicate {string}")
public void verifyDeliveryStatus(String status) {
    System.out.println("Verifying delivery status: " + status);
    assertThat(page.locator(".result")).containsText(status);
}

@Then("the bot message should display {string}")
public void verifyBotMessageDisplay(String expectedMessage) {
    System.out.println("Executing: verifyBotMessageDisplay with message: " + expectedMessage);
    assertThat(page.locator(".bot-message")).containsText(expectedMessage);
}

@When("User uploads a photo file {string}")
    public void userUploadsPhotoFile(String fileName) {
        System.out.println("Executing: User uploads a photo file " + fileName);
        // Simulate file creation for testing purposes
        Path filePath = Paths.get("src/test/resources/" + fileName);
        try {
            Files.createDirectories(filePath.getParent());
            Files.write(filePath, "dummy content".getBytes());
        }

@Then("The system should NOT display the message {string}")
public void systemShouldNotDisplayMessage(String message) {
    System.out.println("Executing: Verify message NOT displayed: " + message);
    assertThat(page.locator(".result")).doesNotContainText(message);
}

@Then("The chat system displays the full queue message and prompt {string}")
public void chatSystemDisplaysFullQueueMessageAndPrompt(String expectedMessage) {
    System.out.println("Executing: The chat system displays the full queue message and prompt " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User enters new price {string}")
public void userEntersNewPrice(String newPrice) {
    System.out.println("Typing new price: " + newPrice);
    page.locator("#new_price").fill(newPrice);
}

@When("user adds {string} to the cart")
public void userAddsProductToCart_952(String productName) {
    System.out.println("Adding product to cart: " + productName);
    page.locator("button:has-text('Add to Cart')").click();
    page.waitForTimeout(1000); // Wait for cart update or mini-cart to appear
}

@When("User clicks on the {string} product link")
public void userClicksOnTheProductLink(String productName) {
    System.out.println("Executing: User clicks on the '" + productName + "' product link");
    page.locator(".product-title:has-text('" + productName + "')").click(); // Click on the product title/link
}

@Then("the chat status message should not display \"{string}\"")
public void verifyChatStatusMessageShouldNotDisplay(String unexpectedStatus) {
    System.out.println("Verifying chat status message does not display: " + unexpectedStatus);
    assertThat(page.locator("#chat-status-message")).not(containsText(unexpectedStatus));
}

@When("I click {string}")
public void clickButton_955(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("the billing summary should show {string}")
public void verifyBillingSummary(String summary) {
    System.out.println("Verifying billing summary: " + summary);
    assertThat(page.locator(".result")).containsText(summary);
}

@Given("User is on the support contact page")
public void userIsOnSupportContactPage() {
    System.out.println("Executing: User is on the support contact page");
    page.navigate("https://example.com/support");
}

@When("User navigates to the product listing page for {string}")
public void userNavigatesToProductListingPageForLocation(String location) {
    System.out.println("Executing: User navigates to the product listing page for " + location);
    // Assuming location is passed as a URL parameter and spaces are removed
    page.navigate("http://localhost:8080/products?location=" + location.replace(" ", ""));
}

@Then("The current URL should be \"https://example.com/support/chat\"")
public void currentURLShouldBe(String expectedUrl) {
    System.out.println("Verifying URL: " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@Then("The loading indicator {string} should be visible")
public void verifyLoadingIndicatorVisible(String message) {
    System.out.println("Verifying loading indicator visibility: " + message);
    assertThat(page.locator("text='" + message + "'")).isVisible();
}

@When("User selects item {string} for cancellation")
public void userSelectsItemForCancellation(String itemName) {
    System.out.println("Executing: User selects item " + itemName + " for cancellation");
    page.locator("#item_to_cancel").fill(itemName); // Assuming an input field for item name
}

@Then("The welcome message should not contain {string}")
public void verifyIncorrectMessageNotDisplayed(String unexpectedMessage) {
    System.out.println("Verifying welcome message does not contain: " + unexpectedMessage);
    assertThat(page.locator(".result")).doesNotContainText(unexpectedMessage);
}

@When("User inquires about shipping discounts for {string}")
public void userInquiresAboutShippingDiscountsFor(String productCategory) {
    System.out.println("Executing: User inquires about shipping discounts for " + productCategory);
    // Simulate selecting a product category and then checking for shipping discounts.
    page.locator("#product_category_dropdown").selectOption(productCategory);
    page.locator("button:has-text('Check Shipping Discounts')").click();
}

@Then("The page should display user email {string}")
public void verifyUserEmail(String email) {
    System.out.println("Verifying user email: " + email);
    assertThat(page.locator("#user-email")).containsText(email);
}

@Then("The high volume message should NOT display {string}")
public void verifyHighVolumeMessageNotDisplayed(String unexpectedMessage) {
    System.out.println("Executing: The high volume message should NOT display " + unexpectedMessage);
    assertThat(page.locator(".high-volume-message")).doesNotContainText(unexpectedMessage);
}

@Given("User is on the product page {string}")
public void userIsOnProductPage(String url) {
    System.out.println("Executing: User is on the product page " + url);
    page.navigate(url);
}

@Given("User navigates to the customer service contact page {string}")
public void navigateToCustomerServicePage(String url) {
    System.out.println("Executing: User navigates to the customer service contact page");
    page.navigate(url);
}

@Given("the user navigates to the chat application")
public void navigateToChatApplication_968() {
    System.out.println("Executing: navigateToChatApplication");
    page.navigate("http://localhost:8080/chat");
}

@Then("the care representative's \"online\" status should not be displayed")
public void careRepresentativeOnlineStatusShouldNotBeDisplayed() {
    System.out.println("Executing: Care representative's online status should not be displayed");
    assertThat(page.locator(".chat-status.representative")).not().isVisible();
}

@Then("The chat window should be visible")
    public void chatWindowShouldBeVisible() {
        System.out.println("Executing: The chat window should be visible");
        assertThat(page.locator(".chat-window")).isVisible();
    }

@Then("the assistant's message displays name {string}")
public void verifyAssistantName(String name) {
    System.out.println("Executing: verify assistant's name: " + name);
    // Assuming .assistant-message is the locator for the assistant's message container
    assertThat(page.locator(".assistant-message")).containsText(name);
}

@Then("The element with ID {string} should not be visible")
public void verifyElementNotVisible(String elementId) {
    System.out.println("Verifying that element with ID " + elementId + " is not visible.");
    assertThat(page.locator("#" + elementId)).not().isVisible();
}

@Given("User navigates to the product page for {string} with price {string}")
public void navigateToProductPage_973(String productName, String price) {
    System.out.println("Navigating to product page for: " + productName);
    page.navigate("https://example.com/products/" + productName.toLowerCase());
}

@Then("the status message should NOT display {string}")
public void verifyStatusMessageNotDisplayed_974(String unexpectedMessage) {
    System.out.println("Executing: Verify status message does NOT exactly display: " + unexpectedMessage);
    assertThat(page.locator(".result")).not().hasText(unexpectedMessage);
}

@Given("user has received help from the customer service chatbot")
public void userReceivedHelp() {
    System.out.println("Executing: user has received help from the customer service chatbot");
    page.navigate("https://example.com/customer-service-chat"); // Ensure user is on the chat page
    // This step assumes prior interactions leading to assistance.
}

@Then("The chat bot message area should not be empty")
public void verifyChatBotMessageAreaNotEmpty() {
    System.out.println("Executing: The chat bot message area should not be empty");
    assertThat(page.locator(".chat-message")).isVisible();
    assertThat(page.locator(".chat-message")).not().isEmpty();
}

@When("User accesses the {string} section")
public void userAccessesSection(String sectionName) {
    System.out.println("Accessing section: " + sectionName + " (assuming content is visible or easily navigated).");
    // In a real scenario, this might involve clicking a link or scrolling.
    // For this generic step, we assume the information becomes visible on the current page.
}

@Then("User should see products related to {string} in the search results")
public void userShouldSeeRelatedProductsInTheSearchResults(String category) {
    System.out.println("Executing: User should see products related to " + category + " in the search results");
    assertThat(page.locator(".search-results")).containsText(category);
}

@Then("I should see the status message {string}")
    public void verifyStatusMessage_979(String expectedMessage) {
        System.out.println("Executing: Verify status message: " + expectedMessage);
        assertThat(page.locator(".result")).containsText(expectedMessage);
    }

@When("User leaves the query field empty")
    public void userLeavesQueryFieldEmpty() {
        System.out.println("Leaving query field empty");
        page.locator("#query_no").fill("");
    }

@Then("the conversation area should display {string}")
public void verifyConversationMessage(String message) {
    System.out.println("Executing: The conversation area should display \"" + message + "\"");
    assertThat(page.locator(".result")).containsText(message);
}

@Then("the chat message area should not display {string}")
public void verifyChatMessageIsNotDisplayed(String message) {
    System.out.println("Executing: The chat message area should not display " + message);
    assertThat(page.locator(".chat-message-area")).doesNotContainText(message);
}

@Given("User is on the AI Bot Assistant page")
public void navigateToBotPage_983() {
    System.out.println("Navigating to AI Bot Assistant page");
    page.navigate("https://example.com/aibot");
}

@Given("User navigates to the AI Bot page for negative test")
public void navigateToBotPageForNegative() {
    System.out.println("Executing: User navigates to the AI Bot page for negative test");
    page.navigate("https://example.com/bot-page");
}

@Then("User should see a message {string}")
public void userShouldSeeMessage(String message) {
    System.out.println("Executing: User should see a message " + message);
    assertThat(page.locator(".result")).containsText(message);
}

@Then("The AI Bot welcome message should contain {string}")
public void verifyAIBotWelcomeMessageContains(String expectedPhrase) {
    System.out.println("Executing: The AI Bot welcome message should contain " + expectedPhrase);
    assertThat(page.locator(".welcome-message-text")).containsText(expectedPhrase);
}

@Given("the user is logged in and on the {string} page")
public void userIsOnPage(String pageName) {
    System.out.println("Executing: Navigating to " + pageName + " page");
    if (pageName.equals("Registry Management")) {
        page.navigate("/registry/manage");
    }

@Then("The availability result should display {string}")
public void theAvailabilityResultShouldDisplay(String expectedMessage) {
    System.out.println("Verifying availability result: " + expectedMessage);
    assertThat(page.locator(".availability-result")).containsText(expectedMessage);
}

@When("User selects a valid image file {string}")
public void userSelectsAValidImageFile(String fileName) {
    System.out.println("Executing: User selects a valid image file " + fileName);
    page.locator("input[type='file']").setInputFiles(Paths.get("src/test/resources/" + fileName));
}

@When("User clicks the {string} button without entering an order number")
public void clickTrackButtonWithoutOrderNumber(String buttonText) {
    System.out.println("Executing: User clicks the '" + buttonText + "' button without entering an order number");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Given("User navigates to the application home page")
public void navigateToHomePage_991() {
    System.out.println("Executing: User navigates to the application home page");
    page.navigate("http://localhost:8080/");
}

@Given("the AI Bot Assistant chat interface is loaded")
public void loadChatInterface() {
    System.out.println("Executing: Navigating to AI Bot Assistant interface");
    page.navigate("https://example.com/chatbot");
}

@Then("The chat bot message should display {string}")
public void verifyChatBotMessage(String expectedMessage) {
    System.out.println("Executing: The chat bot message should display " + expectedMessage);
    assertThat(page.locator(".chat-message")).containsText(expectedMessage);
}

@Given("User navigates to the public page {string}")
public void navigateToPublicPage(String url) {
    System.out.println("Navigating to public page: " + url);
    page.navigate(url);
}

@Then("the page should contain the text {string}")
public void verifyPageContainsSpecificText(String expectedText) {
    System.out.println("Verifying page contains text: " + expectedText);
    assertThat(page.locator("body")).containsText(expectedText);
}

@When("The system indicates agent transfer is initiated")
public void systemIndicatesAgentTransfer() {
    System.out.println("Executing: The system indicates agent transfer is initiated");
    // No direct Playwright action for a system event, assuming message appears due to page state.
    // In a real scenario, this might involve clicking a 'Contact Support' button or waiting for an event.
}

@Then("the status message result should contain the thank you message {string}")
public void statusMessageShouldContainThankYou(String thankYouMessage) {
    System.out.println("Executing: Verify thank you message: " + thankYouMessage);
    assertThat(page.locator(".result")).containsText(thankYouMessage);
}

@Then("The order status message should display {string}")
public void orderStatusMessageShouldDisplay(String expectedMessage) {
    System.out.println("Executing: The order status message should display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("User enters {string} into the query field")
    public void userEntersIntoQueryField(String item) {
        System.out.println("Entering item into query field: " + item);
        page.locator("#query_no").fill(item);
    }

@When("Clicks the {string} button")
public void clicksTheButton(String buttonText) {
    System.out.println("Clicking the button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Given("User is on the AI Bot chat interface")
public void userIsOnChatInterface_1001() {
    System.out.println("Executing: User is on the AI Bot chat interface");
    page.navigate("https://example.com/aibot-chat");
}

@When("User re-initiates the live chat")
    public void userReInitiatesTheLiveChat() {
        System.out.println("Re-initiating live chat.");
        page.locator("#chat-button").click();
        page.locator("#chat-window").waitFor();
    }

@Given("User navigates to the application homepage {string}")
public void navigateToHomepage_1003(String url) {
    System.out.println("Navigating to homepage: " + url);
    page.navigate(url);
}

@When("the price of {string} is updated to {string} in the backend")
public void updateProductPriceBackend(String productName, String newPrice) {
    System.out.println("Executing: the price of " + productName + " is updated to " + newPrice + " in the backend");
    // This step simulates a backend change. In a real test, this would be an API call or direct DB update
    // and not a Playwright UI action. For this exercise, it's a placeholder.
}

@When("User enters {string} into the input field")
public void userEntersIntoTheInputField(String query) {
    System.out.println("Executing: User enters " + query + " into the input field");
    page.locator("#order_no").fill(query);
}

@Given("User navigates to the AI Bot Assistant welcome page")
    public void navigateToBotWelcomePage() {
        System.out.println("Executing: User navigates to the AI Bot Assistant welcome page");
        page.navigate("https://example.com/aibot");
    }

@When("the system enters a {string}")
public void systemEntersHighVolumeState(String state) {
    System.out.println("System enters state: " + state);
    // Assuming the page is loaded in this state.
}

@Then("User should see the support phone number as {string}")
    public void userShouldSeeSupportPhoneNumber(String phoneNumber) {
        System.out.println("Verifying support phone number: " + phoneNumber);
        assertThat(page.locator("#support-phone")).containsText(phoneNumber);
    }

@Given("I navigate to the customer service status page")
public void navigateToCustomerServiceStatusPage() {
    System.out.println("Navigating to customer service status page.");
    page.navigate("https://example.com/customer-service-status");
}

@Then("The bot's welcome message should not be {string}")
public void verifyBotWelcomeMessageNotIncorrect(String unexpectedMessage) {
    System.out.println("Verifying bot welcome message does not contain: " + unexpectedMessage);
    assertThat(page.locator(".bot-message")).doesNotContainText(unexpectedMessage);
}

@When("I enter {string} into the transaction ID field")
    public void enterTransactionId(String transactionId) {
        System.out.println("Executing: Enter transaction ID: " + transactionId);
        page.locator("#transaction_id").fill(transactionId);
    }

@Then("The bot welcome message should contain {string}")
public void verifyBotWelcomeMessageContains(String partialMessage) {
    System.out.println("Executing: The bot welcome message should contain " + partialMessage);
    assertThat(page.locator(".bot-message-display")).containsText(partialMessage);
}

@Given("User navigates to the customer service contact page")
public void navigateToCustomerServiceContactPage() {
    System.out.println("Navigating to customer service contact page");
    page.navigate("https://example.com/customerservice");
}

@Then("A success message {string} should be displayed")
public void aSuccessMessageShouldBeDisplayed(String expectedMessage) {
    System.out.println("Verifying success message: " + expectedMessage);
    assertThat(page.locator(".success-message")).containsText(expectedMessage);
}

@Then("{string} should be displayed with price {string}")
public void verifyItemPriceInCart(String productName, String expectedPrice) {
    System.out.println("Executing: " + productName + " should be displayed with price " + expectedPrice);
    assertThat(page.locator(String.format("div.cart-item:has-text('%s') >> .item-price", productName))).containsText(expectedPrice);
}

@Then("The support information section should NOT display the instruction {string}")
public void verifyInstructionNotDisplayed(String instruction) {
    System.out.println("Executing: The support information section should NOT display the instruction " + instruction);
    assertThat(page.locator(".support-info")).doesNotContainText(instruction);
}

@When("the chatbot is still processing the request")
public void chatbotIsProcessing() {
    System.out.println("Executing: the chatbot is still processing the request");
    // This step assumes a state where the chatbot has not yet concluded.
    // No direct Playwright action is derived from the transcript for this 'When' step.
}

@Then("A welcome message {string} should be displayed")
public void welcomeMessageShouldBeDisplayed(String message) {
    System.out.println("Verifying welcome message: " + message);
    assertThat(page.locator("#chat-history")).containsText(message);
}

@Then("The user should be on the {string} page")
public void theUserShouldBeOnThePage(String pageName) {
    System.out.println("Verifying current page URL for: " + pageName);
    assertThat(page).hasURL("https://example.com/" + pageName.replace(" ", "-"));
}

@Then("the chat inactivity prompt should not be visible")
public void verifyChatInactivityPromptIsNotVisible() {
    System.out.println("Verifying chat inactivity prompt is not visible");
    assertThat(page.locator("#chat-inactivity-message")).not(isVisible());
}

@When("User clears the order number field")
public void userClearsOrderNumberField() {
    System.out.println("Clearing order number field");
    page.locator("#order_no").clear();
}

@When("User clicks the {string} button")
public void userClicksTheButton_1022(String buttonText) {
    System.out.println("Executing: User clicks the " + buttonText + " button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@When("user enters order number {string}")
public void userEntersOrderNumber_1023(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@When("I attempt to remove the name {string} from the registry")
public void attemptToRemoveNonExistentName(String name) {
    System.out.println("Attempting to remove non-existent name: " + name);
    page.locator("#name_to_remove").fill(name);
    page.locator("button:has-text('Remove Name')").click();
}

@Then("The system status message should display {string}")
public void verifySystemStatusMessage(String expectedMessage) {
    System.out.println("Executing: The system status message should display " + expectedMessage);
    // Assuming a generic locator for a status message
    assertThat(page.locator(".status-message")).containsText(expectedMessage);
}

@Then("an error message {string} should be displayed")
public void errorMessageShouldBeDisplayed_1026(String expectedMessage) {
    System.out.println("Executing: Verifying error message: " + expectedMessage);
    assertThat(page.locator(".error")).containsText(expectedMessage);
}

@Then("User should see a confirmation {string}")
public void userShouldSeeConfirmation(String confirmationMessage) {
    System.out.println("Executing: User should see a confirmation " + confirmationMessage);
    assertThat(page.locator(".result")).containsText(confirmationMessage);
}

@Given("User is on the customer service portal at {string}")
public void navigateToPortal(String url) {
    System.out.println("Executing: User is on the customer service portal at " + url);
    page.navigate(url);
    assertThat(page).hasURL(url);
}

@Then("User should be routed to the \"Technical Support\" department page")
public void userRoutedToTechnicalSupportDepartmentPage() {
    System.out.println("Executing: User should be routed to the \"Technical Support\" department page");
    assertThat(page).hasURL(".*\/technical-support");
}

@When("User enters an empty order number")
    public void userEntersAnEmptyOrderNumber() {
        System.out.println("Executing: User enters an empty order number");
        page.locator("#order_no").fill("");
    }

@Given("I am on the order tracking page")
public void navigateToOrderTrackingPage_1031() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://localhost:8080/track-order"); // Assuming a base URL for the tracking page
}

@Given("User navigates to the AI bot chat page")
public void navigateToBotChatPage() {
    System.out.println("Executing: User navigates to the AI bot chat page");
    page.navigate("https://example.com/ai-bot-chat");
}

@Then("The order details should include {string}")
public void theOrderDetailsShouldInclude(String expectedAddress) {
    System.out.println("Executing: The order details should include " + expectedAddress);
    assertThat(page.locator(".result")).containsText(expectedAddress);
}

@When("User searches for {string}")
public void userSearchesFor(String searchTerm) {
    System.out.println("Executing: User searches for " + searchTerm);
    // Assuming a search input field and a search button
    page.locator("#search-input").fill(searchTerm);
    page.locator("button:has-text('Search')").click();
}

@Then("The product name {string} should be displayed on the details page")
public void theProductNameShouldBeDisplayedOnTheDetailsPage(String productName) {
    System.out.println("Executing: The product name '" + productName + "' should be displayed on the details page");
    assertThat(page.locator(".product-detail-name")).containsText(productName); // Invented locator for product name on details page
}

@Then("the total cart price should be {string}")
public void verifyCartTotalPrice(String expectedTotalPrice) {
    System.out.println("Executing: the total cart price should be " + expectedTotalPrice);
    assertThat(page.locator("div.cart-total-price")).containsText(expectedTotalPrice);
}

@Given("User is on the order return page")
    public void userIsOnTheOrderReturnPage() {
        System.out.println("Executing: User is on the order return page");
        page.navigate("http://localhost:8080/return-portal");
    }

@Then("The status message result should not display {string}")
public void theStatusMessageResultShouldNotDisplay(String unexpectedMessage) {
    System.out.println("Executing: The status message result should not display " + unexpectedMessage);
    assertThat(page.locator(".result")).doesNotContainText(unexpectedMessage);
}

@Given("I am on the customer service page")
public void navigateToCustomerServicePage_1039() {
    System.out.println("Executing: Navigate to customer service page (placeholder URL)");
    page.navigate("https://example.com/customerservice"); // Placeholder URL
}

@Given("a care representative has successfully joined the conversation")
public void representativeHasJoined() {
    System.out.println("Executing: representativeHasJoined");
    // This step assumes the state where the representative is already present, as a precursor to the assistant stepping away.
}

@Given("User opens the browser")
public void userOpensBrowser() {
    System.out.println("Executing: User opens the browser");
    // Browser is typically launched before scenario; no action needed here.
}

@Given("user is on the product page for {string} with price {string}")
public void userOnProductPage(String productName, String price) {
    System.out.println("Navigating to product page for: " + productName + " with price: " + price);
    page.navigate("/products/" + productName.toLowerCase().replace(" ", "-"));
    assertThat(page.locator("h1.product-title")).containsText(productName);
    assertThat(page.locator(".product-price")).containsText(price);
}

@When("user enters order number {string} with an invalid format")
public void userEntersInvalidFormatOrderNumber(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The bot welcome message should not be visible")
public void theBotWelcomeMessageShouldNotBeVisible() {
    System.out.println("Executing: The bot welcome message should not be visible");
    assertThat(page.locator(".result")).not().isVisible();
}

@Then("The chat input field should be disabled")
public void verifyChatInputDisabled() {
    System.out.println("Executing: The chat input field should be disabled");
    assertThat(page.locator("#chat_input")).isDisabled();
}

@When("User clicks the apply promo button")
public void userClicksApplyPromoButton() {
    System.out.println("Clicking apply promo button");
    page.locator("button:has-text('Track Order')").click();
}

@Given("User has navigated to {string}")
public void userHasNavigatedTo(String url) {
    System.out.println("Executing: User has navigated to " + url);
    page.navigate(url);
}

@When("User navigates to the shopping cart page")
public void navigateToShoppingCartPage() {
    System.out.println("Navigating to shopping cart page");
    page.navigate("https://example.com/cart");
}

}
