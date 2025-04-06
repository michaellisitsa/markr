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

## Accessing result

1. Go to browser at [http://localhost:10005/results/1](http://localhost:10005/results/1)
