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

@Then("I should see {string} displayed")
public void iShouldSeeDisplayed(String expectedText) {
    System.out.println("Executing: I should see " + expectedText + " displayed");
    assertThat(page.locator(".result")).containsText(expectedText);
}

@When("User clicks the {string} button")
    public void userClicksTheButton(String buttonName) {
        System.out.println("Executing: User clicks the '" + buttonName + "' button");
        page.locator("button:has-text('" + buttonName + "')").click();
    }

@When("I enter {string} into the order number field")
public void iEnterOrderNumberIntoTheOrderNumberField(String orderNumber) {
    System.out.println("Executing: I enter " + orderNumber + " into the order number field");
    page.locator("#order_no").fill(orderNumber);
}

@Given("I am on the order tracking page")
public void iAmOnTheOrderTrackingPage() {
    System.out.println("Executing: I am on the order tracking page");
    page.navigate("http://127.0.0.1:8000/order/tracking");
    assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
}

@When("I click the {string} button")
public void iClickTheButton(String buttonText) {
    System.out.println("Executing: I click the " + buttonText + " button");
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("I should see the status {string}")
public void iShouldSeeTheStatus(String expectedStatus) {
    System.out.println("Executing: I should see the status " + expectedStatus);
    assertThat(page.locator(".result")).containsText(expectedStatus);
}

@Given("User is on the {string} page")
    public void userIsOnThePage(String pageName) {
        System.out.println("Executing: User is on the '" + pageName + "' page");
        page.navigate("http://127.0.0.1:8000/order/tracking");
        assertThat(page).hasURL("http://127.0.0.1:8000/order/tracking");
    }

@Then("the order status {string} should be displayed")
    public void theOrderStatusShouldBeDisplayed(String expectedStatus) {
        System.out.println("Executing: The order status '" + expectedStatus + "' should be displayed");
        assertThat(page.locator(".result")).containsText(expectedStatus);
    }

@Then("{string} should be visible")
    public void shouldBeVisible(String expectedText) {
        System.out.println("Executing: '" + expectedText + "' should be visible");
        assertThat(page.locator(".result")).containsText(expectedText);
    }

@When("User enters order number {string}")
    public void userEntersOrderNumber(String orderNumber) {
        System.out.println("Executing: User enters order number '" + orderNumber + "'");
        page.locator("#order_no").fill(orderNumber);
    }

}
