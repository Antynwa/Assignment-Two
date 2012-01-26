class HolidaysController < ApplicationController
  def index
login_required
    @holidays = Holiday.all
  end

  def show
login_required
    @holiday = Holiday.find(params[:id])
  end

  def new
login_required
    @holiday = Holiday.new
  end

  def edit
login_required
   @holiday = Holiday.find(params[:id])
  end
  
  def update
    @holiday = Holiday.find(params[:id])
    @holiday.user_id = current_user.id

if@current_user.id == "0"
flash[:error] = "Was not Updated!!"
  redirect_to :action => "edit_holiday_path"
end


if@holiday.save
  @holiday.update_attributes(params[:holiday])
   flash[:notice] = "Holiday updated!"
    redirect_to @holiday
else
flash[:error] = "Was not Updated!!"
  redirect_to :action => "edit_holiday_path"
end
  end
  
  def create
    @holiday = Holiday.create(params[:holiday])
    @holiday.user_id = current_user.id
if@holiday.save
  @holiday.update_attributes(params[:holiday])
        flash[:notice] = " New Holiday Created!"
     redirect_to @holiday
    else
      render :action => 'new'
flash[:error] = "Was not Created!!"
end
  end
  
  def destroy
    @holiday = Holiday.find(params[:id])
    @holiday.delete
    flash[:notice] = " Holiday Deleted!"

    redirect_to holidays_path
  end

end
