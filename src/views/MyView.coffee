define (require)->

  # Define a new View
  require('cell/defineView!')

    ###
    Cell View's reduce the amount of boilerplate in your code,
    by handling common use-cases.
    These common use-cases are:
      1) Defining the root node for the View (usually a `<div>`)
      2) Adding a `@class`, so you can style it

    So, without defining a `@renderEl()` function, the following
    root node is created for your View...
      <div class="{View's Name}" cell="{View's Name}">`

    For the astute, you might be wondering how does it figure out
    the View's name (for the `@class` and `@cell` attributes),
    without you specifying it!
    But you have specified the View's name with the filename of
    View, in this case `MyView`.
    ###

    ###
    Render the contents of this View
    
    <div class="msg">
      Hello from MyView!
    </div>
    ###
    render: (_)-> [
      _ '.msg',
        'Hello from MyView!'
    ]