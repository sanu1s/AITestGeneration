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

@Then("I should see the title {string}")
public void verifyTitle(String title) {
    System.out.println("Executing: I should see the title " + title);
    assertThat(page.locator("h1:has-text('Order Search')")).isVisible();
}

@Then("I should see an input field labeled {string}")
public void verifyInputFieldLabeled(String label) {
    System.out.println("Executing: I should see an input field labeled " + label);
    if (label.equals("Order Number")) {
        assertThat(page.locator("label:has-text('Order Number')")).isVisible();
        assertThat(page.locator("#order_no")).isVisible();
    }

@Then("I should see a {string} button")
public void verifySearchButton(String buttonText) {
    System.out.println("Executing: I should see a " + buttonText + " button");
    assertThat(page.locator("button:has-text('Search')")).isVisible();
}

@When("I type {string} into the {string} field")
public void typeIntoField(String text, String fieldName) {
    System.out.println("Executing: I type " + text + " into the " + fieldName + " field");
    if (fieldName.equals("Order Number")) {
        page.locator("#order_no").fill(text);
    }

@Given("I navigate to the Order Search page")
public void navigateToOrderSearchPage() {
    System.out.println("Executing: I navigate to the Order Search page");
    page.navigate("http://localhost:7070/");
}

@Then("I should see a designated area for search results")
public void verifyResultArea() {
    System.out.println("Executing: I should see a designated area for search results");
    assertThat(page.locator(".result")).isVisible();
    assertThat(page.locator(".result")).isEmpty(); // Initial state should be empty
}

@Then("the {string} field should contain {string}")
public void verifyFieldContent(String fieldName, String expectedText) {
    System.out.println("Executing: the " + fieldName + " field should contain " + expectedText);
    if (fieldName.equals("Order Number")) {
        assertThat(page.locator("#order_no")).hasValue(expectedText);
    }

}
