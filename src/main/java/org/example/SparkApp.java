package org.example;

import org.apache.spark.sql.Dataset;
import org.apache.spark.sql.Row;
import org.apache.spark.sql.SparkSession;

import java.util.List;

import static org.apache.spark.sql.functions.col;
import static org.apache.spark.sql.functions.regexp_replace;

public class SparkApp {
    public static void main(String[] args) {
        SparkSession spark = SparkSession.builder()
                .appName("GradleJavaSpark2026")
                .master("local[*]")
                .config("spark.driver.bindAddress", "127.0.0.1") // Explicitly set the binding address
                .config("spark.driver.host", "localhost")      // Ensure the driver host is also local
                .getOrCreate();

        // Loading a CSV file
        Dataset<Row> rawTranscripts = spark.read()
                .option("header", "true")
                .option("inferSchema", "true")
                .csv("src/main/resources/Data.csv");

        // 3. Clean Noisy Data using Spark SQL Regex
        // Removes filler words (um, uh, you know) and timestamps like [00:12:34]
       String noisePattern = "(?i)\\b(um|uh|you know|like|actually)\\b|\\[\\d{2}:\\d{2}:\\d{2}\\]";

        Dataset<Row> cleanedTranscripts = rawTranscripts.withColumn("Text",
                regexp_replace(col("Text"), noisePattern, ""));



        List<Row> rows = cleanedTranscripts.select("text").collectAsList();
        System.out.println("Feed cleaned data to LLM"+rows.getLast());


        for (Row row : rows) {
            System.out.println("Looping through the rows!!!!" + row.getString(0));
        }
        spark.stop();
    }
}
