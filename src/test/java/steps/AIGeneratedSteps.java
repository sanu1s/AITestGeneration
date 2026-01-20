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
    System.out.println("Executing: User clicks the \"" + buttonText + "\" button");
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
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Executing: User is on the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@Then("The estimated delivery date should be {string}")
public void theEstimatedDeliveryDateShouldBe(String expectedDate) {
    System.out.println("Executing: The estimated delivery date should be " + expectedDate);
    assertThat(page.locator(".result")).containsText("Delivery Date: " + expectedDate);
}

@When("Clicks the {string} button")
public void clicksTheButton(String buttonText) {
    System.out.println("Executing: Clicks the " + buttonText + " button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Given("User navigates to the order tracking page")
public void userNavigatesToTheOrderTrackingPage() {
    System.out.println("Executing: User navigates to the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("User enters an empty order number")
public void userEntersAnEmptyOrderNumber() {
    System.out.println("Typing empty order number");
    page.locator("#order_no").fill("");
}

@Then("An error message should display {string}")
public void anErrorMessageShouldDisplay(String expectedErrorMessage) {
    System.out.println("Executing: An error message should display " + expectedErrorMessage);
    assertThat(page.locator(".error")).containsText(expectedErrorMessage);
}

@When("User leaves the order number field empty")
public void userLeavesOrderNumberFieldEmpty() {
    System.out.println("Executing: User leaves the order number field empty");
    page.locator("#order_no").fill("");
}

@Then("The current URL should be {string}")
public void theCurrentURLShouldBe(String url) {
    System.out.println("Verifying current URL: " + url);
    assertThat(page).hasURL(url);
}

@When("User clicks the {string} button without entering an order number")
public void userClicksTheButtonWithoutEnteringAnOrderNumber(String buttonText) {
    System.out.println("Executing: User clicks the " + buttonText + " button without entering an order number");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The delivery date should be displayed")
public void theDeliveryDateShouldBeDisplayed() {
    System.out.println("Executing: The delivery date should be displayed");
    assertThat(page.locator(".result")).containsText("Delivery Date");
}

@Then("An error message {string} should be displayed")
public void anErrorMessageShouldBeDisplayed(String expectedErrorMessage) {
    System.out.println("Executing: An error message " + expectedErrorMessage + " should be displayed");
    assertThat(page.locator(".error")).containsText(expectedErrorMessage);
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String expectedErrorMessage) {
    System.out.println("Executing: The error message should display \"" + expectedErrorMessage + "\"");
    assertThat(page.locator(".error")).containsText(expectedErrorMessage);
}

@Then("The order number input field should be visible")
public void theOrderNumberInputFieldShouldBeVisible() {
    System.out.println("Executing: The order number input field should be visible");
    assertThat(page.locator("#order_no")).isVisible();
}

}
