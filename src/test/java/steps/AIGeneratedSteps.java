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
public void theOrderStatusShouldBe(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText("The order status " + expectedStatus);
}

@Given("User is on the order tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Navigating to order tracking page...");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@Then("The current URL should be {string}")
public void theCurrentURLShouldBe(String expectedUrl) {
    System.out.println("Verifying current URL: " + expectedUrl);
    assertThat(page).hasURL(expectedUrl);
}

@When("User leaves the order number field empty")
public void userLeavesOrderNumberFieldEmpty() {
    System.out.println("Leaving order number field empty");
    page.locator("#order_no").fill("");
}

@Then("The delivery date should be displayed")
public void theDeliveryDateShouldBeDisplayed() {
    System.out.println("Verifying delivery date is displayed");
    assertThat(page.locator(".result")).containsText("Delivery Date:");
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String expectedErrorMsg) {
    System.out.println("Verifying error message: " + expectedErrorMsg);
    assertThat(page.locator(".result")).containsText(expectedErrorMsg);
}

@Then("The result should display {string}")
public void theResultShouldDisplay(String expectedText) {
    System.out.println("Executing: The result should display " + expectedText);
    assertThat(page.locator(".result")).containsText(expectedText);
}

@Then("The order status should display {string}")
public void theOrderStatusShouldDisplay(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("The result message should display {string}")
public void theResultMessageShouldDisplay(String expectedMessage) {
    System.out.println("Verifying result message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

}
