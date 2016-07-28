require 'mail'

module ContentfulApplication
  class BaseMailer

    def initialize
      @mail = Mail.new
    end

    def deliver!
      @mail.deliver!
    end

  end
end