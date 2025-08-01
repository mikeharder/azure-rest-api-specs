# SearchServiceClient and SearchIndexClient

> see https://aka.ms/autorest

This is the AutoRest configuration file for SearchServiceClient and SearchIndexClient.


---
## Getting Started

To build the SDK for SearchServiceClient and SearchIndexClient, simply [Install AutoRest](https://aka.ms/autorest/install) and in this folder, run:

> `autorest`

To see additional help and options, run:

> `autorest --help`
---

## Configuration

### Basic Information
These are the global settings for SearchServiceClient and SearchIndexClient.

``` yaml
title: SearchClient
opt-in-extensible-enums: true
openapi-type: data-plane
tag: package-2025-08-01-preview

directive:
  - where:
      -  $.definitions.AnalyzedTokenInfo.properties.endOffset
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.AnalyzedTokenInfo.properties.position
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.AnalyzedTokenInfo.properties.startOffset
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.AnalyzedTokenInfo.properties.token
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.AutocompleteItem.properties.queryPlusText
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.AutocompleteItem.properties.text
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.AutocompleteResult.properties.value
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.GetIndexStatisticsResult.properties.documentCount
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.GetIndexStatisticsResult.properties.storageSize
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.IndexDocumentsResult.properties.value
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.IndexerExecutionResult.properties.errors
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.IndexerExecutionResult.properties.itemsFailed
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.IndexerExecutionResult.properties.itemsProcessed
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.IndexerExecutionResult.properties.status
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.IndexerExecutionResult.properties.warnings
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.IndexingResult.properties.key
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.IndexingResult.properties.status
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.IndexingResult.properties.statusCode
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.ListDataSourcesResult.properties.value
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.ListIndexersResult.properties.value
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.ListIndexesResult.properties.value
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.ListAliasesResult.properties.value
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.ListSkillsetsResult.properties.value
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.ListSynonymMapsResult.properties.value
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.SearchDocumentsResult.properties.value
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.SearchIndexerError.properties.errorMessage
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.SearchIndexerError.properties.statusCode
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.SearchIndexerStatus.properties.executionHistory
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.SearchIndexerStatus.properties.limits
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.SearchIndexerStatus.properties.status
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.SearchIndexerWarning.properties.message
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.SearchResult.properties["@search.score"]
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.SuggestDocumentsResult.properties.value
    suppress:
      - RequiredReadOnlyProperties
  - where:
      -  $.definitions.SuggestResult.properties["@search.text"]
    suppress:
      - RequiredReadOnlyProperties
```

### Tag: package-2025-08-01-preview

These settings apply only when `--tag=package-2025-08-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2025-08-01-preview'
input-file:
- preview/2025-08-01-preview/knowledgeagent.json
- preview/2025-08-01-preview/searchservice.json
- preview/2025-08-01-preview/searchindex.json
```

### Tag: package-2025-08-knowledgeagent-preview

These settings apply only when `--tag=package-2025-08-knowledgeagent-preview` is specified on the command line.

``` yaml $(tag) == 'package-2025-08-knowledgeagent-preview'
input-file:
- preview/2025-08-01-preview/knowledgeagent.json
```

### Tag: package-2025-08-searchservice-preview

These settings apply only when `--tag=package-2025-08-searchservice-preview` is specified on the command line.

``` yaml $(tag) == 'package-2025-08-searchservice-preview'
input-file:
- preview/2025-08-01-preview/searchservice.json
```

### Tag: package-2025-08-searchindex-preview

These settings apply only when `--tag=package-2025-08-searchindex-preview` is specified on the command line.

``` yaml $(tag) == 'package-2025-08-searchindex-preview'
input-file:
- preview/2025-08-01-preview/searchindex.json
```

### Tag: package-2025-05-01-preview

These settings apply only when `--tag=package-2025-05-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2025-05-01-preview'
input-file:
- preview/2025-05-01-preview/knowledgeagent.json
- preview/2025-05-01-preview/searchservice.json
- preview/2025-05-01-preview/searchindex.json
```

### Tag: package-2025-05-knowledgeagent-preview

These settings apply only when `--tag=package-2025-05-knowledgeagent-preview` is specified on the command line.

``` yaml $(tag) == 'package-2025-05-knowledgeagent-preview'
input-file:
- preview/2025-05-01-preview/knowledgeagent.json
```

### Tag: package-2025-05-searchservice-preview

These settings apply only when `--tag=package-2025-05-searchservice-preview` is specified on the command line.

``` yaml $(tag) == 'package-2025-05-searchservice-preview'
input-file:
- preview/2025-05-01-preview/searchservice.json
```

### Tag: package-2025-05-searchindex-preview

These settings apply only when `--tag=package-2025-05-searchindex-preview` is specified on the command line.

``` yaml $(tag) == 'package-2025-05-searchindex-preview'
input-file:
- preview/2025-05-01-preview/searchindex.json
```

### Tag: package-2025-03-01-preview

These settings apply only when `--tag=package-2025-03-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2025-03-01-preview'
input-file:
- preview/2025-03-01-preview/searchservice.json
- preview/2025-03-01-preview/searchindex.json
```

### Tag: package-2025-03-searchservice-preview

These settings apply only when `--tag=package-2025-03-searchservice-preview` is specified on the command line.

``` yaml $(tag) == 'package-2025-03-searchservice-preview'
input-file:
- preview/2025-03-01-preview/searchservice.json
```

### Tag: package-2025-03-searchindex-preview

These settings apply only when `--tag=package-2025-03-searchindex-preview` is specified on the command line.

``` yaml $(tag) == 'package-2025-03-searchindex-preview'
input-file:
- preview/2025-03-01-preview/searchindex.json
```

### Tag: package-2024-11-01-preview

These settings apply only when `--tag=package-2024-11-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2024-11-01-preview'
input-file:
- preview/2024-11-01-preview/searchservice.json
- preview/2024-11-01-preview/searchindex.json
```

### Tag: package-2024-11-searchservice-preview

These settings apply only when `--tag=package-2024-11-searchservice-preview` is specified on the command line.

``` yaml $(tag) == 'package-2024-11-searchservice-preview'
input-file:
- preview/2024-11-01-preview/searchservice.json
```

### Tag: package-2024-11-searchindex-preview

These settings apply only when `--tag=package-2024-11-searchindex-preview` is specified on the command line.

``` yaml $(tag) == 'package-2024-11-searchindex-preview'
input-file:
- preview/2024-11-01-preview/searchindex.json
```

### Tag: package-2024-09-01-preview

These settings apply only when `--tag=package-2024-09-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2024-09-01-preview'
input-file:
- preview/2024-09-01-preview/searchservice.json
- preview/2024-09-01-preview/searchindex.json
```

### Tag: package-2024-09-searchservice-preview

These settings apply only when `--tag=package-2024-09-searchservice-preview` is specified on the command line.

``` yaml $(tag) == 'package-2024-09-searchservice-preview'
input-file:
- preview/2024-09-01-preview/searchservice.json
```

### Tag: package-2024-09-searchindex-preview

These settings apply only when `--tag=package-2024-09-searchindex-preview` is specified on the command line.

``` yaml $(tag) == 'package-2024-09-searchindex-preview'
input-file:
- preview/2024-09-01-preview/searchindex.json
```

### Tag: package-2024-07-01

These settings apply only when `--tag=package-2024-07-01` is specified on the command line.

``` yaml $(tag) == 'package-2024-07-01'
input-file:
- stable/2024-07-01/searchservice.json
- stable/2024-07-01/searchindex.json
```

### Tag: package-2024-07-searchservice

These settings apply only when `--tag=package-2024-07-searchservice` is specified on the command line.

``` yaml $(tag) == 'package-2024-07-searchservice'
input-file:
- stable/2024-07-01/searchservice.json
```

### Tag: package-2024-07-searchindex

These settings apply only when `--tag=package-2024-07-searchindex` is specified on the command line.

``` yaml $(tag) == 'package-2024-07-searchindex'
input-file:
- stable/2024-07-01/searchindex.json
```

### Tag: package-2024-05-01-preview

These settings apply only when `--tag=package-2024-05-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2024-05-01-preview'
input-file:
- preview/2024-05-01-preview/searchservice.json
- preview/2024-05-01-preview/searchindex.json
```

### Tag: package-2024-05-searchservice-preview

These settings apply only when `--tag=package-2024-05-searchservice-preview` is specified on the command line.

``` yaml $(tag) == 'package-2024-05-searchservice-preview'
input-file:
- preview/2024-05-01-preview/searchservice.json
```

### Tag: package-2024-05-searchindex-preview

These settings apply only when `--tag=package-2024-05-searchindex-preview` is specified on the command line.

``` yaml $(tag) == 'package-2024-05-searchindex-preview'
input-file:
- preview/2024-05-01-preview/searchindex.json
```

### Tag: package-2024-03-01-preview

These settings apply only when `--tag=package-2024-03-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2024-03-01-preview'
input-file:
- preview/2024-03-01-Preview/searchservice.json
- preview/2024-03-01-Preview/searchindex.json
```

### Tag: package-2024-03-searchservice-preview

These settings apply only when `--tag=package-2024-03-searchservice-preview` is specified on the command line.

``` yaml $(tag) == 'package-2024-03-searchservice-preview'
input-file:
- preview/2024-03-01-Preview/searchservice.json
```

### Tag: package-2024-03-searchindex-preview

These settings apply only when `--tag=package-2024-03-searchindex-preview` is specified on the command line.

``` yaml $(tag) == 'package-2024-03-searchindex-preview'
input-file:
- preview/2024-03-01-Preview/searchindex.json
```

### Tag: package-2023-10-01-preview

These settings apply only when `--tag=package-2023-10-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2023-10-01-preview'
input-file:
- preview/2023-10-01-Preview/searchservice.json
- preview/2023-10-01-Preview/searchindex.json
```

#### Rename one of SearchError definitions

SearchError is duplicated between two swaggers, rename one of them

``` yaml $(tag) == 'package-2023-10-01-preview'
directive:
- from: preview/2023-10-01-Preview/searchservice.json
  where: $.definitions.SearchError
  transform: $["x-ms-client-name"] = "SearchServiceError"
```

### Tag: package-2023-10-searchservice-preview

These settings apply only when `--tag=package-2023-10-searchservice-preview` is specified on the command line.

``` yaml $(tag) == 'package-2023-10-searchservice-preview'
input-file:
- preview/2023-10-01-Preview/searchservice.json
```

### Tag: package-2023-10-searchindex-preview

These settings apply only when `--tag=package-2023-10-searchindex-preview` is specified on the command line.

``` yaml $(tag) == 'package-2023-10-searchindex-preview'
input-file:
- preview/2023-10-01-Preview/searchindex.json
```

### Tag: package-2023-07-01-preview

These settings apply only when `--tag=package-2023-07-01-preview` is specified on the command line.

``` yaml $(tag) == 'package-2023-07-01-preview'
input-file:
- preview/2023-07-01-Preview/searchservice.json
- preview/2023-07-01-Preview/searchindex.json
```

#### Rename one of SearchError definitions

SearchError is duplicated between two swaggers, rename one of them

``` yaml $(tag) == 'package-2023-07-01-preview'
directive:
- from: preview/2023-07-01-Preview/searchservice.json
  where: $.definitions.SearchError
  transform: $["x-ms-client-name"] = "SearchServiceError"
```

### Tag: package-2023-07-searchservice-preview

These settings apply only when `--tag=package-2023-07-searchservice-preview` is specified on the command line.

``` yaml $(tag) == 'package-2023-07-searchservice-preview'
input-file:
- preview/2023-07-01-Preview/searchservice.json
```

### Tag: package-2023-07-searchindex-preview

These settings apply only when `--tag=package-2023-07-searchindex-preview` is specified on the command line.

``` yaml $(tag) == 'package-2023-07-searchindex-preview'
input-file:
- preview/2023-07-01-Preview/searchindex.json
```

### Tag: package-2021-04-30-preview

These settings apply only when `--tag=package-2021-04-30-preview` is specified on the command line.

``` yaml $(tag) == 'package-2021-04-30-preview'
input-file:
- preview/2021-04-30-Preview/searchservice.json
- preview/2021-04-30-Preview/searchindex.json
```

#### Rename one of SearchError definitions

SearchError is duplicated between two swaggers, rename one of them

``` yaml $(tag) == 'package-2021-04-30-preview'
directive:
- from: preview/2021-04-30-Preview/searchservice.json
  where: $.definitions.SearchError
  transform: $["x-ms-client-name"] = "SearchServiceError"
```

### Tag: package-2021-04-searchservice-preview

These settings apply only when `--tag=package-2021-04-searchservice-preview` is specified on the command line.

``` yaml $(tag) == 'package-2021-04-searchservice-preview'
input-file:
- preview/2021-04-30-Preview/searchservice.json
```

### Tag: package-2021-04-searchindex-preview

These settings apply only when `--tag=package-2021-04-searchindex-preview` is specified on the command line.

``` yaml $(tag) == 'package-2021-04-searchindex-preview'
input-file:
- preview/2021-04-30-Preview/searchindex.json
```

### Tag: package-2020-06-searchservice-preview

These settings apply only when `--tag=package-2020-06-searchservice-preview` is specified on the command line.

``` yaml $(tag) == 'package-2020-06-searchservice-preview'
input-file:
- preview/2020-06-30-Preview/searchservice.json
```

### Tag: package-2020-06-searchindex-preview

These settings apply only when `--tag=package-2020-06-searchindex-preview` is specified on the command line.

``` yaml $(tag) == 'package-2020-06-searchindex-preview'
input-file:
- preview/2020-06-30-Preview/searchindex.json
```

### Tag: package-2020-06-searchservice

These settings apply only when `--tag=package-2020-06-searchservice` is specified on the command line.

``` yaml $(tag) == 'package-2020-06-searchservice'
input-file:
- stable/2020-06-30/searchservice.json
```

### Tag: package-2020-06-searchindex

These settings apply only when `--tag=package-2020-06-searchindex` is specified on the command line.

``` yaml $(tag) == 'package-2020-06-searchindex'
input-file:
- stable/2020-06-30/searchindex.json
```

### Tag: package-2023-11-searchservice

These settings apply only when `--tag=package-2023-11-searchservice` is specified on the command line.

``` yaml $(tag) == 'package-2023-11-searchservice'
input-file:
- stable/2023-11-01/searchservice.json
```

### Tag: package-2023-11-searchindex

These settings apply only when `--tag=package-2023-11-searchindex` is specified on the command line.

``` yaml $(tag) == 'package-2023-11-searchindex'
input-file:
- stable/2023-11-01/searchindex.json
```

### Tag: package-2019-05-searchservice-preview

These settings apply only when `--tag=package-2019-05-searchservice-preview` is specified on the command line.

``` yaml $(tag) == 'package-2019-05-searchservice-preview'
input-file:
- preview/2019-05-06-preview/searchservice.json
```

### Tag: package-2019-05-searchindex-preview

These settings apply only when `--tag=package-2019-05-searchindex-preview` is specified on the command line.

``` yaml $(tag) == 'package-2019-05-searchindex-preview'
input-file:
- preview/2019-05-06-preview/searchindex.json
```

### Tag: package-2019-05-searchservice

These settings apply only when `--tag=package-2019-05-searchservice` is specified on the command line.

``` yaml $(tag) == 'package-2019-05-searchservice'
input-file:
- stable/2019-05-06/searchservice.json
```

### Tag: package-2019-05-searchindex

These settings apply only when `--tag=package-2019-05-searchindex` is specified on the command line.

``` yaml $(tag) == 'package-2019-05-searchindex'
input-file:
- stable/2019-05-06/searchindex.json
```

---
# Code Generation

!!! READ THIS !!!
This swagger is ready for C# and Java.
!!! READ THIS !!!

## Java

These settings apply only when `--java` is specified on the command line.
Please also specify `--java-sdks-folder=<path to "SDKs" directory of your azure-sdk-for-java clone>`.

``` yaml $(java)
output-folder: $(java-sdks-folder)/search
namespace: com.azure.search
java: true
sync-methods: none
add-context-parameter: true
generate-client-interfaces: false
custom-types-subpackage: implementation.models
custom-types: AnalyzeResult
license-header: |-
  Copyright (c) Microsoft Corporation. All rights reserved.
  Licensed under the MIT License.
  Code generated by Microsoft (R) AutoRest Code Generator.
  Changes may cause incorrect behavior and will be lost if the code is regenerated.

require: ./autorest-custom-directives.md

vararg-properties: >-
  CorsOptions.allowedOrigins,
  AutocompleteOptions.searchFields,
  SearchOptions.facets, SearchOptions.highlightFields, SearchOptions.orderBy, SearchOptions.scoringParameters, SearchOptions.searchFields, SearchOptions.select,
  SuggestOptions.orderBy, SuggestOptions.searchFields, SuggestOptions.select

directive:
    # Rename IndexBatch to IndexBatchImpl when processing the API spec
    - rename-model:
          from: IndexBatch
          to: IndexBatchImpl

    # Use Document rather than Map<String, Object>
    - from:
          - DocumentsImpl.java
          - SearchResult.java
      where: $
      transform: >-
          return $
          .replace(/(package com.azure.search.models;)/g, "$1\nimport com.azure.search.Document;")
          .replace(/(package com.azure.search.implementation;)/g, "$1\nimport com.azure.search.Document;")
          .replace(/(Map<String, Object>)/g, "Document")
          .replace(/(Object)/g, "Document")

    # Use Document rather than Map<String, Object>
    - from: SuggestResult.java
      where: $
      transform: >-
          return $
          .replace(/(import java.util.Map;\n)/g, "import com.azure.search.Document;")
          .replace(/(Map<String, Object>)/g, "Document")

    # Enable configuration of RestProxy serializer
    - from: DocumentsImpl.java
      where: $
      transform: >-
          return $
          .replace(/(import com.azure.core.util.serializer.JacksonAdapter;)/g, "$1\nimport com.azure.core.util.serializer.SerializerAdapter;")
          .replace(/(@param client the instance of the service client containing this operation class.)/g, "$1\n     \* @param serializer the serializer to be used for service client requests.")
          .replace(/(public DocumentsImpl\(SearchIndexRestClientImpl client\) {)/g, "public DocumentsImpl(SearchIndexRestClientImpl client, SerializerAdapter serializer) {")
          .replace(/(this.service = RestProxy.create\(DocumentsService.class, client.getHttpPipeline\(\)\);)/g, "this.service = RestProxy.create(DocumentsService.class, client.getHttpPipeline(), serializer);")

    # Enable public access to client setters
    # Enable configuration of RestProxy serializer
    - from: SearchIndexRestClientImpl.java
      where: $
      transform: >-
          return $
          .replace(/(void setApiVersion)/g, "public void setApiVersion")
          .replace(/(void setIndexName)/g, "public void setIndexName")
          .replace(/(void setSearchDnsSuffix)/g, "public void setSearchDnsSuffix")
          .replace(/(void setSearchServiceName)/g, "public void setSearchServiceName")
          .replace(/(package com.azure.search.implementation;)/g, "$1\nimport com.azure.core.util.serializer.SerializerAdapter;")
          .replace(/(this\(RestProxy.createDefaultPipeline\(\)\);)/g, "this(RestProxy.createDefaultPipeline(), JacksonAdapter.createDefaultSerializerAdapter());")
          .replace(/(@param httpPipeline The HTTP pipeline to send requests through.)/g, "$1\n     \* @param serializer the serializer to be used for service client requests.")
          .replace(/(public SearchIndexRestClientImpl\(HttpPipeline httpPipeline\) {)/g, "public SearchIndexRestClientImpl(HttpPipeline httpPipeline, SerializerAdapter serializer) {")
          .replace(/(this.documents = new DocumentsImpl\(this\);)/g, "this.documents = new DocumentsImpl(this, serializer);")

    # Enable IndexAction to be used as a generic type
    # Enable serialization of both POJOs and Maps
    - from: IndexAction.java
      where: $
      transform: >-
          return $
          .replace(/(import com.fasterxml.jackson.annotation.JsonProperty;)/g, "import com.fasterxml.jackson.annotation.JsonAnyGetter;\nimport com.fasterxml.jackson.annotation.JsonIgnore;\n$1\nimport com.fasterxml.jackson.annotation.JsonUnwrapped;\n")
          .replace(/(class IndexAction)/g, "$1<T>")
          .replace(/(Unmatched properties from the message are deserialized this collection)/g, "The document on which the action will be performed.")
          .replace(/(@JsonProperty\(value = ""\))/g, "@JsonUnwrapped")
          .replace(/(private Map<String, Object> additionalProperties);/g, "private T document;\n\n    @JsonIgnore\n    private Map<String, Object> properties;\n\n    @JsonAnyGetter\n    private Map<String, Object> getParamMap() {\n        return properties;\n    }")
          .replace(/(Get the additionalProperties property: Unmatched properties from the\n\s+\* message are deserialized this collection.)/g, "Get the document on which the action will be performed; Fields other than the key are ignored for delete actions.")
          .replace(/(@return the additionalProperties value.)/g, "@return the document value.")
          .replace(/(public Map<String, Object> getAdditionalProperties\(\) {\s+return this.additionalProperties;\s+})/g, "public T getDocument() {\n        return this.document;\n    }")
          .replace(/(Set the additionalProperties property: Unmatched properties from the\s+\* message are deserialized this collection.)/g, "Get the document on which the action will be performed; Fields other than the key are ignored for delete actions.")
          .replace(/(@param additionalProperties the additionalProperties value to set.)/g, "@param document the document value to set.")
          .replace(/(public IndexAction setAdditionalProperties\(Map<String, Object> additionalProperties\) {\s+this.additionalProperties = additionalProperties;\s+return this;\s+})/g, "@SuppressWarnings(\"unchecked\")\n    public IndexAction<T> setDocument(T document) {\n        if (document instanceof Map) {\n            this.properties = (Map<String, Object>) document;\n            this.document = null;\n        } else {\n            this.document = document;\n            this.properties = null;\n        }\n        return this;\n    }")
          .replace(/(public IndexAction setActionType\(IndexActionType actionType\) {)/g, "public IndexAction<T> setActionType(IndexActionType actionType) {")

    # Enable configuration of RestProxy serializer
    - from: SearchIndexRestClientBuilder.java
      where: $
      transform: >-
          return $
          .replace(/(package com.azure.search.implementation;)/g, "$1\nimport com.azure.core.util.serializer.SerializerAdapter;")
          .replace(/(\* The HTTP pipeline to send requests through)/g, "\* The serializer to use for requests\n     \*\/\n    private SerializerAdapter serializer;\n\n    \/\*\*\n     \* Sets The serializer to use for requests.\n     \*\n     \* @param serializer the serializer value.\n     \* @return the SearchIndexRestClientBuilder.\n     \*\/\n    public SearchIndexRestClientBuilder serializer\(SerializerAdapter serializer\) {\n        this.serializer = serializer;\n        return this;\n    }\n\n    \/\*\n     $1")
          .replace(/(new SearchIndexRestClientImpl\(pipeline)/g, "$1, serializer")
          .replace(/(this.pipeline = RestProxy.createDefaultPipeline\(\);\s+})/g, "$1\n        if \(serializer == null\) {\n            this.serializer = JacksonAdapter.createDefaultSerializerAdapter\(\);\n        }")

    # Enable IndexBatchImpl to be used as a generic type
    - from: IndexBatchImpl.java
      where: $
      transform: >-
          return $
          .replace(/(public final class IndexBatchImpl)/g, "public class IndexBatchImpl<T>")
          .replace(/(private List<IndexAction> actions;)/g, "private List<IndexAction<T>> actions;")
          .replace(/(public List<IndexAction> getActions\(\) {)/g, "public List<IndexAction<T>> getActions() {")
          .replace(/(public IndexBatchImpl setActions\(List<IndexAction> actions\) {)/g, "protected IndexBatchImpl<T> setActions(List<IndexAction<T>> actions) {")

    # Replace use of generated IndexBatchImpl with custom IndexBatch class
    - from: DocumentsImpl.java
      where: $
      transform: >-
          return $
          .replace(/(IndexBatchImpl)/g, "IndexBatch")
          .replace(/(IndexBatch )/g, "IndexBatch<T> ")
          .replace(/(Mono<IndexDocumentsResult> indexAsync)/g, "<T> $1")
          .replace(/(Mono<SimpleResponse<IndexDocumentsResult>> index)/g, "<T> $1")
          .replace(/(import com.azure.search.implementation.models.IndexBatch)/g, "import com.azure.search.models.IndexBatch")

    # Change get to is
    - from: DocumentsImpl.java
      where: $
      transform: >-
          return $
          .replace(/(get(IncludeTotalResultCount|UseFuzzyMatching))/g, "is$2")

    # Mark IndexingResult as Serializable, for use in IndexBatchException
    - from: IndexingResult.java
      where: $
      transform: >-
          return $
          .replace(/(import com.fasterxml.jackson.annotation.JsonProperty;)/g, "$1\n\nimport java.io.Serializable;")
          .replace(/(class IndexingResult {)/g, "class IndexingResult implements Serializable {\n    private static final long serialVersionUID = -8604424005271188140L;")

    - from:
          - FacetResult.java
      where: $
      transform: >-
          return $.replace(/(public FacetResult setAdditionalProperties)/g, "FacetResult setAdditionalProperties")

    - from:
          - SearchResult.java
      where: $
      transform: >-
          return $.replace(/(public SearchResult setAdditionalProperties)/g, "SearchResult setAdditionalProperties")

    - from:
          - SuggestResult.java
      where: $
      transform: >-
          return $.replace(/(public SuggestResult setAdditionalProperties)/g, "SuggestResult setAdditionalProperties")

    - from:
          - FacetResult.java
          - SearchResult.java
          - SuggestResult.java
      where: $
      transform: >-
          return $
          .replace(/(getAdditionalProperties)/g, "getDocument")
          .replace(/(setAdditionalProperties)/g, "setDocument")
      reason: Provides a better description of the getter/setter for additionalProperties

    - from:
          - SearchResult.java
      where: $
      transform: >-
          return $
          .replace(/(package com.azure.search.models;)/g, "$1\nimport com.fasterxml.jackson.annotation.JsonIgnore;")
          .replace(/(public Document getDocument())/g, "@JsonIgnore\n$1")

    # Add static Collection<DataType> method to DataType
    - from: DataType.java
      where: $
      transform: >-
          return $
          .replace(/(public static final DataType EDM_COMPLEX_TYPE = fromString\("Edm.ComplexType"\);)/g, "$1\n\n    /**\n     * Returns a collection of a specific DataType\n     * @param dataType the corresponding DataType\n     * @return a Collection of the corresponding DataType\n     */\n    @JsonCreator\n    public static DataType Collection(DataType dataType) {\n        return fromString(String.format(\"Collection(%s)\", dataType.toString()));\n    }")

    # Workaround to fix bad host path parameters
    - from:
          - SkillsetsImpl.java
          - DatasetsImpl.java
          - DataSourcesImpl.java
          - IndexersImpl.java
          - IndexesImpl.java
          - SynonymMapsImpl.java
      where: $
      transform: >-
          return $
          .replace(/(this.getSearchServiceName)/g, "this.client.getSearchServiceName")
          .replace(/(this.getSearchDnsSuffix)/g, "this.client.getSearchDnsSuffix")

    # Replace VoidResponse with SimpleResponse<Void>
    - from:
          - SkillsetsImpl.java
          - DatasetsImpl.java
          - DataSourcesImpl.java
          - IndexersImpl.java
          - IndexesImpl.java
          - SynonymMapsImpl.java
      where: $
      transform: >-
          return $
          .replace(/(import com.azure.core.http.rest.VoidResponse;\n)/g, "")
          .replace(/(VoidResponse)/g, "SimpleResponse<Void>")

    # Change Field.analyzer/indexAnalyzer/searchAnalyzer's types from enum to string. Update setters and getters.
    - change-object-ref-to-string:
          path: "$.definitions.Field.properties.analyzer"
    - change-object-ref-to-string:
          path: "$.definitions.Field.properties.searchAnalyzer"
    - change-object-ref-to-string:
          path: "$.definitions.Field.properties.indexAnalyzer"

    # Change CustomAnalyzer.tokenizer/tokenFilters/charFilters' types from enum to string. Update setters and getters.
    - change-object-ref-to-string:
          path: "$.definitions.CustomAnalyzer.properties.tokenizer"
    - change-object-ref-to-string:
          path: "$.definitions.CustomAnalyzer.properties.tokenFilters.items"
    - change-object-ref-to-string:
          path: "$.definitions.CustomAnalyzer.properties.charFilters.items"

    - from:
          - SearchServiceRestClientImpl.java
      where: $
      transform: >-
          return $.replace(/(package com.azure.search.implementation;)/g, "$1\nimport com.azure.core.http.rest.RestProxy;")

    - from:
          - DataSourceType.java
      where: $
      transform: >-
          return $
          .replace(/(COSMOS_DB)/g, "COSMOS")
```

## C#

These settings apply only when `--csharp` is specified on the command line.
Please also specify `--csharp-sdks-folder=<path to "SDKs" directory of your azure-sdk-for-net clone>`.

``` yaml $(csharp)
csharp:
  azure-arm: true
  license-header: MICROSOFT_MIT_NO_VERSION
  namespace: Azure.Search
  clear-output-folder: true
  output-folder: $(csharp-sdks-folder)/search/Azure.Search/src/Generated

directive:
  # TODO: Simplify all the below regexes once we gain the ability to target them at specific files.

  # Rename the IDocumentsOperations interface and implementation, then make the interface internal so we can version it freely.
  # This requires these changes:
  #   1. Globally rename the interface and implementation class, along with comments and constructors
  #   2. Make the interface itself internal
  #   3. Make the SearchIndexClient.Documents property internal and rename it to DocumentsProxy
  #   4. Rename the type of the ISearchIndexClient.Documents property back to IDocumentsOperations, effectively removing the
  #      generated property from the interface (this reverses step 1 above just for this case)
  #
  # The ISearchIndexClient.Documents property is of type IDocumentsOperations, which is hand-written and delegates to DocumentsProxy.
  # This allows us to do two things:
  #   1. Abstract away the detail of whether GET or POST is used for read operations (Search, Suggest, etc.)
  #   2. Add methods with type parameters and custom serialization to make our SDK easier to use in strongly-typed scenarios
  #      (i.e. -- where the customer is using a class to represent their model because its schema is known at design-time)
  - from: source-file-csharp
    where: $
    transform: >-
      return $.
        replace( /DocumentsOperations/g, "DocumentsProxyOperations" ).
        replace( /public (partial interface IDocumentsProxyOperations)/g, "internal $1" ).
        replace( /public virtual (IDocumentsProxyOperations) Documents ({ get;)/g, "internal $1 DocumentsProxy $2" ).
        replace( /Documents = new DocumentsProxyOperations\(this\);/g, "DocumentsProxy = new DocumentsProxyOperations\(this\);" ).
        replace( /(Gets the) IDocumentsProxyOperations(.\s*\/\/\/ <\/summary>\s*)IDocumentsProxyOperations (Documents { get; })/g, "$1 IDocumentsOperations$2IDocumentsOperations $3" )
####
  # Adds extra JsonSerializerSettings parameters to all operation methods. This enables the SDK to delegate serialization/de-serialization to the custom serializer on a per-call basis.
  - from: source-file-csharp
    where: $
    transform: >-
      return $.
        replace( /(Async\(.*, CancellationToken cancellationToken = default\(CancellationToken\))/g, "$1, Newtonsoft.Json.JsonSerializerSettings requestSerializerSettings = null, Newtonsoft.Json.JsonSerializerSettings responseDeserializerSettings = null" ).
        replace( /(DeserializeObject<.+>\(.+), Client\.DeserializationSettings/g, "$1, responseDeserializerSettings ?? Client.DeserializationSettings" ).
        replace( /(SerializeObject\(.+), Client\.SerializationSettings/g , "$1, requestSerializerSettings ?? Client.SerializationSettings" )
####
  # Make GetWithHttpMessagesAsync generic so we can tell the deserializer what type to instantiate.
  # ASSUMPTION: Only GetWithHttpMessagesAsync makes a call to DeserializeObject<object>(), and only when it's deserializing the non-error response.
  # Ideally we'd be able to more finely target these transform rules.
  - from: source-file-csharp
    where: $
    transform: >-
      return $.
        replace( /(Task<AzureOperationResponse)<object>(> GetWithHttpMessagesAsync)/g, "$1<T>$2<T>" ).
        replace( /(DeserializeObject)<object>/g, "$1<T>" ).
        replace( /(var _result = new AzureOperationResponse)<object>/g, "$1<T>" )
####
  # Make SearchRequest/SuggestRequest/AutocompleteRequest internal, since they are implementation details.
  - from: source-file-csharp
    where: $
    transform: >-
      return $.
        replace( /public (partial class) (Suggest|Search|Autocomplete)(Request)/g, "internal $1 $2$3" )
####
  # Change the documentation for $select for Suggest. The .NET SDK treats this property differently than the REST API
  # does by default, and we don't want to change it for backwards compatibility reasons.
  - from: source-file-csharp
    where: $
    transform: >-
      return $.
        replace( /(The comma-separated list of fields to retrieve. If unspecified,) only the key field will be included in the results./g, "$1 all fields marked as retrievable in the schema are included." )
####
  # Make SuggestResult and DocumentSuggestResult generic so we can tell the deserializer what type to instantiate.
  # For SuggestResult, this means we also have to replace AdditionalProperties with a property of the generic type.
  - from: source-file-csharp
    where: $
    transform: >-
      return $.
        replace( /(public partial class DocumentSuggestResult)/g, "$1<T>" ).
        replace( /(IList<SuggestResult)/g, "$1<T>" ).
        replace( /(public partial class SuggestResult)/g, "$1<T>" ).
        replace( /(SuggestResult class.\s*\/\/\/ <\/summary>\s*)\/\/\/ <param name="additionalProperties">Unmatched properties from the\s*\/\/\/ message are deserialized this collection<\/param>/g, "$1/// <param name=\"document\">The document on which the suggested text is based.</param>" ).
        replace( /(public SuggestResult)\(IDictionary<string, object> additionalProperties = default\(IDictionary<string, object>\),/g, "$1(T document = default(T)," ).
        replace( /(public SuggestResult\(.*\)\s*{\s*)AdditionalProperties = additionalProperties;/g, "$1Document = document;" ).
        replace( /(\/\/\/ <summary>\s*\/\/\/) Gets or sets unmatched properties from the message are deserialized\s*\/\/\/ this collection(\s*\/\/\/ <\/summary>\s*)\[JsonExtensionData\]\s*public IDictionary<string, object> AdditionalProperties { get; set; }(\s*.*\s*\/\/\/ Gets the text of the suggestion result.)/g, "$1 Gets the document on which the suggested text is based. $2public T Document { get; private set; }$3" ).
        replace( /(SuggestGetWithHttpMessagesAsync)/g, "$1<T>" ).
        replace( /(SuggestPostWithHttpMessagesAsync)/g, "$1<T>" ).
        replace( /(AzureOperationResponse<DocumentSuggestResult)/g, "$1<T>" ).
        replace( /(DeserializeObject<DocumentSuggestResult)/g, "$1<T>" )
####
  # Improve documentation for SuggestParameters.
  - from: source-file-csharp
    where: $
    transform: >-
      return $.
        replace( /(\/\/\/) Additional parameters for SuggestGet operation./g, "$1 Parameters for filtering, sorting, fuzzy matching, and other suggestions query behaviors." )
####
  # Make IndexBatch and IndexAction generic so we can provide a strongly-typed interface all the way down.
  # For IndexAction, this means we also have to replace AdditionalProperties with a property of the generic type.
  # Also use IEnumerable<IndexAction> instead of IList for backwards compatibility.
  - from: source-file-csharp
    where: $
    transform: >-
      return $.
        replace( /(public partial class IndexBatch)/g, "$1<T>" ).
        replace( /IList<IndexAction>/g, "IEnumerable<IndexAction<T>>" ).
        replace( /(public partial class IndexAction)/g, "$1<T>" ).
        replace( /(IndexAction class.\s*\/\/\/ <\/summary>\s*)\/\/\/ <param name="additionalProperties">Unmatched properties from the\s*\n\s*\/\/\/ message are deserialized this collection<\/param>/g, "$1/// <param name=\"document\">The document on which the action will be performed.</param>" ).
        replace( /(public IndexAction)\(IDictionary<string, object> additionalProperties = default\(IDictionary<string, object>\),/g, "$1(T document = default(T)," ).
        replace( /(public IndexAction\(.*\)\s*{\s*)AdditionalProperties = additionalProperties;/g, "$1Document = document;" ).
        replace( /(\/\/\/ <summary>\s*\n\s*\/\/\/) Gets or sets unmatched properties from the message are deserialized\s*\n\s*\/\/\/ this collection(\s*\n\s*\/\/\/ <\/summary>\s*\n\s*)\[JsonExtensionData\]\s*\n\s*public IDictionary<string, object> AdditionalProperties ({ get; set; }\s*.*\s*\/\/\/ Gets or sets the operation to perform on a document)/g, "$1 Gets the document on which the action will be performed; Fields other than the key are ignored for delete actions. $2public T Document $3" ).
        replace( /(IndexWithHttpMessagesAsync)\((IndexBatch)/g, "$1<T>($2<T>" )
####
  # Make the constructors and AdditionalProperties property of FacetResult internal.
  - from: source-file-csharp
    where: $
    transform: >-
      return $.
        replace( /public (FacetResult\()/g, "internal $1" ).
        replace( /public (IDictionary<string, object> AdditionalProperties { get; set; }\s*.*\s*\/\/\/ Gets the approximate count of documents falling within the bucket)/g, "internal $1" )
####
  # Make SearchResult and DocumentSearchResult generic so we can tell the deserializer what type to instantiate.
  # For SearchResult, this means we also have to replace AdditionalProperties with a property of the generic type.
  - from: source-file-csharp
    where: $
    transform: >-
      return $.
        replace( /(public partial class DocumentSearchResult)/g, "$1<T>" ).
        replace( /(IList<SearchResult)/g, "$1<T>" ).
        replace( /(public partial class SearchResult)/g, "$1<T>" ).
        replace( /(SearchResult class.\s*\/\/\/ <\/summary>\s*)\/\/\/ <param name="additionalProperties">Unmatched properties from the\s*\/\/\/ message are deserialized this collection<\/param>/g, "$1/// <param name=\"document\">The document found by the search query.</param>" ).
        replace( /(public SearchResult)\(IDictionary<string, object> additionalProperties = default\(IDictionary<string, object>\),/g, "$1(T document = default(T)," ).
        replace( /(public SearchResult\(.*\)\s*{\s*)AdditionalProperties = additionalProperties;/g, "$1Document = document;" ).
        replace( /(\/\/\/ <summary>\s*\/\/\/) Gets or sets unmatched properties from the message are deserialized\s*\/\/\/ this collection(\s*\/\/\/ <\/summary>\s*)\[JsonExtensionData\]\s*public IDictionary<string, object> AdditionalProperties { get; set; }(\s*.*\s*\/\/\/ Gets the relevance score of the document compared to other)/g, "$1 Gets the document found by the search query. $2public T Document { get; private set; }$3" ).
        replace( /(SearchGetWithHttpMessagesAsync)/g, "$1<T>" ).
        replace( /(SearchPostWithHttpMessagesAsync)/g, "$1<T>" ).
        replace( /(AzureOperationResponse<DocumentSearchResult)/g, "$1<T>" ).
        replace( /(DeserializeObject<DocumentSearchResult)/g, "$1<T>" )
####
  # Make DocumentSearchResult.NextPageParameters and NextLink internal. The public interface for continuations has
  # historically been the custom-written SearchContinuationToken class, and we want to maintain that for backward
  # compatibility. Also, NextPageParameters is of type SearchRequest, which is internal. For this reason, we also need
  # to make the DocumentSearchResult constructors internal.
  - from: source-file-csharp
    where: $
    transform: >-
      return $.
        replace( /public (SearchRequest NextPageParameters { get; private set; })/g, "internal $1" ).
        replace( /public (string NextLink { get; private set; })/g, "internal $1" ).
        replace( /public (DocumentSearchResult\()/g, "internal $1" )
####
  # Improve documentation for SearchParameters and make the ScoringParameters property strongly-typed for ease of use
  # and backward compatibility.
  # TODO: Remove the check for JsonIgnore in the ScoringParameters regex below once we have the ability to target
  # specific files. It is currently necessary in order to only modify the property in SearchParameters and not
  # SearchRequest.
  - from: source-file-csharp
    where: $
    transform: >-
      return $.
        replace( /(\/\/\/) Additional parameters for SearchGet operation./g, "$1 Parameters for filtering, sorting, faceting, paging, and other search query behaviors." ).
        replace( /(public SearchParameters\(.*IList<)string(> scoringParameters = default\(IList<)string/g, "$1ScoringParameter$2ScoringParameter" ).
        replace( /(public IList<)string(> ScoringParameters { get; set; }\s*.*\s*.*\s*.*\s*.*\s*\[Newtonsoft.Json.JsonIgnore\])/g, "$1ScoringParameter$2" ).
        replace( /(IList<)string(> scoringParameters = default\(IList<)string(>\);\s*if \(searchParameters != null\))/g, "$1ScoringParameter$2ScoringParameter$3" )
####
  # Split the generated SearchGet and SearchPost methods into separate parts so we can re-use them for ContinueSearch.
  # TODO: Simplify the regexes below once we have the ability to target specific files. Later, remove this entirely once
  # AutoRest has more flexibility around paging (the current x-ms-pageable implementation doesn't work for us because it
  # doesn't model additional top-level response properties or continuation POST requests).
  - from: source-file-csharp
    where: $
    transform: >-
      return $.
        replace( /(Task<AzureOperationResponse<DocumentSearchResult<T>>>) (SearchGetWithHttpMessagesAsync<T>)\((.*), (Newtonsoft.Json.JsonSerializerSettings requestSerializerSettings = null, Newtonsoft.Json.JsonSerializerSettings responseDeserializerSettings = null)\);/g, "$1 $2($3, $4);\n\n        $1 Continue$2(string url, System.Guid? clientRequestId, Dictionary<string, List<string>> customHeaders, bool shouldTrace, string invocationId, CancellationToken cancellationToken, $4);\n" ).
        replace( /(Task<AzureOperationResponse<DocumentSearchResult<T>>>) (SearchPostWithHttpMessagesAsync<T>)\((.*), (Newtonsoft.Json.JsonSerializerSettings requestSerializerSettings = null, Newtonsoft.Json.JsonSerializerSettings responseDeserializerSettings = null)\);/g, "$1 $2($3, $4);\n\n        $1 Continue$2(string url, SearchRequest searchRequest, System.Guid? clientRequestId, Dictionary<string, List<string>> customHeaders, bool shouldTrace, string invocationId, CancellationToken cancellationToken, $4);\n" ).
        replace( /(_queryParameters.Add\(string.Format\("searchMode=\{0\}",.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*)(\/\/ Create HTTP transport objects)/g, "$1return await ContinueSearchGetWithHttpMessagesAsync<T>(_url, clientRequestId, customHeaders, _shouldTrace, _invocationId, cancellationToken, requestSerializerSettings, responseDeserializerSettings).ConfigureAwait(false);\n        }\n\n        public async Task<AzureOperationResponse<DocumentSearchResult<T>>> ContinueSearchGetWithHttpMessagesAsync<T>(string _url, System.Guid? clientRequestId, Dictionary<string, List<string>> customHeaders, bool _shouldTrace, string _invocationId, CancellationToken cancellationToken, JsonSerializerSettings requestSerializerSettings, JsonSerializerSettings responseDeserializerSettings)\n        {\n            $2" ).
        replace( /(docs\/search.post.search.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*.*\s*)(\/\/ Create HTTP transport objects)/g, "$1return await ContinueSearchPostWithHttpMessagesAsync<T>(_url, searchRequest, clientRequestId, customHeaders, _shouldTrace, _invocationId, cancellationToken, requestSerializerSettings, responseDeserializerSettings).ConfigureAwait(false);\n        }\n\n        public async Task<AzureOperationResponse<DocumentSearchResult<T>>> ContinueSearchPostWithHttpMessagesAsync<T>(string _url, SearchRequest searchRequest, System.Guid? clientRequestId, Dictionary<string, List<string>> customHeaders, bool _shouldTrace, string _invocationId, CancellationToken cancellationToken, JsonSerializerSettings requestSerializerSettings, JsonSerializerSettings responseDeserializerSettings)\n        {\n            $2" )

# TODO: Remove this workaround once AutoRest fixes the incorrect code generation when using a parameterized host and both client and operation groups paths.
  - from: source-file-csharp
    where: $
    transform: >-
      if ($.includes("class DataSourcesOperations") || $.includes("class IndexersOperations") ||
        $.includes("class IndexesOperations") ||  $.includes("class SynonymMapsOperations") ||
        $.includes("class SkillsetsOperations"))

        return $.
          replace( /this.SearchServiceName/g, "Client.SearchServiceName" ).
          replace( /this.SearchDnsSuffix/g, "Client.SearchDnsSuffix" ).
          replace( /\"Client.SearchServiceName\"/g, "\"this.Client.SearchServiceName\"" ).
          replace( /\"Client.SearchDnsSuffix\"/g, "\"this.Client.SearchDnsSuffix\"" );
      return $;  
####
  # The following regex are required to make the generated Field class conform to the needs of the custom implementation
  # that we've had in the Azure Search .NET SDK since it was first released. We've decided to keep the custom behavior of
  # Field just for .NET for the sake of backward compatibility, but for other languages the client behavior will conform
  # to the REST API.
  #
  # To achieve this, we need to make the generated constructors internal, as well as some of the generated properties.
  - from: source-file-csharp
    where: $
    transform: >-
        return $.
          replace( /public (Field\(\))/g, "internal $1" ).
          replace( /public (Field\(string name,)/g, "internal $1" ).
          replace( /public (bool\? Key { get; set; })/g, "internal $1" ).
          replace( /public (bool\? Retrievable { get; set; })/g, "internal $1" ).
          replace( /public (bool\? Searchable { get; set; })/g, "internal $1" ).
          replace( /public (bool\? Filterable { get; set; })/g, "internal $1" ).
          replace( /public (bool\? Sortable { get; set; })/g, "internal $1" ).
          replace( /public (bool\? Facetable { get; set; })/g, "internal $1" );
```

## Multi-API/Profile support for AutoRest v3 generators

AutoRest V3 generators require the use of `--tag=all-api-versions` to select api files.

This block is updated by an automatic script. Edits may be lost!

``` yaml $(tag) == 'all-api-versions' /* autogenerated */
# include the azure profile definitions from the standard location
require: $(this-folder)/../../../../profiles/readme.md

# all the input files across all versions
input-file:
  - $(this-folder)/preview/2024-05-01-preview/searchservice.json
  - $(this-folder)/preview/2024-05-01-preview/searchindex.json
  - $(this-folder)/preview/2024-03-01-Preview/searchservice.json
  - $(this-folder)/preview/2024-03-01-Preview/searchindex.json
  - $(this-folder)/preview/2023-10-01-Preview/searchservice.json
  - $(this-folder)/preview/2023-10-01-Preview/searchindex.json
  - $(this-folder)/preview/2023-07-01-Preview/searchservice.json
  - $(this-folder)/preview/2023-07-01-Preview/searchindex.json
  - $(this-folder)/preview/2021-04-30-Preview/searchservice.json
  - $(this-folder)/preview/2021-04-30-Preview/searchindex.json
  - $(this-folder)/preview/2020-06-30-Preview/searchservice.json
  - $(this-folder)/preview/2020-06-30-Preview/searchindex.json
  - $(this-folder)/preview/2020-06-30/searchservice.json
  - $(this-folder)/preview/2020-06-30/searchindex.json
  - $(this-folder)/preview/2019-05-06-preview/searchservice.json
  - $(this-folder)/preview/2019-05-06-preview/searchindex.json
  - $(this-folder)/stable/2019-05-06/searchservice.json
  - $(this-folder)/stable/2019-05-06/searchindex.json

```

If there are files that should not be in the `all-api-versions` set,
uncomment the  `exclude-file` section below and add the file paths.

``` yaml $(tag) == 'all-api-versions'
#exclude-file:
#  - $(this-folder)/Microsoft.Example/stable/2010-01-01/somefile.json
```

# Code Generation

## Swagger to SDK

This section describes what SDK should be generated by the automatic system.
This is not used by Autorest itself.

``` yaml $(swagger-to-sdk)
swagger-to-sdk:
  - repo: azure-sdk-for-net
```
