class StaticController < ApplicationController
  skip_before_action :authorized, only: [:home, :contact, :faq, :about]
  def home
    render layout: "home"
  end

  def contact
  end

  def faq
  end

  def about
  end
end
