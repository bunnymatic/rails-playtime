require 'rails_helper'

describe TicketsController do
  let!(:ticket) { create(:ticket) }
  describe "GET #index" do
    it "assigns all tickets as @tickets" do
      expect(TicketSerializer).to receive(:new).with(ticket, any_args).and_call_original
      get :index, format: :json
    end
  end
  describe "GET #show" do
    it "shows a ticket" do
      expect(TicketSerializer).to receive(:new).with(ticket, any_args).and_call_original
      get :show, id: ticket.id, format: :json
      puts response.body
    end
  end
end
