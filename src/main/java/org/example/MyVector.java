package org.example;

import java.util.ArrayList;
import java.util.List;
import dev.langchain4j.model.embedding.EmbeddingModel;
import io.qdrant.client.QdrantClient;
import io.qdrant.client.grpc.Points.ScoredPoint;
import io.qdrant.client.grpc.Points.SearchPoints;
import dev.langchain4j.model.embedding.onnx.allminilml6v2.AllMiniLmL6V2EmbeddingModel;

import io.qdrant.client.QdrantGrpcClient;
import io.qdrant.client.VectorsFactory;
import io.qdrant.client.grpc.Collections;
import io.qdrant.client.grpc.Points;

import java.time.Duration;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import static io.qdrant.client.PointIdFactory.id;
import static io.qdrant.client.ValueFactory.value;
import static io.qdrant.client.WithPayloadSelectorFactory.enable;

public class MyVector {
    /**
     * @param args
     * @throws ExecutionException
     * @throws InterruptedException
     */
    @SuppressWarnings("null")
    public static void main(String[] args) throws ExecutionException, InterruptedException {

        System.out.println("Hello World");
        // 1. Initialize Client (Default gRPC port is 6334)
        QdrantClient client = new QdrantClient(
                QdrantGrpcClient.newBuilder(
                                "domain",
                                6334,
                                true
                        )
                        .withApiKey("key")
                        .build()
        );
        // 2. Create a Collection (if it doesn't exist) with dimensions
         /* client.createCollectionAsync("my_collection_test2",
                Collections.VectorParams.newBuilder().setSize(768).setDistance(Collections.Distance.Cosine).build()
        ).get();*/
        
        // DEBUG: List available collections
        List<String> collections = client.listCollectionsAsync(Duration.ofSeconds(5)).get();
        System.out.println("Available Collections: " + collections);

        // 3. Ensure "my_collection_test" exists with correct dimensions (384 for MiniLM)
        if (!collections.contains("my_collection_test")) {
            System.out.println("Creating my_collection_test...");
            client.createCollectionAsync("my_collection_test",
                Collections.VectorParams.newBuilder()
                    .setSize(384)
                    .setDistance(Collections.Distance.Cosine)
                    .build()
            ).get();
        }

        System.out.println("Collection ready");
        EmbeddingModel embeddingModel = new AllMiniLmL6V2EmbeddingModel();

      //4 Check the size of the data thats being send
        String userPrompt="Trying to learn the vector database!!!!!";
        
        float[] vectorArray = embeddingModel.embed(userPrompt).content().vector();
           
         List<Float> vectorList = new ArrayList<>(vectorArray.length);
        for (float f : vectorArray) {
            vectorList.add(f);
        }
        System.out.println("Vector created successfully. Size: " + vectorList.size());

        // 4.5 Upsert sample data to ensure search has points
       // Instead of randomUUID which changes every time
       // UUID dynamicId = UUID.randomUUID(); 
       // Use a name-based UUID generated from the prompt text
       // This will always return the same UUID for the same string
       UUID deterministicId = UUID.nameUUIDFromBytes(userPrompt.getBytes());
       System.out.println("Upserting point with deterministic ID: " + deterministicId);
       System.out.println("Upserting sample point...");
        client.upsertAsync("my_collection_test", List.of(
            Points.PointStruct.newBuilder()
                .setId(id(deterministicId))
                .setVectors(VectorsFactory.vectors(vectorArray)) // Current vector as sample
                .putAllPayload(Map.of("original_prompt", value(userPrompt)))
                .build()
        )).get();
        
        // 5. Execute Search using the generated vector
        List<ScoredPoint> results = client.searchAsync(
            SearchPoints.newBuilder()
                .setCollectionName("my_collection_test")
                .addAllVector(vectorList) // Dynamically added prompt vector
                .setWithPayload(enable(true))
                .setLimit(1)
                .build()
        ).get();

        // 6. Process results
        for (ScoredPoint result : results) {
            System.out.println("Result: " + result.getPayloadMap().get("original_prompt"));
            System.out.println("Score: " + result.getScore());
        }
    }


}
