module RackSessionFix
  extend ActiveSupport::Concern

  # Devise really wants us to use cookies. At the moment I dont want to. When we switch to cookies we should remove
  # this file entirely
  class FakeRackSession < Hash
    def enabled?
      false
    end
  end
  included do
    before_action :set_fake_rack_session_for_devise
    private
    def set_fake_rack_session_for_devise
      request.env['rack.session'] ||= FakeRackSession.new
    end
  end
end
