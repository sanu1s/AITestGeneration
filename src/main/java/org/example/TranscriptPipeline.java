package org.example;

import dev.langchain4j.model.googleai.GoogleAiGeminiChatModel;
import org.apache.spark.sql.*;
import static org.apache.spark.sql.functions.*;
import dev.langchain4j.model.openai.OpenAiChatModel;
import dev.langchain4j.service.AiServices;

import java.util.ArrayList;
import java.util.List;
import dev.langchain4j.model.chat.ChatModel;

public class TranscriptPipeline {

    // Define AI Service for Use Case generation
    interface UseCaseAssistant {
        String analyze(String transcript);
    }

    public static void main(String[] args) {
         List<String> steps=new ArrayList<>();
        // 1. Initialize Spark Session
        SparkSession spark = SparkSession.builder()
                .appName("GradleJavaSpark2026")
                .master("local[*]")
                .config("spark.driver.bindAddress", "127.0.0.1") // Explicitly set the binding address
                .config("spark.driver.host", "localhost")      // Ensure the driver host is also local
                .getOrCreate();

        // 2.Loading a CSV file
        Dataset<Row> rawTranscripts = spark.read()
                .option("header", "true")
                .option("inferSchema", "true")
                .csv("src/main/resources/Data.csv");

        // 3. Clean Noisy Data using Spark SQL Regex
        // Removes filler words (um, uh, you know) and timestamps like [00:12:34]
        String noisePattern = "(?i)\\b(um|uh|you know|like|actually)\\b|\\[\\d{2}:\\d{2}:\\d{2}\\]";

        Dataset<Row> cleanedTranscripts = rawTranscripts.withColumn("Text",
                regexp_replace(col("Text"), noisePattern, ""));


        // 4. Initialize LangChain4j Model and Service fro open AI
        /*OpenAiChatModel model = OpenAiChatModel.builder()
                .apiKey("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")
                .modelName("gpt-4o") // Current 2026 standard
                .build();*/
        ChatModel model = GoogleAiGeminiChatModel.builder()
                .apiKey("AIzaSyDTlGgsrgAanBCBtYLEBBoCfC3KPeFxyM8")
                .modelName("gemini-2.5-flash") // Use latest models like 2.5 Flash
                .temperature(0.7)
                .build();


        UseCaseAssistant assistant = AiServices.create(UseCaseAssistant.class, model);
        System.out.println("Initialize LangChain4j Model and Service");

        // 5. Feed cleaned data to LLM
        //List<Row> rows = rawTranscripts.select("cleaned_text").collectAsList();
        List<Row> rows = cleanedTranscripts.select("text").collectAsList();
        System.out.println("Feed cleaned data to LLM" + rows.getLast());
        for (Row row : rows) {
            System.out.println("Looping through the rows!!!!" + row.getString(0));
            String cleanText = row.getString(0);
            if (cleanText != null && !cleanText.trim().isEmpty()) {
                System.out.println("Going to feed AI");
                String result = assistant.analyze("Identify use cases from this transcript: " + cleanText);
                System.out.println("AI Analysis:\n" + result);
            }
        }

        spark.stop();
    }
}
