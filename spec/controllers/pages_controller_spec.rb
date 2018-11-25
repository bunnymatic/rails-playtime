require "rails_helper"

describe PagesController do
  describe "GET 'root'" do
    let(:now) { Time.current }
    before do
      Timecop.freeze
      # `controller` is a provided to us by rspec magically because it knows
      # this is a controller spec from the name of the described class
      allow(controller).to receive(:track_event)
      get "root"
    end

    after do
      Timecop.return
    end

    it "returns http success" do
      expect(response).to be_successful
    end

    it "tracks the event" do
      expect(controller).to have_received(:track_event).with("root_page", "anon", { date: now })
    end
  end
end
