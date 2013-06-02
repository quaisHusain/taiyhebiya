require 'translator'
require File.join(File.dirname(__FILE__), "lib", "admission_forms_plugin")

FedenaPlugin.register = {
  :name=>"admission_forms_plugin",
  :description=>"Admssion Forms PLugin",
  :more_menu=>{:target_id=>"more-parent",:title=>"Admission Forms",:controller=>"admission_forms",:action=>"index"},
}

Dir[File.join("#{File.dirname(__FILE__)}/config/locales/*.yml")].each do |locale|
  I18n.load_path.unshift(locale)
end

if RAILS_ENV == 'development'
  ActiveSupport::Dependencies.load_once_paths.\
    reject!{|x| x =~ /^#{Regexp.escape(File.dirname(__FILE__))}/}
end