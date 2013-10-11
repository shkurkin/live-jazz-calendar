require 'spec_helper'

describe "EventPages" do

	subject { page }

  describe "Home Page" do
    before { visit root_path }

    it {should have_selector('title', text: 'Live Jazz Calendar')}
  end
end
