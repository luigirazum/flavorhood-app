# Sneak peek: Recipe app

## Learning objectives

- Use Ruby gems as a software packages system.
- Install Ruby on Rails framework.
- Understand Rails RESTful design and router.
- Use controllers to handle requests and render empty views.
- Understand Rails naming conventions.
- Use params from browser requests in a safe way.
- Use preprocessed HTML file with embedded Ruby code.
- Use layouts and templates for shared content.
- Use database migration files to maintain database schema.
- Use validations for models.
- Secure app from n+1 problems.
- Understand what ORM is.
- Write SQL queries with ActiveRecord.
- Set up associations between models.
- Build a web app that requires the user to log in.
- Describe the difference between authorization and authentication.
- Use Devise gem for authentication.
- Understand how sessions and cookies can support authentication.
- Limit access to web app resources based on authorization rules.
- Write unit tests using Rspec
- Write integration tests with capybara gem

### Estimated time: 21.5h

## Description

The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

### How to build the Recipe app

The result should look similar to the following data model (this is an Entity Relationship Diagram that you are already familiar with).

**If your team has 3 members your data model will be a little bit more complex:**

<p align="center">
  <img src="https://ik.imagekit.io/dqd3uh1at/recipe-app/3m/erd/recipe_erd.png?updatedAt=1707385208216" alt="Data model"  width="500px"  />
</p>


The app will have some common interfaces, but depending on your team size it will have a couple of extra ones. 

- A login page.
- A registration page.
- A recipes list (with all CRUD implementation, except for 'update').
- A list of all public recipes from other users with their names and total prices.

If your team has 3 members you should implement:

- Inventories list (with all CRUD implementation, except for 'update').
- Food list for a given inventory (with all CRUD implementation, except for 'update').
- Inventory shopping list, a shopping list, but only taking into consideration a chosen recipe and inventory.

**The wireframes below are only for teams of 3 people:**

<p align="center">
  <img src="https://ik.imagekit.io/dqd3uh1at/recipe-app/3m/wireframes/inventory_index.png?updatedAt=1707385320958" alt="List of all inventories for a user" width="250px" />
  <img src="https://ik.imagekit.io/dqd3uh1at/recipe-app/3m/wireframes/inventory_food.png?updatedAt=1707385232508" alt="Details of an inventory including food in it" width="250px" />
  <img src="https://ik.imagekit.io/dqd3uh1at/recipe-app/3m/wireframes/recipe_index.png?updatedAt=1707385232548" alt="List of all recipes for a user" width="250px" />
  <img src="https://ik.imagekit.io/dqd3uh1at/recipe-app/3m/wireframes/recipe_food.png?updatedAt=1707385232662" alt="Details of a recipe including food in it" width="250px" />
  <img src="https://ik.imagekit.io/dqd3uh1at/recipe-app/3m/wireframes/public_recipe_index.png?updatedAt=1707385232718" alt="List of all public recipes" width="250px" />
  <img src="https://ik.imagekit.io/dqd3uh1at/recipe-app/3m/wireframes/recipe_food_shopping_list.png?updatedAt=1707385232589" alt="Modal in recipe to select inventory for shopping list" width="250px" />
  <img src="https://ik.imagekit.io/dqd3uh1at/recipe-app/3m/wireframes/inventory_shopping_list.png?updatedAt=1707385232734" alt="Generated shopping list for a combination of recipe and inventory" width="250px" />
</p>

*IMPORTANT NOTE: Read **all** requirements before you start building your project.*

### General requirements

- Make sure that there are [no linter errors](https://github.com/microverseinc/linters-config).
- Make sure that you used correct [Gitflow](https://github.com/microverseinc/curriculum-transversal-skills/blob/main/git-github/articles/gitflow.md).
- Make sure that you documented your work [in a professional way](https://github.com/microverseinc/curriculum-transversal-skills/blob/main/documentation/articles/professional_repo_rules.md).

### Ruby requirements
- Follow our list of [best practices for Ruby](https://github.com/microverseinc/curriculum-ruby/blob/main/articles/ruby_best_practices.md).

### Project requirements

- You should follow the layout of the wireframes provided. You should personalize the rest of the design including colors, typographies, spacings, etc.
- Login page and registration page:
    - Should be built with Devise.
- Recipes list:
    - Should display a list of recipes created by the logged-in user as in the wireframe.
    - Should lead to recipe details.
- Public recipe list:
    - Should display a list of all public recipes ordered by newest as in the wireframe.
    - Should lead to recipe details.
    - If the user is the owner of the recipe, should allow the user to delete it.
- Recipe details:
    - Should display a toggle button that allows for a recipe to be made public or private.
    - If the recipe is public or the user is the owner of the recipe, should display the recipe details as in the wireframe.
    - If the user is the owner of the recipe, should lead to the form that allows the user to add new food.

- Make sure there are no N+1 queries happening.
- Create a navigation menu that allows users to open all of the pages you created.
- Write unit and integration tests

**If your team has 3 members these are requirements; otherwise, they are additional requirements**

- Inventories list:
    - Should display a list of inventories created by the logged-in user as in the wireframe.
    - Should lead to inventory details.
    - If the user is the owner of the inventory, should allow to delete it.
- Inventory details:
    - Should display the inventory details as in the wireframe.
    - Should lead to a form that allows users to add new food.
- Recipe details:
    - Should have a modal to choose an inventory to create a shopping list with, as in the wireframe.
- Inventory shopping list:
    - Should show the list of food that is missing by comparing the food in the recipe with the food in the inventory.
    - Should count the total food items and total price of the missing food.

**Technical setup**
- Set up the repository on GitHub and use Gitflow.
- Set up Devise for authentication.
- Set up RSpec and Capybara testing libraries.

### Workload distribution

To tackle this challenge, you need to create a Kanban board with a GitHub project that translates the requirements into a set of tasks that you will be able to use to organize your work. You will create your board in a separate activity.

You will be working in this way:
- All tasks should have time estimates and your job is to distribute them between team members in a fair way.
- The common tasks will be divided among all of you or completed as a team (pair programming).
- All tasks should be based on the cards from your Kanban board.

## Additional requirements

*These are all optional, but if you're interested in exploring this topic further, feel free to implement them. Any exploration here should be done outside program time.*

*If you decide to implement these requirements you should do it in a separate pull request. As always, remember to document your decision in GitHub comments.*

- Pagination or infinite scrolling for the lists.

**Remember to add cards to your Kanban board if you decide to implement additional tasks.**
