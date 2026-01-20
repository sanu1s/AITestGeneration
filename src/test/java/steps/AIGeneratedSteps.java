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

@When("User clicks the {string} button")
public void userClicksTheButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The order status should be {string}")
public void theOrderStatusShouldBe(String status) {
    System.out.println("Verifying order status: " + status);
    assertThat(page.locator(".result")).containsText("Status: " + status);
}

@Given("User is on the order tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@Then("the order status should be {string} and delivery date {string}")
public void theOrderStatusShouldBeAndDeliveryDate(String status, String deliveryDate) {
    System.out.println("Verifying order status and delivery date.");
    assertThat(page.locator(".result")).containsText("Status: " + status);
    assertThat(page.locator(".result")).containsText("Delivery Date: " + deliveryDate);
}

@Then("The status message should display {string}")
public void theStatusMessageShouldDisplay(String expectedMessage) {
    System.out.println("Executing: The status message should display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Then("the error message should display {string}")
public void theErrorMessageShouldDisplay(String errorMessage) {
    System.out.println("Verifying error message: " + errorMessage);
    assertThat(page.locator(".result")).containsText(errorMessage);
}

@When("I enter order number {string}")
public void iEnterOrderNumber(String orderNo) {
    System.out.println("Entering order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@When("Clicks the 'Track Order' button")
public void clicksTrackOrderButton() {
    System.out.println("Executing: Clicks the 'Track Order' button");
    page.locator("button:has-text('Track Order')").click();
}

@Then("The result message should display {string}")
public void theResultMessageShouldDisplay(String message) {
    System.out.println("Verifying result message: " + message);
    assertThat(page.locator(".result")).containsText(message);
}

@When("User enters order number {string} and clicks 'Track Order'")
public void userEntersOrderNumberAndClicksTrackOrder(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo + " and clicks 'Track Order'");
    page.locator("#order_no").fill(orderNo);
    page.locator("button:has-text('Track Order')").click();
}

@Given("I am on the order tracking page")
public void iAmOnTheOrderTrackingPage() {
    System.out.println("Navigating to order tracking page.");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("User leaves the order number field empty")
public void userLeavesOrderNumberFieldEmpty() {
    System.out.println("Leaving order number field empty");
    page.locator("#order_no").fill("");
}

@When("I click the {string} button")
public void iClickTheButton(String buttonText) {
    System.out.println("Clicking the '" + buttonText + "' button.");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The error message {string} should be displayed")
public void theErrorMessageShouldBeDisplayed(String errorMessage) {
    System.out.println("Executing: The error message " + errorMessage + " should be displayed");
    assertThat(page.locator(".result")).containsText(errorMessage);
}

@Then("The delivery date should be displayed")
public void theDeliveryDateShouldBeDisplayed() {
    System.out.println("Verifying delivery date is displayed");
    assertThat(page.locator(".result")).containsText("Delivery Date:");
}

@When("User leaves the order number field empty and clicks 'Track Order'")
public void userLeavesOrderNumberFieldEmptyAndClicksTrackOrder() {
    System.out.println("Executing: User leaves the order number field empty and clicks 'Track Order'");
    page.locator("#order_no").fill(""); // Ensure the field is empty
    page.locator("button:has-text('Track Order')").click();
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Entering order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay_18(String expectedMessage) {
    System.out.println("Executing: The error message should display " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

}
