# Mongoid does not support the `whitelist_attributes` option, so we implement our own:
# http://jgwmaxwell.com/mass-assignment-security-with-mongoid/

module Mongoid
  module WhitelistAttributes
    extend ActiveSupport::Concern

    included do
      attr_accessible nil
    end
  end

  module Document
    include WhitelistAttributes
  end
end
