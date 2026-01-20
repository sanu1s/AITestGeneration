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

@Then("The tracking result should show status {string} and an estimated delivery date")
public void theTrackingResultShouldShowStatusAndAnEstimatedDeliveryDate(String status) {
    System.out.println("Executing: The tracking result should show status " + status + " and an estimated delivery date");
    assertThat(page.locator(".result")).containsText(status);
    assertThat(page.locator(".result")).containsText("Expected Delivery:");
}

@When("User clicks the {string} button")
public void userClicksTheButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The order status should be {string}")
public void theOrderStatusShouldBe(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText("Status: " + expectedStatus);
}

@Given("User is on the order tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@Then("I should see an error message {string}")
public void iShouldSeeAnErrorMessage(String errorMessage) {
    System.out.println("Verifying error message: " + errorMessage);
    assertThat(page.locator(".error")).containsText(errorMessage);
}

@Then("I should see the delivery date {string}")
public void iShouldSeeTheDeliveryDate(String deliveryDate) {
    System.out.println("Verifying delivery date: " + deliveryDate);
    assertThat(page.locator(".result")).containsText("Delivery Date: " + deliveryDate);
}

@When("I enter order number {string}")
public void iEnterOrderNumber(String orderNo) {
    System.out.println("Entering order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Given("User navigates to the order tracking page")
public void userNavigatesToOrderTrackingPage() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
}

@Then("The order status should display {string}")
public void theOrderStatusShouldDisplay(String status) {
    System.out.println("Verifying order status: " + status);
    assertThat(page.locator(".result")).containsText(status);
}

@Given("I am on the order tracking page")
public void iAmOnTheOrderTrackingPage() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("User leaves the order number field empty")
public void userLeavesTheOrderNumberFieldEmpty() {
    System.out.println("Ensuring order number field is empty");
    page.locator("#order_no").fill("");
}

@Then("The current URL should be {string}")
public void theCurrentURLShouldBe(String expectedUrl) {
    System.out.println("Verifying current URL: " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@When("I leave the order number field empty")
public void iLeaveTheOrderNumberFieldEmpty() {
    System.out.println("Leaving order number field empty");
    page.locator("#order_no").fill("");
}

@Then("An error message should display {string}")
public void anErrorMessageShouldDisplay(String errorMessage) {
    System.out.println("Executing: An error message should display " + errorMessage);
    assertThat(page.locator(".error")).containsText(errorMessage);
}

@When("I click the {string} button")
public void iClickTheButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@When("User clicks the 'Track Order' button")
public void userClicksTheTrackOrderButton() {
    System.out.println("Clicking 'Track Order' button");
    page.locator("button:has-text('Track Order')").click();
}

@Then("The delivery date should be displayed")
public void theDeliveryDateShouldBeDisplayed() {
    System.out.println("Verifying delivery date is displayed");
    assertThat(page.locator(".result")).containsText("Delivery Date:");
}

@Then("The delivery date should display {string}")
public void theDeliveryDateShouldDisplay(String deliveryDate) {
    System.out.println("Verifying delivery date: " + deliveryDate);
    assertThat(page.locator(".result")).containsText(deliveryDate);
}

@Then("I should see the status {string}")
public void iShouldSeeTheStatus(String status) {
    System.out.println("Verifying status: " + status);
    assertThat(page.locator(".result")).containsText("Status: " + status);
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String errorMessage) {
    System.out.println("Verifying error message: " + errorMessage);
    assertThat(page.locator(".error")).containsText(errorMessage);
}

}
