# README

## Description

The approach taken was a standard Rails API, which stores each Result "mcq-test-result" with a FK to each Test "test-id".
The Result has an auto-incrementing primary key. The test is keyed by its test-id which is assumed to be unique.

## ASSUMPTIONS

Any key assumptions you made about the problem and solution spaces. Your boss hates questions, so you should feel free to make (and document!) whatever assumptions you need in order to get the prototype off the ground

- Results should be stored in a SQL database instead of as raw XML files.
  - Allows for analytics to be conducted using Rails ORM in the aggregate function
- We do not need to store Student numbers as unique records with a relationship to each Result, however this may be a likely feature so that can be achieved with a migration script.

## Instructions

```bash
docker compose build
```

```


## Basic API Methods

1. result [http://localhost:10005/result/1](http://localhost:10005/result/1)
2. test aggregate [http://localhost:10005/results/1/aggregate](http://localhost:10005/results/1/aggregate)

## TODO:

### Import script
- Checks if a previous combination of test-id and student-id combo exists
  - if yes: updates the available or obtained score if its higher
  - if no: creates the model
- if the document is missing key bits reject. Reject entire document.
```
