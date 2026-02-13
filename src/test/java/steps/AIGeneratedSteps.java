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

@Then("The error message should disappear")
public void verifyErrorMessageDisappears() {
    System.out.println("Verifying error message disappears");
    // Assuming the error message is cleared from the .result container
    assertThat(page.locator(".result")).hasText(""); // Or not visible if the element itself disappears
}

@Then("The {string} button should be enabled")
public void verifyButtonEnabled(String buttonText) {
    System.out.println("Verifying button is enabled: " + buttonText);
    assertThat(page.locator("button:has-text('" + buttonText + "')")).isEnabled();
}

@When("User clicks the {string} button")
public void clickButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The order status should be {string}")
public void verifyOrderStatus(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Given("User is on the order tracking page")
public void userIsOnOrderTrackingPage() {
    System.out.println("Navigating to order tracking page");
    page.navigate("http://localhost:8088/order/tracking");
}

@Then("The {string} button should be disabled")
public void verifyButtonDisabled(String buttonText) {
    System.out.println("Verifying button is disabled: " + buttonText);
    assertThat(page.locator("button:has-text('" + buttonText + "')")).isDisabled();
}

@When("User corrects the order number to {string}")
public void correctsOrderNumber(String correctedOrderNo) {
    System.out.println("Correcting order number to: " + correctedOrderNo);
    page.locator("#order_no").fill(correctedOrderNo);
}

@When("User enters order number {string}")
public void enterOrder(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void verifyErrorMessage(String errorMessage) {
    System.out.println("Verifying error message: " + errorMessage);
    assertThat(page.locator(".result")).containsText(errorMessage);
}

}
