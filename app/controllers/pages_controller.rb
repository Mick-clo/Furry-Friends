class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :faq ]

  def home
  end

  def faq
    @faqs = Faq.all
  end

  def dashboard
    @user = current_user
    @pets = @user.pets
    @orders = @user.orders
    @messages = ["Thank you for being a paw-some supporter of our furry friends! Your donation helps provide shelter, care, and love to animals in need.", "Your generosity is making tails wag and hearts purr! Your donation to our animal shelter is truly appreciated.", "Your kindness knows no bounds! Your donation is a lifeline for animals awaiting their forever homes.", "Sending a big virtual hug to our amazing donor! Your contribution helps us continue our mission of providing a safe haven for animals in distress.", "Every penny you donate helps us create brighter tomorrows for our furry residents. Thank you for your compassion and generosity!", "Your support gives us hope and strength to care for animals in need.", "With your donation, you're not just giving money—you're giving hope, love, and a second chance at life to animals who need it most.", "Thank you for standing with us in our commitment to animal welfare. Your donation makes a real and tangible difference in the lives of our beloved animals.", "From the bottom of our hearts, thank you for your generosity. Your donation helps ensure that no animal is left behind, forgotten, or unloved.", "Your compassion shines brightly through your donation. Because of you, countless animals will find warmth, care, and a loving family. Thank you for being their hero!"]
    @random_message = @messages.sample

    if params[:pet]
      @pet = Pet.find(params[:pet])
    else
      @pet = @pets.first
    end
  end
end
