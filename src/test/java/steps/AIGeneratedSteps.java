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

@Then("I should see an empty area for displaying search results")
public void iShouldSeeAnEmptyAreaForDisplayingSearchResults() {
    System.out.println("Executing: I should see an empty area for displaying search results");
    assertThat(page.locator("#orderDetails")).hasText("");
}

@Then("I should see the page title {string}")
public void iShouldSeeThePageTitle(String expectedTitle) {
    System.out.println("Executing: I should see the page title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Then("I should see the input field with placeholder {string}")
public void iShouldSeeTheInputFieldWithPlaceholder(String expectedPlaceholder) {
    System.out.println("Executing: I should see the input field with placeholder " + expectedPlaceholder);
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
}

@Then("I should see a {string} button")
public void iShouldSeeAButton(String buttonText) {
    System.out.println("Executing: I should see a " + buttonText + " button");
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@When("I select {string} from the search type dropdown")
public void iSelectFromTheSearchTypeDropdown(String optionText) {
    System.out.println("Executing: I select " + optionText + " from the search type dropdown");
    page.locator("#searchType").selectOption(optionText);
}

@Given("I navigate to {string}")
public void iNavigateToUrl(String url) {
    System.out.println("Executing: I navigate to " + url);
    page.navigate(url);
}

@Then("I should see the search type dropdown with {string} selected by default")
public void iShouldSeeTheSearchTypeDropdownWithSelectedByDefault(String expectedOption) {
    System.out.println("Executing: I should see the search type dropdown with " + expectedOption + " selected by default");
    String selectedOptionText = (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text");
    assertEquals(expectedOption, selectedOptionText);
}

}
