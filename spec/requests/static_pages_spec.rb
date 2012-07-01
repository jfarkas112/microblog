require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
  	
  	it "should have the content 'Sample App'" do
  		visit '/static_pages/home'
  		page.should have_selector('h1', :text=>'Sample App')
  	end
  	it "should have the right title" do
  		visit '/static_pages/home'
  		page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")
  	end
  end
  
  describe "help page" do
  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text=>'Help')
  	end
  	it "should have the correct title" do
  		visit '/static_pages/help'
  		page.should have_selector('title', :text => " | Help")
  	end
  end
  
  describe "about page" do
  	it "should have the content 'About Us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text=>"About Us")
  	end
  	it "should have the correct title" do
  		visit '/static_pages/about'
  		page.should have_selector('title', :text => " | About Us")
  	end
  end
end