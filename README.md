

---

# TO-DO

- Review Pry debugging to understand if @event = current_user is working
- Review Helpers
- Modify an Event show page to make possible to attend

# Doubts

- Why I was able to use a link direction that didn't include routes paths?

# Useful

- Faker gem
- Rails pry, requires Appraisal

If you can find a model with little dependencies, a good first integration test to write might be a test for updating a record.
Common integration tests:


1. Generate some test data
1. Log into the application
1. Visit the page I’m interested in
1. Perform whatever clicks and typing need to happen in order to exercise the feature I’m testing
1. Perform an *assertion*
