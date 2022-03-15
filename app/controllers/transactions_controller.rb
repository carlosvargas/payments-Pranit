class TransactionsController < ApplicationController
  def index
    @page = params[:page].to_i || 1
    @per_page = 10
    @offset = page_offset
    @total_pages = total_pages

    @transactions = Transaction.limit(@per_page).offset(@offset).order(created_at: :desc)
  end

  private

  def page_offset
    return 0 if @page == 1

    @per_page * (@page - 1)
  end

  def total_pages
    (Transaction.count / @per_page.to_f).ceil
  end
end
