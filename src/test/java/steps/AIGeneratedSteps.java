package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.Locator;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import java.util.regex.Pattern;
import java.util.Arrays;
import java.util.List;
import com.microsoft.playwright.options.SelectOption;
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

@Then("The order details should be displayed for order {string}")
public void theOrderDetailsShouldBeDisplayedForOrder(String orderId) {
    System.out.println("Executing: The order details should be displayed for order " + orderId);
    assertThat(page.locator("#orderDetails")).isVisible();
    assertThat(page.locator("#orderDetails")).containsText("Order ID: " + orderId);
}

@When("User clicks the {string} button")
public void userClicksTheButton(String buttonText) {
    System.out.println("Executing: User clicks the " + buttonText + " button");
    page.locator("#searchBtn").click();
}

@Given("User is on the order tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Executing: User is on the order tracking page");
    page.navigate("http://127.0.0.1:8088/order/tracking");
}

@When("User enters order number {string} in the order ID input")
public void userEntersOrderNumberInTheOrderIdInput(String orderNo) {
    System.out.println("Executing: User enters order number " + orderNo + " in the order ID input");
    page.locator("#orderIdInput").fill(orderNo);
}

@Then("The error message {string} should be displayed")
public void theErrorMessageShouldBeDisplayed(String errorMessage) {
    System.out.println("Executing: The error message " + errorMessage + " should be displayed");
    assertThat(page.locator("#error")).isVisible();
    assertThat(page.locator("#error")).containsText(errorMessage);
}

@When("User selects {string} from the search type dropdown")
public void userSelectsFromSearchTypeDropdown(String searchType) {
    System.out.println("Executing: User selects " + searchType + " from the search type dropdown");
    page.locator("#searchType").selectOption(searchType);
}

}
