plugins {
    id("java")
    application
    id("io.qameta.allure") version "3.0.1"
}

java {
    toolchain {
        languageVersion.set(JavaLanguageVersion.of(21))
    }
}

application {
    mainClass.set("org.example.TranscriptPipelineUsingBDD")
}

group = "org.example"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
    maven {
        url =uri("packages.atlassian.com")
        url =uri("https://packages.atlassian.com/maven/repository/public")

    }

}

dependencies {
    // JUnit 5 & Platform
    implementation(platform("org.junit:junit-bom:5.10.2"))
    implementation("org.junit.platform:junit-platform-launcher")
    implementation("org.junit.platform:junit-platform-suite")
    implementation("org.junit.jupiter:junit-jupiter")
    implementation("org.junit.platform:junit-platform-engine")

    // Cucumber
    implementation("io.cucumber:cucumber-java:7.14.0")
    implementation("io.cucumber:cucumber-junit-platform-engine:7.14.0")
    implementation("io.cucumber:cucumber-picocontainer:7.14.0")

    implementation("io.qdrant:client:1.16.2")
    implementation(platform("dev.langchain4j:langchain4j-bom:1.10.0"))

    // Add core and specific model dependencies
    implementation("dev.langchain4j:langchain4j")
    implementation("dev.langchain4j:langchain4j-open-ai")
    implementation("org.apache.spark:spark-sql_2.13:4.1.1")
    {
        exclude(group = "org.glassfish.jersey")
        exclude(group="javax.ws.rs")
        exclude(group="jakarta.ws.rs")
    }
// Optional: Machine Learning or Streaming
    implementation("org.apache.spark:spark-mllib_2.13:4.1.1")
    {
        exclude(group = "org.glassfish.jersey")
        exclude(group="javax.ws.rs")
        exclude(group="jakarta.ws.rs")

    }
    implementation("org.apache.spark:spark-streaming_2.13:4.1.1")
    {
        exclude(group = "org.glassfish.jersey")
        exclude(group="javax.ws.rs")
        exclude(group="jakarta.ws.rs")

    }
    implementation("org.apache.spark:spark-streaming_2.13:4.1.1") {
        exclude(group = "org.glassfish.jersey")
        exclude(group = "javax.ws.rs")
        exclude(group = "jakarta.ws.rs")
    }

    //Gemini AI Support
    implementation(platform("dev.langchain4j:langchain4j-bom:1.10.0"))
    implementation("dev.langchain4j:langchain4j")
    // Specifically for Google's Gemini models
    implementation ("dev.langchain4j:langchain4j-google-ai-gemini")


    // Playwright Main Library (Updated for 2026)
    implementation("com.microsoft.playwright:playwright:1.57.0")

    // Jira Client
    implementation("com.atlassian.jira:jira-rest-java-client-core:7.0.1")
// Explicitly add missing transitive dependencies common in 2026
    implementation("io.atlassian.fugue:fugue:5.0.1")
    //Explicitly add missing transitive dependencies common in 2026
    implementation("io.atlassian.fugue:fugue:5.0.1")
    // Google Gen AI SDK (Recommended 2026 standard)
    implementation("com.google.genai:google-genai:1.15.0")
    implementation("com.google.cloud:google-cloud-vertexai:1.15.0")

    implementation("jakarta.ws.rs:jakarta.ws.rs-api:3.1.0")
    implementation("org.glassfish.jersey.core:jersey-client:3.1.3")
    implementation("org.glassfish.jersey.core:jersey-common:3.1.3")
    implementation("org.glassfish.jersey.inject:jersey-hk2:3.1.3")
    implementation("dev.langchain4j:langchain4j-embeddings-all-minilm-l6-v2:0.36.2")


    // GitHub & Git Integration
    implementation("org.eclipse.jgit:org.eclipse.jgit:7.1.0.202411261347-r")
    implementation("org.kohsuke:github-api:1.330")

    // Allure
    testImplementation("io.qameta.allure:allure-cucumber7-jvm:2.25.0")
    testImplementation("io.qameta.allure:allure-junit-platform:2.25.0")
}

allure {
    version.set("2.25.0")
}

tasks.test {
    useJUnitPlatform()
    systemProperty ("cucumber.junit-platform.discovery.as-root-engine", "true")

}
configurations.all {
    resolutionStrategy {
        force(
            "jakarta.ws.rs:jakarta.ws.rs-api:3.1.0",
            "org.glassfish.jersey.core:jersey-client:3.1.3",
            "org.glassfish.jersey.core:jersey-common:3.1.3",
            "org.glassfish.jersey.inject:jersey-hk2:3.1.3"
        )
    }
}

