# Notes


## Arch

MVC Arch
```txt
Browser ---> Controler <----> model <----> database
^               V
View <----------
```

## Generating Controller & View

```bash
# show everything
rails generate

rails generate {controller} {controllerName} {views}
```

Demo, shows everything it will create
```bash
λ rails generate controller FirstController index
Running via Spring preloader in process 92923
      create  app/controllers/first_controller.rb
       route  get 'first/index'
      invoke  erb
      create    app/views/first
      create    app/views/first/index.html.erb
      invoke  test_unit
      create    test/controllers/first_controller_test.rb
      invoke  helper
      create    app/helpers/first_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    scss
      create      app/assets/stylesheets/first.scss
```


