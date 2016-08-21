class DiariesController < ApplicationController
 #before_action :set_diary, only: [:show, :edit, :update, :destroy]
 
  # GET /diaries
  # GET /diaries.json
  def index
    
    @diaries = Diary.all
  end

  # GET /diaries/1
  # GET /diaries/1.json
  def show
  end

  # GET /diaries/new
  def new
    if params[:back]
      @diary = Diary.new(diaries_params)
    else
    @diary = Diary.new
    end
  end

  # GET /diaries/1/edit
  def edit
      @diary = Diary.find(params[:id])
     
  end

  # POST /diaries
  # POST /diaries.json
  def create
   @diary= Diary.create(diaries_params)
    if @diary.save
     redirect_to diaries_path ,notice: "ブログを作成しました！"
  else
   render action: 'new'
   # @diary = Diary.new(diary_params)

    #respond_to do |format|
     # if @diary.save
      #  format.html { redirect_to @diary, notice: 'Diary was successfully created.' }
       # format.json { render :show, status: :created, location: @diary }
      #else
       # format.html { render :new }
        #format.json { render json: @diary.errors, status: :unprocessable_entity }
      #end
    end
  end

  # PATCH/PUT /diaries/1
  # PATCH/PUT /diaries/1.json
  def update
      @diary = Diary.find(params[:id])
      @diary.update(diaries_params)
   
    redirect_to diaries_path ,notice: "ブログを更新しました！"
   
  
   
    #respond_to do |format|
      #if @diary.update(diary_params)
       # format.html { redirect_to @diary, notice: 'Diary was successfully updated.' }
        #format.json { render :show, status: :ok, location: @diary }
      #else
       # format.html { render :edit }
        #format.json { render json: @diary.errors, status: :unprocessable_entity }
       #end
   
  end
  def confirm
   @diary = Diary.new(diaries_params)
   render :new if @diary.invalid?
  end

  # DELETE /diaries/1
  # DELETE /diaries/1.json
  def destroy
     @diary=Diary.find(params[:id])
    @diary.destroy
    redirect_to diaries_path,notice: "ブログを削除しました！"
    #@diary.destroy
    #respond_to do |format|
     # format.html { redirect_to diaries_url, notice: 'Diary was successfully destroyed.' }
      #format.json { head :no_content }
    #end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    #def set_diary
    def diaries_params
      params.require(:diary).permit(:title, :content)
      #@diary = Diary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def diary_params
      #params.require(:diary).permit(:auther, :date, :content, :number)
    #end
end
