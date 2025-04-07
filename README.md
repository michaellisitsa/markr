# README

## Adding Records

- Add test or result

```ruby
test = Test.create(id:1)
Result.create!(student_number: 1, first_name: 'michael', last_name: 'lisitsa', summary_available: 10, summary_obtained: 4, test_id: test.id)
```

- Add to existing model

```ruby

test = Test.find("1")
result = Result.create!(student_number: 2, first_name: 'john', last_name: 'smith', summary_available: 10, summary_obtained: 5, test_id: test.id)
```

## Accessing result / test

1. result [http://localhost:10005/result/1](http://localhost:10005/result/1)
2. test aggregate [http://localhost:10005/results/1/aggregate](http://localhost:10005/results/1/aggregate)

## TODO:

### Import script

- Checks if a previous combination of test-id and student-id combo exists
  - if yes: updates the available or obtained score if its higher
  - if no: creates the model
- if the document is missing key bits reject. Reject entire document.
