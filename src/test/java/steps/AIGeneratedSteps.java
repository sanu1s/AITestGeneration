package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import java.util.regex.Pattern;
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
    page.locator("#searchBtn").click();
}

@When("User selects {string} as search type")
public void userSelectsSearchType(String searchType) {
    System.out.println("Selecting search type: " + searchType);
    page.locator("#searchType").selectOption(searchType);
}

@Then("The order details for {string} should be displayed")
public void theOrderDetailsShouldBeDisplayed(String orderId) {
    System.out.println("Verifying order details for: " + orderId);
    // Assuming order details are displayed in #orderDetails or #displayStatus
    // Using #orderDetails as a primary candidate for positive results
    assertThat(page.locator("#orderDetails")).containsText(orderId);
}

@When("User enters order ID {string}")
public void userEntersOrderId(String orderId) {
    System.out.println("Entering order ID: " + orderId);
    page.locator("#orderIdInput").fill(orderId);
}

@Given("User is on the Order Tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Navigating to Order Tracking page");
    page.navigate("http://127.0.0.1:8088/order/tracking");
}

@Then("The error message should display {string}")
public void theErrorMessageShouldDisplay(String expectedErrorMessage) {
    System.out.println("Verifying error message: " + expectedErrorMessage);
    assertThat(page.locator("#error")).containsText(expectedErrorMessage);
}

}
