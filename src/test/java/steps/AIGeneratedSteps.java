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

@Then("I should see an empty area for search results")
public void verifyEmptySearchResultsArea() {
    System.out.println("Verifying empty search results area");
    assertThat(page.locator(".result")).isVisible();
    assertThat(page.locator(".result")).isEmpty();
}

@Then("I should see the title {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Verifying page title: " + expectedTitle);
    assertThat(page.locator("h1")).containsText(expectedTitle);
}

@Then("I should see an input field labeled {string}")
public void verifyInputFieldByLabel(String labelText) {
    System.out.println("Verifying input field labeled: " + labelText);
    assertThat(page.locator("label:has-text('" + labelText + "') + input")).isVisible();
}

@Then("the result should display {string}")
public void verifyResultDisplay(String expectedMessage) {
    System.out.println("Verifying result message: " + expectedMessage);
    assertThat(page.locator(".result")).containsText(expectedMessage);
}

@When("I leave the order number field empty")
public void leaveOrderNumberFieldEmpty() {
    System.out.println("Leaving order number field empty");
    page.locator("#order_no").fill("");
}

@Then("I should see a button with text {string}")
public void verifyButtonWithText(String buttonText) {
    System.out.println("Verifying button with text: " + buttonText);
    assertThat(page.locator("button:has-text('" + buttonText + "')")).isVisible();
}

@When("I click the {string} button")
public void clickTrackOrderButton(String buttonText) {
    System.out.println("Clicking button: " + buttonText);
    page.locator("button:has-text('" + buttonText + "')").click();
}

@Then("I should see an input field with id {string}")
public void verifyInputFieldById(String inputId) {
    System.out.println("Verifying input field with id: " + inputId);
    assertThat(page.locator("#" + inputId)).isVisible();
}

@When("I enter order number {string}")
public void enterOrderNumber(String orderNo) {
    System.out.println("Entering order number: " + orderNo);
    page.locator("#order_no").fill(orderNo);
}

@Given("I navigate to http://localhost:7070/")
public void navigateToOrderSearchPage() {
    System.out.println("Navigating to http://localhost:7070/");
    page.navigate("http://localhost:7070/");
}

}
