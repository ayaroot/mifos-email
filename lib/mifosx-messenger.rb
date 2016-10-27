$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module MifosXMessenger
  VERSION = '0.0.1'
end

require_relative 'mifosx-messenger/mifosx-helper'
require_relative 'mifosx-messenger/tbulksms-sender'
#require_relative 'mifosx-messenger/mvaayoo-sender'
require_relative 'mifosx-messenger/message-templates'
#require_relative 'mifosx-messenger/sol4mob-sender'

