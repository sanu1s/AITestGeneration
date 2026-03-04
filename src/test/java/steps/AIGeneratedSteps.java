package steps;

import com.microsoft.playwright.Page;
import com.microsoft.playwright.options.AriaRole;
import com.microsoft.playwright.options.LoadState;
import com.microsoft.playwright.assertions.PlaywrightAssertions;
import io.cucumber.java.en.*;
import java.util.regex.Pattern;
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

@Then("I should see the title {string}")
public void verifyPageTitle(String expectedTitle) {
    System.out.println("Executing: I should see the title " + expectedTitle);
    assertThat(page).hasTitle(expectedTitle);
}

@Then("I should see an empty area for error messages")
public void verifyEmptyErrorMessagesArea() {
    System.out.println("Executing: I should see an empty area for error messages");
    assertThat(page.locator("#error")).isVisible();
    assertThat(page.locator("#error")).isEmpty();
}

@Then("I should see a {string} button")
public void verifySearchButton(String buttonText) {
    System.out.println("Executing: I should see a " + buttonText + " button");
    assertThat(page.locator("#searchBtn")).isVisible();
    assertThat(page.locator("#searchBtn")).hasText(buttonText);
}

@Then("I should see the search type dropdown with options {string} and {string}")
public void verifySearchTypeDropdownOptions(String option1, String option2) {
    System.out.println("Executing: I should see the search type dropdown with options " + option1 + " and " + option2);
    assertThat(page.locator("#searchType")).isVisible();
    assertEquals(Arrays.asList(option1, option2), page.locator("#searchType option").allTextContents());
}

@Then("I should see an empty area for display status")
public void verifyEmptyDisplayStatusArea() {
    System.out.println("Executing: I should see an empty area for display status");
    assertThat(page.locator("#displayStatus")).isVisible();
    assertThat(page.locator("#displayStatus")).isEmpty();
}

@Then("I should see an input field with placeholder {string}")
public void verifyInputFieldPlaceholder(String expectedPlaceholder) {
    System.out.println("Executing: I should see an input field with placeholder " + expectedPlaceholder);
    assertThat(page.locator("#orderIdInput")).hasAttribute("placeholder", expectedPlaceholder);
}

@When("I select {string} from the search type dropdown")
public void selectFromSearchTypeDropdown(String option) {
    System.out.println("Executing: I select " + option + " from the search type dropdown");
    page.locator("#searchType").selectOption(option);
}

@Given("I navigate to {string}")
public void navigateToUrl(String url) {
    System.out.println("Executing: I navigate to " + url);
    page.navigate(url);
}

@Then("the {string} option should be selected by default")
public void verifyDefaultSelectedOption(String defaultOption) {
    System.out.println("Executing: the " + defaultOption + " option should be selected by default");
    assertEquals(defaultOption, (String) page.locator("#searchType").evaluate("el => el.options[el.selectedIndex].text"));
}

@Then("I should see an empty area for order details")
public void verifyEmptyOrderDetailsArea() {
    System.out.println("Executing: I should see an empty area for order details");
    assertThat(page.locator("#orderDetails")).isVisible();
    assertThat(page.locator("#orderDetails")).isEmpty();
}

}
