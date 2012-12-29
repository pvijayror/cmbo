require 'spec_helper'

module Refinery
  module Directories
    describe Directory do
      describe "validations" do
        subject do
          FactoryGirl.create(:directory,
          :prefix => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:prefix) { should == "Refinery CMS" }
      end
    end
  end
end
