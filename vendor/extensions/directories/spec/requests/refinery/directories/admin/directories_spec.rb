# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Directories" do
    describe "Admin" do
      describe "directories" do
        login_refinery_user

        describe "directories list" do
          before do
            FactoryGirl.create(:directory, :prefix => "UniqueTitleOne")
            FactoryGirl.create(:directory, :prefix => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.directories_admin_directories_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.directories_admin_directories_path

            click_link "Add New Directory"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Prefix", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Directories::Directory.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Prefix can't be blank")
              Refinery::Directories::Directory.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:directory, :prefix => "UniqueTitle") }

            it "should fail" do
              visit refinery.directories_admin_directories_path

              click_link "Add New Directory"

              fill_in "Prefix", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Directories::Directory.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:directory, :prefix => "A prefix") }

          it "should succeed" do
            visit refinery.directories_admin_directories_path

            within ".actions" do
              click_link "Edit this directory"
            end

            fill_in "Prefix", :with => "A different prefix"
            click_button "Save"

            page.should have_content("'A different prefix' was successfully updated.")
            page.should have_no_content("A prefix")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:directory, :prefix => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.directories_admin_directories_path

            click_link "Remove this directory forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Directories::Directory.count.should == 0
          end
        end

      end
    end
  end
end
