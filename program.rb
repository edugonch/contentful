require 'logger'
require 'contentful/webhook/listener'

require_relative 'config.rb'
require_relative 'controllers/listener_controller.rb'

module ContentfulApplication
  @config = Config.new

  Contentful::Webhook::Listener::Server.start do |config|
      config[:port] = @config.webhook["port"]
      config[:logger] = Logger.new(STDOUT)
      config[:endpoints] = [
        {
          endpoint: @config.webhook["endpoint"],
          controller: ListenerController,
          timeout: 15
        }
      ]
    end
end

loop do
  sleep(100000)
end