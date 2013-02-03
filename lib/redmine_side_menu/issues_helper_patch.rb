require_dependency 'issues_helper'

module RedmineSideMenu
  module IssuesHelperPatch
    def self.included(base) # :nodoc:
      base.send(:include, InstanceMethods) # obj.method
    end

    module InstanceMethods # obj.method
      # レポートのヘルパを取り込む
      include ReportsHelper
    end
  end
end

IssuesHelper.send(:include, RedmineSideMenu::IssuesHelperPatch)
