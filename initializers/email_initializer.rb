require 'mail'

module ContentfulApplication

  module EmailInitializer

    def self.included(base)
      Mail.defaults do 
        retriever_method base.email["method"].to_s, 
                                :address    => base.email["endpoint"],
                                :port       => base.email["port"],
                                :user_name  => base.email["username"],
                                :password   => base.email["password"],
                                :enable_ssl => base.email["ssl"]
      end
    end

  end

end