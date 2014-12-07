class ProcedureLinesController < ApplicationController
  before_action :set_line, only: [:show, :edit, :update, :destroy]

 def index
   @procedure_lines =  ProcedureLine.all
 end

 def show
  @procedure_lines=  ProcedureLine.all
    @procedure = Procedure.all
  @Line = Line.all
 end

 def new
  @procedure_line = ProcedureLine.new
  @procedure = Procedure.all
  @Line = Line.all
end

def edit
  @procedure = Procedure.all
  @line = Line.all
end

def create
  @procedure_line = ProcedureLine.new(line_params)
  respond_to do |format|
    if @procedure_line.save
      format.html { redirect_to @procedure_line, notice: 'Line was successfully created.' }
      format.json { render :show, status: :created, location: @procedure_line }
    else
      format.html { render :new }
      format.json { render json: @procedure_line.errors, status: :unprocessable_entity }
    end
  end
end

def update
  respond_to do |format|
    if @procedure_line.update(line_params)
      format.html { redirect_to @procedure_line, notice: 'Line was successfully updated.' }
      format.json { render :show, status: :ok, location: @procedure_line}
    else
      format.html { render :edit }
      format.json { render json: @procedure_line.errors, status: :unprocessable_entity }
    end
  end
end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_line
      @procedure_line = ProcedureLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_params
      params.require(:procedure_line).permit(:id, :procedure_id, :line_id)
    end

  end
