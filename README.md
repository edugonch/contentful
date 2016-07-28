# Application for Contentful
# Rules
It should do the following:

  * On Entry Publish, should send an email to a configurable email address containing the Title and Body.
  * On Entry Save or Auto Save, should log on console that the entry was modified.
  * All other actions are ignored.

  How to test:

  * Run the webhook server
  * Configure it on the Contentful Webhook UI
  * Create an Entry and populate it. This should start triggering the logging.
  * Publish the Entry. An email should be received at the specified email address.

  Constraints:

  * Email Addresses (from/to), Server Port, Server Endpoint and Email Subject should be configurable via YAML or JSON files (any of the formats is fine)
  * You can use any gems you prefer, feel free to use the gem I suggested above for the webhook server or create your own if you want.
