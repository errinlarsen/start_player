# Step definitions for Pickers
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given /^a picker named "([^\"]*)"(?: with a description of "([^\"]*)")?$/ do |name, desc|
  @picker = Picker.new :name => name, :desc => desc
  @picker.save
end

