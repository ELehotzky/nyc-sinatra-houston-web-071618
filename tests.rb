FiguresController
  allows you to view form to create a new figure (FAILED - 1)
  allows you to create a new figure with a title (FAILED - 2)
  allows you to create a new figure with a landmark (FAILED - 3)
  allows you to create a new figure with a new title (FAILED - 4)
  allows you to create a new figure with a new landmark (FAILED - 5)
  allows you to list all figures (FAILED - 6)
  allows you to see a single Figure (FAILED - 7)
  allows you to view form to edit a single figure (FAILED - 8)
  allows you to edit a single figure (FAILED - 9)

LandmarksController
  allows you to view form to create a new landmark (FAILED - 10)
  allows you to create a new landmark (FAILED - 11)
  allows you to list all landmarks (FAILED - 12)
  allows you to see a single landmark (FAILED - 13)
  allows you to view the form to edit a single landmark (FAILED - 14)
  allows you to edit a single landmark (FAILED - 15)
  creates checkboxes for all the landmarks and titles created on the Figures new page (FAILED - 16)

Figure
  has a name
  has many landmarks
  has many titles (FAILED - 17)

Landmark
  has a name and a year_completed
  belongs to a figure

Title
  has a name
  has many figures (FAILED - 18)

Failures:

  1) FiguresController allows you to view form to create a new figure
     Failure/Error: expect(page.body).to include('<form')
     
       expected "<!DOCTYPE html>\n<html>\n<head>\n  <style type=\"text/css\">\n  body { text-align:center;font-family...es&#x2F;new&#x27; do\n    &quot;Hello World&quot;\n  end\nend\n</pre>\n  </div>\n</body>\n</html>\n" to include "<form"
       Diff:
       @@ -1,2 +1,25 @@
       -<form
       +<!DOCTYPE html>
       +<html>
       +<head>
       +  <style type="text/css">
       +  body { text-align:center;font-family:helvetica,arial;font-size:22px;
       +    color:#888;margin:20px}
       +  #c {margin:0 auto;width:500px;text-align:left}
       +  </style>
       +</head>
       +<body>
       +  <h2>Sinatra doesn’t know this ditty.</h2>
       +  <img src='http://www.example.com/__sinatra__/404.png'>
       +  <div id="c">
       +    Try this:
       +    <pre># in application_controller.rb
       +class ApplicationController
       +  get &#x27;&#x2F;figures&#x2F;new&#x27; do
       +    &quot;Hello World&quot;
       +  end
       +end
       +</pre>
       +  </div>
       +</body>
       +</html>
       
     # ./spec/figures_controller_view_spec.rb:21:in `block (2 levels) in <top (required)>'

  2) FiguresController allows you to create a new figure with a title
     Failure/Error: fill_in :figure_name, :with => "Doctor Who"
     
     Capybara::ElementNotFound:
       Unable to find visible field :figure_name that is not disabled
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:294:in `block in synced_resolve'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/base.rb:83:in `synchronize'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:285:in `synced_resolve'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:33:in `find'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/actions.rb:85:in `fill_in'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/session.rb:739:in `block (2 levels) in <class:Session>'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/dsl.rb:51:in `block (2 levels) in <module:DSL>'
     # ./spec/figures_controller_view_spec.rb:31:in `block (2 levels) in <top (required)>'

  3) FiguresController allows you to create a new figure with a landmark
     Failure/Error: fill_in :figure_name, :with => "Doctor Who"
     
     Capybara::ElementNotFound:
       Unable to find visible field :figure_name that is not disabled
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:294:in `block in synced_resolve'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/base.rb:83:in `synchronize'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:285:in `synced_resolve'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:33:in `find'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/actions.rb:85:in `fill_in'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/session.rb:739:in `block (2 levels) in <class:Session>'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/dsl.rb:51:in `block (2 levels) in <module:DSL>'
     # ./spec/figures_controller_view_spec.rb:42:in `block (2 levels) in <top (required)>'

  4) FiguresController allows you to create a new figure with a new title
     Failure/Error: fill_in :figure_name, :with => "Doctor Who"
     
     Capybara::ElementNotFound:
       Unable to find visible field :figure_name that is not disabled
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:294:in `block in synced_resolve'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/base.rb:83:in `synchronize'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:285:in `synced_resolve'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:33:in `find'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/actions.rb:85:in `fill_in'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/session.rb:739:in `block (2 levels) in <class:Session>'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/dsl.rb:51:in `block (2 levels) in <module:DSL>'
     # ./spec/figures_controller_view_spec.rb:53:in `block (2 levels) in <top (required)>'

  5) FiguresController allows you to create a new figure with a new landmark
     Failure/Error: fill_in :figure_name, :with => "Doctor Who"
     
     Capybara::ElementNotFound:
       Unable to find visible field :figure_name that is not disabled
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:294:in `block in synced_resolve'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/base.rb:83:in `synchronize'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:285:in `synced_resolve'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:33:in `find'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/actions.rb:85:in `fill_in'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/session.rb:739:in `block (2 levels) in <class:Session>'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/dsl.rb:51:in `block (2 levels) in <module:DSL>'
     # ./spec/figures_controller_view_spec.rb:66:in `block (2 levels) in <top (required)>'

  6) FiguresController allows you to list all figures
     Failure/Error: expect(page.status_code).to eq(200)
     
       expected: 200
            got: 404
     
       (compared using ==)
     # ./spec/figures_controller_view_spec.rb:80:in `block (2 levels) in <top (required)>'

  7) FiguresController allows you to see a single Figure
     Failure/Error: expect(last_response.status).to eq(200)
     
       expected: 200
            got: 404
     
       (compared using ==)
     # ./spec/figures_controller_view_spec.rb:89:in `block (2 levels) in <top (required)>'

  8) FiguresController allows you to view form to edit a single figure
     Failure/Error: expect(last_response.status).to eq(200)
     
       expected: 200
            got: 404
     
       (compared using ==)
     # ./spec/figures_controller_view_spec.rb:97:in `block (2 levels) in <top (required)>'

  9) FiguresController allows you to edit a single figure
     Failure/Error: fill_in :figure_name, with: "Missy"
     
     Capybara::ElementNotFound:
       Unable to find visible field :figure_name that is not disabled
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:294:in `block in synced_resolve'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/base.rb:83:in `synchronize'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:285:in `synced_resolve'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:33:in `find'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/actions.rb:85:in `fill_in'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/session.rb:739:in `block (2 levels) in <class:Session>'
     # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/dsl.rb:51:in `block (2 levels) in <module:DSL>'
     # ./spec/figures_controller_view_spec.rb:108:in `block (2 levels) in <top (required)>'

  10) LandmarksController allows you to view form to create a new landmark
      Failure/Error: expect(page.body).to include('<form')
      
        expected "<!DOCTYPE html>\n<html>\n<head>\n  <style type=\"text/css\">\n  body { text-align:center;font-family...ks&#x2F;new&#x27; do\n    &quot;Hello World&quot;\n  end\nend\n</pre>\n  </div>\n</body>\n</html>\n" to include "<form"
        Diff:
        @@ -1,2 +1,25 @@
        -<form
        +<!DOCTYPE html>
        +<html>
        +<head>
        +  <style type="text/css">
        +  body { text-align:center;font-family:helvetica,arial;font-size:22px;
        +    color:#888;margin:20px}
        +  #c {margin:0 auto;width:500px;text-align:left}
        +  </style>
        +</head>
        +<body>
        +  <h2>Sinatra doesn’t know this ditty.</h2>
        +  <img src='http://www.example.com/__sinatra__/404.png'>
        +  <div id="c">
        +    Try this:
        +    <pre># in application_controller.rb
        +class ApplicationController
        +  get &#x27;&#x2F;landmarks&#x2F;new&#x27; do
        +    &quot;Hello World&quot;
        +  end
        +end
        +</pre>
        +  </div>
        +</body>
        +</html>
        
      # ./spec/landmarks_controller_view_spec.rb:17:in `block (2 levels) in <top (required)>'

  11) LandmarksController allows you to create a new landmark
      Failure/Error: fill_in :landmark_name, :with => "Arc de Triomphe"
      
      Capybara::ElementNotFound:
        Unable to find visible field :landmark_name that is not disabled
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:294:in `block in synced_resolve'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/base.rb:83:in `synchronize'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:285:in `synced_resolve'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:33:in `find'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/actions.rb:85:in `fill_in'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/session.rb:739:in `block (2 levels) in <class:Session>'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/dsl.rb:51:in `block (2 levels) in <module:DSL>'
      # ./spec/landmarks_controller_view_spec.rb:24:in `block (2 levels) in <top (required)>'

  12) LandmarksController allows you to list all landmarks
      Failure/Error: expect(page.status_code).to eq(200)
      
        expected: 200
             got: 404
      
        (compared using ==)
      # ./spec/landmarks_controller_view_spec.rb:33:in `block (2 levels) in <top (required)>'

  13) LandmarksController allows you to see a single landmark
      Failure/Error: expect(last_response.status).to eq(200)
      
        expected: 200
             got: 404
      
        (compared using ==)
      # ./spec/landmarks_controller_view_spec.rb:42:in `block (2 levels) in <top (required)>'

  14) LandmarksController allows you to view the form to edit a single landmark
      Failure/Error: expect(last_response.status).to eq(200)
      
        expected: 200
             got: 404
      
        (compared using ==)
      # ./spec/landmarks_controller_view_spec.rb:51:in `block (2 levels) in <top (required)>'

  15) LandmarksController allows you to edit a single landmark
      Failure/Error: fill_in :name, with: "BQE!!!!"
      
      Capybara::ElementNotFound:
        Unable to find visible field :name that is not disabled
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:294:in `block in synced_resolve'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/base.rb:83:in `synchronize'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:285:in `synced_resolve'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/finders.rb:33:in `find'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/node/actions.rb:85:in `fill_in'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/session.rb:739:in `block (2 levels) in <class:Session>'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/capybara-3.1.0/lib/capybara/dsl.rb:51:in `block (2 levels) in <module:DSL>'
      # ./spec/landmarks_controller_view_spec.rb:65:in `block (2 levels) in <top (required)>'

  16) LandmarksController creates checkboxes for all the landmarks and titles created on the Figures new page
      Failure/Error: expect(page).to have_css("input[type=\"checkbox\"]")
        expected #has_css?("input[type=\"checkbox\"]") to return true, got false
      # ./spec/landmarks_controller_view_spec.rb:81:in `block (2 levels) in <top (required)>'

  17) Figure has many titles
      Failure/Error: @figure.titles << @mayor
      
      ActiveRecord::UnknownAttributeError:
        unknown attribute 'figure_id' for FigureTitle.
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/attribute_assignment.rb:59:in `rescue in _assign_attribute'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/attribute_assignment.rb:53:in `_assign_attribute'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/attribute_assignment.rb:41:in `block in assign_attributes'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/attribute_assignment.rb:35:in `each'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/attribute_assignment.rb:35:in `assign_attributes'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/association.rb:169:in `initialize_attributes'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/association.rb:251:in `block in build_record'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/core.rb:283:in `initialize'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/inheritance.rb:61:in `new'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/inheritance.rb:61:in `new'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/reflection.rb:141:in `build_association'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/association.rb:250:in `build_record'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:146:in `build'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/has_many_through_association.rb:95:in `build_through_record'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/has_many_through_association.rb:112:in `save_through_record'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/has_many_through_association.rb:66:in `insert_record'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:563:in `block (2 levels) in concat_records'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:408:in `replace_on_target'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:403:in `add_to_target'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:562:in `block in concat_records'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:560:in `each'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:560:in `concat_records'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/has_many_association.rb:180:in `concat_records'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/has_many_through_association.rb:44:in `concat_records'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:168:in `block in concat'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:183:in `block in transaction'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/connection_adapters/abstract/database_statements.rb:213:in `block in transaction'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/connection_adapters/abstract/transaction.rb:184:in `within_new_transaction'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/connection_adapters/abstract/database_statements.rb:213:in `transaction'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/transactions.rb:220:in `transaction'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:182:in `transaction'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:168:in `concat'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/has_many_through_association.rb:38:in `concat'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_proxy.rb:970:in `<<'
      # ./spec/models/figure_spec.rb:28:in `block (2 levels) in <top (required)>'
      # ------------------
      # --- Caused by: ---
      # NoMethodError:
      #   undefined method `figure_id=' for #<FigureTitle id: nil>
      #   Did you mean?  figure=
      #   /Users/erica/.rvm/gems/ruby-2.5.1/gems/activemodel-4.2.5/lib/active_model/attribute_methods.rb:433:in `method_missing'

  18) Title has many figures
      Failure/Error: @mayor.figures << @figure
      
      ActiveRecord::UnknownAttributeError:
        unknown attribute 'title_id' for FigureTitle.
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/attribute_assignment.rb:59:in `rescue in _assign_attribute'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/attribute_assignment.rb:53:in `_assign_attribute'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/attribute_assignment.rb:41:in `block in assign_attributes'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/attribute_assignment.rb:35:in `each'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/attribute_assignment.rb:35:in `assign_attributes'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/association.rb:169:in `initialize_attributes'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/association.rb:251:in `block in build_record'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/core.rb:283:in `initialize'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/inheritance.rb:61:in `new'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/inheritance.rb:61:in `new'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/reflection.rb:141:in `build_association'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/association.rb:250:in `build_record'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:146:in `build'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/has_many_through_association.rb:95:in `build_through_record'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/has_many_through_association.rb:112:in `save_through_record'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/has_many_through_association.rb:66:in `insert_record'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:563:in `block (2 levels) in concat_records'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:408:in `replace_on_target'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:403:in `add_to_target'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:562:in `block in concat_records'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:560:in `each'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:560:in `concat_records'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/has_many_association.rb:180:in `concat_records'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/has_many_through_association.rb:44:in `concat_records'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:168:in `block in concat'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:183:in `block in transaction'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/connection_adapters/abstract/database_statements.rb:213:in `block in transaction'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/connection_adapters/abstract/transaction.rb:184:in `within_new_transaction'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/connection_adapters/abstract/database_statements.rb:213:in `transaction'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/transactions.rb:220:in `transaction'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:182:in `transaction'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_association.rb:168:in `concat'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/has_many_through_association.rb:38:in `concat'
      # /Users/erica/.rvm/gems/ruby-2.5.1/gems/activerecord-4.2.5/lib/active_record/associations/collection_proxy.rb:970:in `<<'
      # ./spec/models/title_spec.rb:15:in `block (2 levels) in <top (required)>'
      # ------------------
      # --- Caused by: ---
      # NoMethodError:
      #   undefined method `title_id=' for #<FigureTitle id: nil>
      #   Did you mean?  title=
      #   /Users/erica/.rvm/gems/ruby-2.5.1/gems/activemodel-4.2.5/lib/active_model/attribute_methods.rb:433:in `method_missing'

