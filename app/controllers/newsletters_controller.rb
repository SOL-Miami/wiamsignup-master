class NewslettersController < InheritedResources::Base

  def create
    @newsletter = Newsletter.new(newsletter_params)
    respond_to do |format|
      if @newsletter.save
        format.html { redirect_to @newsletter, notice: 'Person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @newsletter }
        format.js   { render :js => "window.location.href = ('#{newsletter_thank_you_path(@newsletter)}');" }       
      else
        format.html { render action: 'new' }
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
        format.js   { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  def thank_you
    @newsletter = Newsletter.find(params[:newsletter_id])
  end

  private

    def newsletter_params
      params.require(:newsletter).permit(:first_name, :last_name, :email, :state)
    end
end

