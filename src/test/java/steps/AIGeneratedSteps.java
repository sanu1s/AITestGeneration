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

@Then("The order status should be {string}")
public void theOrderStatusShouldBe(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@When("User enters an empty order number")
public void userEntersAnEmptyOrderNumber() {
    System.out.println("Typing empty order number");
    page.locator("#order_no").fill("");
}

@Then("The URL should remain on the Order Tracking page")
public void theURLShouldRemainOnTheOrderTrackingPage() {
    System.out.println("Verifying URL");
    assertThat(page).hasURL("http://localhost:8088/order/tracking");
}

@When("User clicks the Track Order button")
public void userClicksTheTrackOrderButton() {
    System.out.println("Clicking Track Order button");
    page.locator("button:has-text('Track Order')").click();
}

@Given("User is on the Order Tracking page")
public void userIsOnTheOrderTrackingPage() {
    System.out.println("Navigating to Order Tracking page");
    page.navigate("http://localhost:8088/order/tracking");
}

@When("User enters order number {string}")
public void userEntersOrderNumber(String orderNo) {
    System.out.println("Typing order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Then("The result message should display {string}")
public void theResultMessageShouldDisplay(String errorMessage) {
    System.out.println("Verifying result message: " + errorMessage);
    assertThat(page.locator(".result")).containsText(errorMessage);
}

}
