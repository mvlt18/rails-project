# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup
- [x] Include login
- [x] Include logout
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
- [-] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) **Dwayne instructed not to do this with my user as only current user should be able to create a new submission.
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate



git add app/controllers/application_controller.rb
git add app/controllers/submissions_controller.rb
git add app/controllers/users_controller.rb

git add app/helpers/colleges_helper.rb
git add app/helpers/submissions_helper.rb
git add app/models/college.rb
git add app/models/submission.rb

git add db/development.sqlite3
git add db/seeds.rb


modified:   app/controllers/application_controller.rb
modified:   app/controllers/submissions_controller.rb
modified:   app/controllers/users_controller.rb

modified:   app/helpers/colleges_helper.rb
modified:   app/helpers/submissions_helper.rb


modified:   app/models/college.rb


git add app/views
git commit -m "cleaned up views"
modified:   app/views/colleges/index.html.erb
modified:   app/views/colleges/show.html.erb
modified:   app/views/submissions/_form.html.erb
modified:   app/views/submissions/new.html.erb
modified:   app/views/submissions/show.html.erb
modified:   app/views/users/edit.html.erb


Add at very end...
git add db/development.sqlite3
git add log/development.log
git commit -m "final version"

git add .gitignore
git commit -m "updated .gitignore"

config/initializers/omniauth.rb













****TO ADD:****

scope method

any more helpers?

validations + flash messages


modified:   app/views/submissions/_form.html.erb
modified:   db/development.sqlite3
deleted:    db/migrate/20190729182558_change_status_to_string_in_submission.rb
