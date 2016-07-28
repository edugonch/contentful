require 'active_support'
require 'active_support/core_ext/string'

require_relative 'constraints/yml_load_attributes'

module ContentfulApplication

  class Config

    include YmlLoadAttributes

    def initialize
      self.configure(File.join(File.dirname(__FILE__), 'config.yml'))
      Dir[File.join(File.dirname(__FILE__), '/initializers/*_initializer.rb')].each do |file| 
          require file
          module_name = File.basename("/home/edugonch/Documents/contentful/initializers/email_initializer.rb", ".rb")
          extend "ContentfulApplication::#{module_name.classify}".safe_constantize
      end
    end

  end

end