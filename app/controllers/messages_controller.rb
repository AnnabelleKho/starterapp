class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.inbox(current_user.id)
    @sent_messages = Message.where(sender_id: current_user.id)
    @sent_messages_sentbox = Message.where(receiver_id: current_user.id)
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    unless @message.is_read
      @message.update(is_read: true)
    end
  end

  # GET /messages/new
  def new
    if params[:receiver_id]
    @receiver = User.find(params[:receiver_id])
    @message = Message.new
  else
    redirect_to root_path
  end
end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(message_params)
    @message.sender_id = current_user.id
    respond_to do |format|
      if @message.save
        format.html { redirect_to messages_path, notice: 'Message was successfully sent.' }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:sender_id, :receiver_id, :subject, :message, :is_read)
    end
end