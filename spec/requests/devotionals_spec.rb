require 'spec_helper'

describe "Devotionals Controller" do

  describe "Index" do

    it "should have the title #{title_helper("Reuniones Devocionales")}" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit(devotionals_path)
      expect(page).to have_title(title_helper("Reuniones Devocionales"))
    end

  end
end
