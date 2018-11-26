class SchoolClassesController < ApplicationController

  before_action :set_school_class, only: [:show, :edit, :update]
# new, create, show, edit, and update

 def index
   @school_classes = SchoolClass.all
 end

 def show

 end

 def new
   @school_class = SchoolClass.new
 end

 def create
   @school_class = SchoolClass.create(school_class_params(:title, :room_number))
   redirect_to school_class_path(@school_class)
 end


 def edit
 end

 def update
   @school_class.update(school_class_params(:title, :room_number))
   redirect_to school_class_path(@school_class)
 end

 private

 def set_school_class
   @school_class = SchoolClass.find(params[:id])
 end

 def school_class_params(*args)
 params.require(:school_class).permit(*args)
 end

end
