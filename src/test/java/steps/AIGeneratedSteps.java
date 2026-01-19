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

@Then("The delivery date should be {string}")
public void theDeliveryDateShouldBe(String expectedDate) {
    System.out.println("Executing: The delivery date should be " + expectedDate);
    assertThat(page.locator(".result")).containsText("Delivery Date: " + expectedDate);
}

@When("User clicks the {string} button")
public void userClicksTheButton(String buttonText) {
    System.out.println("Executing: User clicks the " + buttonText + " button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The {string} button should be visible")
public void theButtonShouldBeVisible(String buttonText) {
    System.out.println("Executing: The " + buttonText + " button should be visible");
    assertThat(page.locator("button:has-text('" + buttonText + "')")).isVisible();
}

@Then("The order status should be {string}")
public void theOrderStatusShouldBe(String expectedStatus) {
    System.out.println("Executing: The order status should be " + expectedStatus);
    assertThat(page.locator(".result")).containsText("Status: " + expectedStatus);
}

@Given("User is on the order tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Executing: User is on the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@Given("User navigates to the order tracking URL")
public void userNavigatesToTheOrderTrackingURL() {
    System.out.println("Executing: User navigates to the order tracking URL");
    page.navigate("http://127.0.0.1:8000/order/tracking");
}

@Then("The delivery information should contain {string}")
public void theDeliveryInformationShouldContain(String expectedText) {
    System.out.println("Verifying delivery information contains: " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

@Then("The order status should display {string}")
public void theOrderStatusShouldDisplay(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@When("User enters an empty order number")
public void userEntersAnEmptyOrderNumber() {
    System.out.println("Entering empty order number.");
    page.locator("#order_no").fill("");
}

@When("User leaves the order number field empty")
public void userLeavesTheOrderNumberFieldEmpty() {
    System.out.println("Executing: User leaves the order number field empty");
    page.locator("#order_no").fill("");
}

@Then("The delivery date should be displayed")
public void theDeliveryDateShouldBeDisplayed() {
    System.out.println("Executing: The delivery date should be displayed");
    assertThat(page.locator(".result")).containsText("Delivery Date:");
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String expectedError) {
    System.out.println("Executing: The error message should display " + expectedError);
    assertThat(page.locator(".error")).containsText(expectedError);
}

@Given("User is on the Order Tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Navigating to Order Tracking page...");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@Then("The order number input field should be visible")
public void theOrderNumberInputFieldShouldBeVisible() {
    System.out.println("Executing: The order number input field should be visible");
    assertThat(page.locator("#order_no")).isVisible();
}

@Then("The URL should be {string}")
public void theURLShouldBe(String expectedUrl) {
    System.out.println("Executing: The URL should be " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

}
