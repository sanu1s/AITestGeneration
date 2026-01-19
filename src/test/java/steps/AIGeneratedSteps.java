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
public void userClicksTheButton(String buttonName) {
    System.out.println("Executing: User clicks the " + buttonName + " button");
    page.locator("button:has-text('" + buttonName + "')").click();
}

@Then("Delivery date should be displayed")
public void deliveryDateShouldBeDisplayed() {
    System.out.println("Executing: Delivery date should be displayed");
    assertThat(page.locator(".result")).containsText("Delivery Date");
}

@Then("The order status should be {string}")
public void theOrderStatusShouldBe(String expectedStatus) {
    System.out.println("Executing: The order status should be " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("Order status should be {string}")
public void orderStatusShouldBe(String expectedStatus) {
    System.out.println("Executing: Order status should be " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Given("User is on the order tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Executing: User is on the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@Then("The page should display {string}")
public void thePageShouldDisplay(String expectedText) {
    System.out.println("Executing: The page should display " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

@Then("The order status {string} should be displayed")
public void theOrderStatusShouldBeDisplayed(String expectedStatus) {
    System.out.println("Executing: The order status " + expectedStatus + " should be displayed");
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("The current URL should be {string}")
public void theCurrentURLShouldBe(String expectedUrl) {
    System.out.println("Executing: The current URL should be " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@Given("User is on the Order Tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Executing: User is on the Order Tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNumber) {
    System.out.println("Executing: User enters order number " + orderNumber);
    page.locator("#order_no").fill(orderNumber);
}

@Then("The result should display {string}")
public void theResultShouldDisplay(String expectedText) {
    System.out.println("Executing: The result should display " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

@Then("{string} should be displayed")
public void textShouldBeDisplayed(String text) {
    System.out.println("Executing: " + text + " should be displayed");
    assertThat(page.locator(".result")).containsText(text);
}

}
