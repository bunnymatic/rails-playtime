require "rails_helper"

describe AppAnalytics, type: :helper do
  describe '#track_event' do
    before do
      allow(Rails.logger).to receive :debug
    end

    it "logs the event" do
      helper.track_event("my_event", "the user", { thing: "1" })
      expect(Rails.logger).to have_received(:debug).with("Tracking my_event the user {:thing=>\"1\"}")
    end
  end

end
