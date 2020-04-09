# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/coffee-rails/all/coffee-rails.rbi
#
# coffee-rails-4.2.2

module Coffee
end
module Coffee::Rails
end
module Coffee::Rails::JsHook
  extend ActiveSupport::Concern
end
class Coffee::Rails::Engine < Rails::Engine
end
class Coffee::Rails::TemplateHandler
  def self.call(template); end
  def self.erb_handler; end
end
