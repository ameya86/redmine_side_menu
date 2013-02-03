module RedmineSideMenu
  class Hook < Redmine::Hook::ViewListener
    render_on :view_issues_sidebar_planning_bottom, :partial => 'side_menus/sidebar'
  end
end
