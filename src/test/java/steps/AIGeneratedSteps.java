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
public void verifyPageTitle(String title) {
    System.out.println("Executing: I should see the title " + title);
    assertThat(page.locator("h1, h2")).isVisible();
    assertThat(page.locator("h1, h2")).containsText(title);
}

@Then("I should see the search type dropdown")
public void verifySearchTypeDropdown() {
    System.out.println("Executing: I should see the search type dropdown");
    assertThat(page.locator("#searchType")).isVisible();
}

@Then("I should see an empty area for error messages")
public void verifyEmptyErrorMessagesArea() {
    System.out.println("Executing: I should see an empty area for error messages");
    assertThat(page.locator("#error")).isVisible();
    assertThat(page.locator("#error")).isEmpty();
}

@Given("I navigate to the Order Search page")
public void navigateToOrderSearchPage() {
    System.out.println("Executing: I navigate to the Order Search page");
    page.navigate("http://localhost:7070/");
    assertThat(page).hasURL("http://localhost:7070/");
}

@Then("I should see the input field for search query")
public void verifyInputFieldForSearchQuery() {
    System.out.println("Executing: I should see the input field for search query");
    assertThat(page.locator("#orderIdInput")).isVisible();
}

@Then("I should see an empty area for display status")
public void verifyEmptyDisplayStatusArea() {
    System.out.println("Executing: I should see an empty area for display status");
    assertThat(page.locator("#displayStatus")).isVisible();
    assertThat(page.locator("#displayStatus")).isEmpty();
}

@Then("I should see {string} as an option")
public void verifyDropdownOption(String optionText) {
    System.out.println("Executing: I should see \"" + optionText + "\" as an option");
    assertThat(page.locator("#searchType").locator("option", new Locator.LocatorOptions().setHasText(optionText))).isVisible();
}

@When("I interact with the search type dropdown")
public void interactWithSearchTypeDropdown() {
    System.out.println("Executing: I interact with the search type dropdown");
    // No specific action needed here for verification, just ensuring it's visible
    assertThat(page.locator("#searchType")).isVisible();
}

@Then("I should see the {string} button")
public void verifySearchButton(String buttonText) {
    System.out.println("Executing: I should see the " + buttonText + " button");
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).containsText(buttonText);
}

@Then("I should see an empty area for order details")
public void verifyEmptyOrderDetailsArea() {
    System.out.println("Executing: I should see an empty area for order details");
    assertThat(page.locator("#orderDetails")).isVisible();
    assertThat(page.locator("#orderDetails")).isEmpty();
}

}
