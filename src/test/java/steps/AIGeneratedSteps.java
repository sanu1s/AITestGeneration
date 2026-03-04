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

@Then("I should see an empty area for search results")
public void iShouldSeeAnEmptyAreaForSearchResults() {
    System.out.println("Executing: I should see an empty area for search results");
    // Check if the result display areas are present but empty or hidden
    assertThat(page.locator("#orderDetails")).isVisible();
    assertThat(page.locator("#orderDetails")).isEmpty();
    assertThat(page.locator("#displayStatus")).isVisible();
    assertThat(page.locator("#displayStatus")).isEmpty();
    assertThat(page.locator("#error")).isHidden(); // Error area should be hidden initially
}

@Then("I should see the title {string}")
public void iShouldSeeTheTitle(String expectedTitle) {
    System.out.println("Executing: I should see the title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Given("I navigate to the OrderQuest page")
public void iNavigateToTheOrderQuestPage() {
    System.out.println("Executing: I navigate to the OrderQuest page");
    page.navigate("http://localhost:7070");
}

@Then("I should see a {string} button")
public void iShouldSeeAButton(String buttonText) {
    System.out.println("Executing: I should see a " + buttonText + " button");
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@Then("I should see an input field with placeholder {string}")
public void iShouldSeeAnInputFieldWithPlaceholder(String expectedPlaceholder) {
    System.out.println("Executing: I should see an input field with placeholder " + expectedPlaceholder);
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
}

@When("I select {string} from the search type dropdown")
public void iSelectFromTheSearchTypeDropdown(String optionText) {
    System.out.println("Executing: I select " + optionText + " from the search type dropdown");
    page.locator("#searchType").selectOption(new SelectOption().setLabel(optionText));
}

@Then("I should see the search type dropdown with {string} selected")
public void iShouldSeeTheSearchTypeDropdownWithSelected(String expectedSelection) {
    System.out.println("Executing: I should see the search type dropdown with " + expectedSelection + " selected");
    String selectedOptionText = (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text");
    assertEquals(expectedSelection, selectedOptionText);
}

}
