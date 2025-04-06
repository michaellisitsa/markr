# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

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
