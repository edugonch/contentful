require_relative 'base_mailer'

module ContentfulApplication
  class ListenerMailer < BaseMailer

    def initialize(title, body)
      super()
      @mail['from'] = $config.email['from_address']
      @mail[:to]    = $config.email['to_address']
      @mail.subject = $config.email['subject']
      @mail.body = %{
        #{title}
        #{body}
      }
    end

  end
end