Finished in 0.49607 seconds (files took 0.85272 seconds to load)
23 examples, 18 failures

Failed examples:

rspec ./spec/figures_controller_view_spec.rb:19 # FiguresController allows you to view form to create a new figure
rspec ./spec/figures_controller_view_spec.rb:29 # FiguresController allows you to create a new figure with a title
rspec ./spec/figures_controller_view_spec.rb:40 # FiguresController allows you to create a new figure with a landmark
rspec ./spec/figures_controller_view_spec.rb:51 # FiguresController allows you to create a new figure with a new title
rspec ./spec/figures_controller_view_spec.rb:64 # FiguresController allows you to create a new figure with a new landmark
rspec ./spec/figures_controller_view_spec.rb:77 # FiguresController allows you to list all figures
rspec ./spec/figures_controller_view_spec.rb:86 # FiguresController allows you to see a single Figure
rspec ./spec/figures_controller_view_spec.rb:93 # FiguresController allows you to view form to edit a single figure
rspec ./spec/figures_controller_view_spec.rb:105 # FiguresController allows you to edit a single figure
rspec ./spec/landmarks_controller_view_spec.rb:15 # LandmarksController allows you to view form to create a new landmark
rspec ./spec/landmarks_controller_view_spec.rb:22 # LandmarksController allows you to create a new landmark
rspec ./spec/landmarks_controller_view_spec.rb:30 # LandmarksController allows you to list all landmarks
rspec ./spec/landmarks_controller_view_spec.rb:39 # LandmarksController allows you to see a single landmark
rspec ./spec/landmarks_controller_view_spec.rb:47 # LandmarksController allows you to view the form to edit a single landmark
rspec ./spec/landmarks_controller_view_spec.rb:61 # LandmarksController allows you to edit a single landmark
rspec ./spec/landmarks_controller_view_spec.rb:78 # LandmarksController creates checkboxes for all the landmarks and titles created on the Figures new page
rspec ./spec/models/figure_spec.rb:27 # Figure has many titles
rspec ./spec/models/title_spec.rb:14 # Title has many figures