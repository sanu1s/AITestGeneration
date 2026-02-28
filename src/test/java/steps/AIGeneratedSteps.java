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

@Then("User should see an input field labeled {string}")
public void verifyInputFieldLabeled(String label) {
    System.out.println("Verifying input field labeled: " + label);
    assertThat(page.locator("label:has-text('" + label + "')")).isVisible();
    assertThat(page.locator("#order_no")).isVisible();
}

@Then("User should see a {string} button")
public void verifyButton(String buttonText) {
    System.out.println("Verifying button: " + buttonText);
    assertThat(page.locator("button:has-text('" + buttonText + "')")).isVisible();
}

@Then("The order status should be {string}")
public void verifyOrderStatus(String expectedStatus) {
    System.out.println("Verifying order status: " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Then("User should see an empty area for search results")
public void verifyEmptySearchResultsArea() {
    System.out.println("Verifying empty search results area");
    assertThat(page.locator(".result")).isVisible();
    assertThat(page.locator(".result")).isEmpty();
}

@When("User enters order number {string} and tracks it")
public void enterOrderAndTrack(String orderNo) {
    System.out.println("Entering order number: " + orderNo + " and clicking Track Order");
    page.locator("#order_no").fill(orderNo);
    page.locator("button:has-text('Track Order')").click();
}

@When("User tracks an empty order number")
public void trackEmptyOrderNumber() {
    System.out.println("Leaving order number empty and clicking Track Order");
    page.locator("#order_no").fill(""); // Ensure the field is empty
    page.locator("button:has-text('Track Order')").click();
}

@Given("User navigates to the Order Search page")
public void navigateToOrderSearchPage() {
    System.out.println("Navigating to http://localhost:7070/");
    page.navigate("http://localhost:7070/");
}

@Then("User should see the title {string}")
public void verifyPageTitle(String title) {
    System.out.println("Verifying page title: " + title);
    assertThat(page.locator("h1")).containsText(title);
}

@Then("The result area should display {string}")
public void verifyResultAreaMessage(String expectedMessage) {
    System.out.println("Verifying result area message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@Given("User is on the Order Search page")
public void userIsOnOrderSearchPage() {
    System.out.println("Navigating to http://localhost:7070/");
    page.navigate("http://localhost:7070/");
}

@When("User enters an invalid order number {string} and tracks it")
public void enterInvalidOrderAndTrack(String invalidOrderNo) {
    System.out.println("Entering invalid order number: " + invalidOrderNo + " and clicking Track Order");
    page.locator("#order_no").fill(invalidOrderNo);
    page.locator("button:has-text('Track Order')").click();
}

}
