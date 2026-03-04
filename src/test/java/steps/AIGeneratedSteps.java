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

@Then("I should see the {string} dropdown with {string} selected by default")
public void verifySearchTypeDropdownDefaultSelection(String dropdownName, String expectedOption) {
    System.out.println("Executing: I should see the " + dropdownName + " dropdown with " + expectedOption + " selected by default");
    assertThat(page.locator("#searchType")).isVisible();
    assertEquals(expectedOption, (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text"));
}

@Then("I should see an empty area for displaying search results")
public void verifyEmptySearchResultsArea() {
    System.out.println("Executing: I should see an empty area for displaying search results");
    // Check if the potential result areas are present and empty or hidden
    assertThat(page.locator("#orderDetails")).isVisible(); // Assume it's visible but empty
    assertThat(page.locator("#orderDetails")).hasText("");
    assertThat(page.locator("#displayStatus")).isVisible(); // Assume it's visible but empty
    assertThat(page.locator("#displayStatus")).hasText("");
    assertThat(page.locator("#error")).isHidden(); // Error div should be hidden by default
}

@Then("I should see the title {string}")
public void verifyTitle(String expectedTitle) {
    System.out.println("Executing: I should see the title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Then("I should see the input field with placeholder {string}")
public void verifyInputFieldPlaceholder(String expectedPlaceholder) {
    System.out.println("Executing: I should see the input field with placeholder " + expectedPlaceholder);
    assertThat(page.locator("#orderIdInput")).isVisible();
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
}

@Given("I navigate to the OrderQuest page")
public void navigateToOrderQuestPage() {
    System.out.println("Executing: I navigate to the OrderQuest page");
    page.navigate("http://localhost:7070");
}

@Then("I should see a {string} button")
public void verifySearchButton(String buttonText) {
    System.out.println("Executing: I should see a " + buttonText + " button");
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@When("I select {string} from the {string} dropdown")
public void selectOptionFromDropdown(String optionText, String dropdownName) {
    System.out.println("Executing: I select " + optionText + " from the " + dropdownName + " dropdown");
    page.locator("#searchType").selectOption(new SelectOption().setLabel(optionText));
}

}
