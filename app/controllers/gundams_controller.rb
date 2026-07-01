class GundamsController < ApplicationController

  

  #追加箇所
  def create_work
    gundam = Gundam.new(gundam_params)
    if gundam.save
      redirect_to "/gundams/#{gundam.id}/photo"
    else
   redirect_to "/gundams/#{gundam.id}/photo"
    end
  end

  def photo
    @gundam = Gundam.find(params[:id])
  end

 
  #ここまで

    
    def index
    end

    def new
        @gundam = Gundam.new
    end

    def show
        @gundam = Gundam.find_by(id: params[:id])

        @result = @gundam.calculate_result
    end

    def create
        gundam = Gundam.new(gundam_params)
        if gundam.save
            flash[:notice] = "診断が完了しました"
            redirect_to gundam_path(gundam.id)
        else
            redirect_to :action => "new"
        end
    end

    def others
    end
    
    def histry
    end

    def work
      @gundam = Gundam.new
    end


  
  private
    def gundam_params
        params.require(:gundam).permit(:question1, :question2, :question3, :question4, :question5, :question6, :question7, :question8, :question9, :image)
    end

  
end
