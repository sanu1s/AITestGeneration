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
public void userClicksTheTrackOrderButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("The status message should display {string}")
public void theStatusMessageShouldDisplay(String expectedMessage) {
    System.out.println("Verifying status message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Given("User is on the Order Tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Navigating to order tracking page.");
    page.navigate("https://example.com/track-order");
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String expectedMessage) {
    System.out.println("Verifying error message: " + expectedMessage);
    assertThat(page.locator(".error")).containsText(expectedMessage);
}

}
