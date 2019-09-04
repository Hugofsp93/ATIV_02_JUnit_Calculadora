class PalindromesController < ApplicationController
  before_action :set_palindrome, only: [:show, :edit, :update, :destroy]

  # GET /palindromes
  # GET /palindromes.json
  def index
    @palindromes = Palindrome.all
  end

  # GET /palindromes/1
  # GET /palindromes/1.json
  def show
  end

  # GET /palindromes/new
  def new
    @palindrome = Palindrome.new
  end

  # GET /palindromes/1/edit
  def edit
  end

  # POST /palindromes
  # POST /palindromes.json
  def create
    @palindrome = Palindrome.new(palindrome_params)

    respond_to do |format|
      if @palindrome.save
        format.html { redirect_to @palindrome, notice: 'Palindrome was successfully created.' }
        format.json { render :show, status: :created, location: @palindrome }
      else
        format.html { render :new }
        format.json { render json: @palindrome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palindromes/1
  # PATCH/PUT /palindromes/1.json
  def update
    respond_to do |format|
      if @palindrome.update(palindrome_params)
        format.html { redirect_to @palindrome, notice: 'Palindrome was successfully updated.' }
        format.json { render :show, status: :ok, location: @palindrome }
      else
        format.html { render :edit }
        format.json { render json: @palindrome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palindromes/1
  # DELETE /palindromes/1.json
  def destroy
    @palindrome.destroy
    respond_to do |format|
      format.html { redirect_to palindromes_url, notice: 'Palindrome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palindrome
      @palindrome = Palindrome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palindrome_params
      params.require(:palindrome).permit(:phrase, :is_palindrome)
    end
end
