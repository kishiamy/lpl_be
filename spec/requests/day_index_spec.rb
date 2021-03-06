#coding: UTF-8
require 'spec_helper'

describe "check the event list" do
  before "create day and event" do
    @day = FactoryGirl.create :day
    event = FactoryGirl.create :event
    @day.events << event
    @admin = FactoryGirl.create :admin
    log_in(@admin)
    visit manage_calendars_path 
  end
  it "check day creation" do
    page.has_content? @day.day_date.strftime("%d-%m-%y") 
  end
end




