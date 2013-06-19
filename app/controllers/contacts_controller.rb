class ContactsController < ApplicationController
  # GET /contacts
  # GET /contacts.json
  def index
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact }
    end
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact = Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact }
    end
  end

  # GET /contacts/new
  # GET /contacts/new.json
  def new
    @contact = Contact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact }
    end
  end

  # GET /contacts/1/edit

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      
      #format.html {redirect_to @contact, notice: "Sent 6Toes message successfully." }
      #format.json { render json: @contact, status: :created, loction: @contact }
      ContactMailer.ask_matt(@contact).deliver
      render :show
    else
      render :index
    end
  end

  # PUT /contacts/1
  # PUT /contacts/1.json

  # DELETE /contacts/1
  # DELETE /contacts/1.json
 
end
