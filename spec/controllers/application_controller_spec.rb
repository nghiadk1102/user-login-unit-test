require "rails_helper"

RSpec.describe ApplicationController, type: :controller do
  describe "log out" do
    controller(ApplicationController) do
      def after_sign_out_path_for resource_or_scope
        root_path
      end
    end

    it "root path" do
      expect(controller.after_sign_out_path_for(:user)).to eq(root_path)
    end
  end
end
