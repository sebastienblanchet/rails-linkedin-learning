# Rails LinkedIn Learning

## Importing DB

Open mysql:
```bash
cd src/db
mysql -u rails_user -p
```

```SQL
USE simple_cms_development;
SOURCE simple_cms_development.sql;
```

## Build

```bash
cd src
bundle install
rails s
```

## Covered Topics

* **Chapter 2: Getting Started**
  * [v2.1](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v2.1): Blank rails project
  * [v2.3](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v2.3): Add rails_user to MYSQL db
  * [v2.4](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v2.4): Start up rails project, clean up dependencies
  * [v2.5](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v2.5): Generate vieew and controller with routing
  * [v2.6](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v2.6): Server requests and static assets
  * [v2.7](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v2.7): Overview of basic route types
* **Chapter 3: MVC & Dynamic Content**
  * [v3.1](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v3.1): Render view template in controller actions
  * [v3.2](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v3.2): Redirect controller action
  * [v3.3](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v3.3): View templates using HTML
  * [v3.4](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v3.4): Instance variables
  * [v3.5](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v3.5): Router links using controllers
  * [v3.6](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v3.6): URL Parameters
  * [v3.7](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v3.7): Dynamic template challenge
* **Chapter 4: Databases & Migrations**
  * [v4.3](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v4.3): Migrations overview, generate with rails CLI
  * [v4.4](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v4.4): Continued db migrations and MYSQL cmds
  * [v4.6](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v4.6): CMS Migrations challenge, mostly cli
* **Chapter 5: Models & ActiveRecord**
  * [v5.1](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v5.1): ActiveRecord and ActiveRelation intro
  * [v5.7](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v5.7): CRUD using ActiveRecord in Ruby console
* **Chapter 6: Routes: CRUD, REST/Ressourceful**
  * [v6.1](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v6.1): CRUD controllers for Subjects and Pages
  * [v6.2](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v6.2): Ressourceful REST routes
  * [v6.4](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v6.4): Ressoureful URL helpers
* **Chapter 7: CRUD Controller**
  * [v7.2](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v7.2): Read action as show command in cms subjects page
  * [v7.4](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v7.4): Create action new
  * [v7.5](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v7.5): Add submit form route, up to  ActiveModel::ForbiddenAttributesError
  * [v7.6](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v7.6): Strong parameters for user input
  * [v7.8](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v7.8): Edit and update actions
  * [v7.9](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v7.9): Partials and helpers
  * [v7.10](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v7.10): Delete and destroy actions
  * [v7.11](https://github.com/sebastienblanchet/rails-linkedin-learning/releases/tag/v7.11): Challenge, repeat for page
