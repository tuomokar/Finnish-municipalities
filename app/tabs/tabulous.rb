Tabulous.setup do

  tabs do

   # <%= link_to (t :Home), root_path, class: 'navbar-brand' %>
    home_tab do
      text          { t :Home }
      link_path     { root_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('home') }
    end

    regions_tab do
      text          { t :Regions }
      link_path     { regions_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('regions') }
    end

    municipalities_tab do
      text          { t :Municipalities }
      link_path     { municipalities_path }
      visible_when  { true }
      enabled_when  { true }
      active_when do
        in_action('any').of_controller('municipalities')
      end
    end

    users_tab do
      text          { t :Users }
      link_path     { users_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('users') }
    end

  end

  customize do

    # which class to use to generate HTML
    # :default, :html5, :bootstrap, :bootstrap_pill or :bootstrap_navbar
    # or create your own renderer class and reference it here
    renderer :bootstrap_navbar


    # whether to allow the active tab to be clicked
    # defaults to true
    # active_tab_clickable true

    # what to do when there is no active tab for the current controller action
    # :render -- draw the tabset, even though no tab is active
    # :do_not_render -- do not draw the tabset
    # :raise_error -- raise an error
    # defaults to :do_not_render
    # when_action_has_no_tab :do_not_render

    # whether to always add the HTML markup for subtabs, even if empty
    # defaults to false
    # render_subtabs_when_empty false

  end

  # The following will insert some CSS straight into your HTML so that you
  # can quickly prototype an app with halfway-decent looking tabs.
  #
  # This scaffolding should be turned off and replaced by your own custom
  # CSS before using tabulous in production.
  use_css_scaffolding do
    background_color '#ccc'
    text_color '#444'
    active_tab_color '#fff'
    hover_tab_color '#ddd'
    inactive_tab_color '#aaa'
    inactive_text_color '#888'
  end

end
