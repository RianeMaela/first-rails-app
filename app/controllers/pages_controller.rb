class PagesController < ApplicationController
  def home
  end



  def about
    # => logic to build a page
    # => no code to describe the view to return
  end

  def contact
    @members = ['a', 'b', 'c', 'd', 'e']

    # raise : stops the code and the website only shows what's before that

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end

  end
end
