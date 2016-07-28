require 'contentful/webhook/listener'
require_relative '../mailers/listener_mailer'

module ContentfulApplication
  class ListenerController < Contentful::Webhook::Listener::Controllers::WebhookAware
    def publish
      if webhook.entry?
        mailer = ListenerMailer.new(webhook.fields.title, webhook.fields.body)
        mailer.deliver!
      end
    end

    def save
      logger.info "published Entry ID: #{webhook.id} for Space: #{webhook.space_id} was modified" if webhook.entry?
    end

    def auto_save
      logger.info "published Entry ID: #{webhook.id} for Space: #{webhook.space_id} was modified" if webhook.entry?
    end
  end
end