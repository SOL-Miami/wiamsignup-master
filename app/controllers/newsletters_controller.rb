class NewslettersController < InheritedResources::Base

  private

    def newsletter_params
      params.require(:newsletter).permit(:first_name, :last_name, :email, :state)
    end
end

