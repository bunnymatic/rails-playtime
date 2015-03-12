class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
    puts "TICKETS COUNT", @tickets.count
    render json: @tickets, each_serializer: TicketSerializer
  end

  def show
    @ticket = Ticket.find(params[:id])
    render json: @ticket
  end
end
