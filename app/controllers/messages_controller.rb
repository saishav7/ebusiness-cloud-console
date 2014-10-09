class MessagesController < ApplicationController
  def viewMessages
  	@messages = Array.new
  	@messages = Message.joins(:message_type).joins(message_type: :electronic_address)
  				.where("message.msg_datetime > ?", params[:startDateTime])
  				.where("message.msg_datetime < ?", params[:endDateTime])
  				.all

  #	@p = ProcessMessageRelationship.where("msgtype_id = ?", @messages.message_type.msgtype_id).all
  #	@pmr = Array.new
  #	@pmr = ProcessMessageRelationship.joins(:message_type).joins(message_type: :message)
  #			.where("message.msg_datetime > ?", params[:startDateTime])
  #			.where("message.msg_datetime < ?", params[:endDateTime])
  #			.all
  	#@messages = Message.where(DateTime.parse(:msg_datetime => "timestamp") > DateTime.parse(params[:startDateTime])).all
  end

  def message
  	@message = Message.find(params[:id])
  end
end
