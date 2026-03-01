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

@Then("the input field with ID {string} should still be visible")
public void verifyInputFieldStillVisible(String id) {
    System.out.println("Executing: the input field with ID " + id + " should still be visible");
    assertThat(page.locator("#" + id)).isVisible();
}

@Then("I should see a dropdown to select search type with ID {string}")
public void verifySearchTypeDropdown(String id) {
    System.out.println("Executing: I should see a dropdown to select search type with ID " + id);
    assertThat(page.locator("#" + id)).isVisible();
    assertThat(page.locator("#" + id)).hasText("Order ID\nTracking Number"); // Check content based on provided locator text
}

@Then("I should see an empty area for displaying status messages with ID {string}")
public void verifyEmptyDisplayStatusArea(String id) {
    System.out.println("Executing: I should see an empty area for displaying status messages with ID " + id);
    assertThat(page.locator("#" + id)).isVisible();
    assertThat(page.locator("#" + id)).isEmpty();
}

@When("I select {string} from the search type dropdown with ID {string}")
public void selectFromSearchTypeDropdown(String option, String id) {
    System.out.println("Executing: I select " + option + " from the search type dropdown with ID " + id);
    page.locator("#" + id).selectOption(option);
}

@Given("I navigate to the Order Search page")
public void navigateToOrderSearchPage() {
    System.out.println("Executing: I navigate to the Order Search page");
    page.navigate("http://localhost:7070");
}

@Then("I should see a {string} button with ID {string}")
public void verifySearchButton(String buttonText, String id) {
    System.out.println("Executing: I should see a " + buttonText + " button with ID " + id);
    assertThat(page.locator("#" + id)).isVisible();
    assertThat(page.locator("#" + id)).hasText(buttonText);
}

@Then("I should see an input field with ID {string} and placeholder {string}")
public void verifyInputFieldWithPlaceholder(String id, String placeholder) {
    System.out.println("Executing: I should see an input field with ID " + id + " and placeholder " + placeholder);
    assertThat(page.locator("#" + id)).isVisible();
    assertThat(page.locator("#" + id)).hasAttribute("placeholder", placeholder);
}

@Then("I should see an empty area for displaying order details with ID {string}")
public void verifyEmptyOrderDetailsArea(String id) {
    System.out.println("Executing: I should see an empty area for displaying order details with ID " + id);
    assertThat(page.locator("#" + id)).isVisible();
    assertThat(page.locator("#" + id)).isEmpty();
}

@Then("the search type dropdown with ID {string} should have {string} selected")
public void verifySearchTypeDropdownSelected(String id, String expectedOption) {
    System.out.println("Executing: the search type dropdown with ID " + id + " should have " + expectedOption + " selected");
    assertThat(page.locator("#" + id)).hasValue(expectedOption);
}

@Then("I should see a prominent title {string}")
public void verifyProminentTitle(String title) {
    System.out.println("Executing: I should see a prominent title " + title);
    assertThat(page.locator("h1")).isVisible();
    assertThat(page.locator("h1")).containsText(title);
}

}
