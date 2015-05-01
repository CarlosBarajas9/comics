class WelcomeController < ApplicationController
 
  
   def index
    @comics = Comic.all
          @q = params[:q]
  if @q
    @comics = Comic.where("nombre like ?", "%#{@q}%")
  else
    @comics = Comic.all
   end
  end

  # GET /comics/1
  # GET /comics/1.json
  def show
  end
  
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_comic
      @comic = Comic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comic_params
      params.require(:comic).permit(:nombre, :extension)
    end
  
  
  
 
  
  
  
  
  
end
