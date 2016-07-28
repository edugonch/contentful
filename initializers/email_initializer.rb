require 'mail'

module ContentfulApplication

  module EmailInitializer

    def self.extended(base)
      Mail.defaults do 
        delivery_method base.email["method"].to_sym, 
                                :address    => base.email["server"],
                                :port       => base.email["port"]
      end
    end

  end

end