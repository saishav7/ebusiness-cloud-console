require 'pg'
class TablesController < ApplicationController
  def viewCompanyTable

  	@company_table = Company.find(:all)

  end

  def createNewCompany

    @company = Company.new
    @company.company_id = params[:comId]
    @company.company_name = params[:comName]
    @company.company_status_id = params[:comStatusId] 

    @company.save

    redirect_to :back

  end

  def viewCompanyStatusTable

    @company_status_table = CompanyStatus.find(:all)

  end


  def createNewCompanyStatus

    @companyStatus = CompanyStatus.new
    @companyStatus.status_id = params[:statusId]
    @companyStatus.status_label = params[:statusLabel]
    @companyStatus.save

    redirect_to :back

  end

  def viewMessageTable

    @message_table = Message.find(:all)

  end

  def createNewMessage

    @message = Message.new
    @message.msg_id = params[:msgId]
    @message.msg_type_id = params[:msgTypeId]
    @message.msg_relation_id = params[:msgRelationId]
    @message.msg_direction = params[:msgDirection]
    @message.msg_datetime = params[:msgDateTime]
    @message.msg_url = params[:msgUrl]
    @message.msg_sbdh_docid_instance_id = params[:msgSbdhDocidInstanceId]
    @message.msg_sbdh_docid_datetime = params[:msgSbdhDocidDateTime]
    @message.msg_msg_creator_id = params[:msgCreatorId]
    @message.msg_trans_creator_id = params[:msgTransCreatorId]
    @message.msg_trans_cmd_dch_creator_id = params[:msgTransCmdDchCreatorId]
    @message.msg_trans_cmd_dco_order_doc_status = params[:msgTransCmdDcoOrderDocStatus]
    @message.msg_trans_cmd_dco_order_creation_datetime = params[:msgTransCmdDcoOrderCreationDateTime]
    @message.msg_trans_cmd_dco_order_creator_id = params[:msgTransCmdDcoOrderCreatorId]
    @message.msg_pre_proc_url = params[:msgPreProcUrl]
    @message.msg_post_proc_url = params[:msgPostProcUrl]
    @message.msg_prev_msg_url = params[:msgPrevMsgUrl]
    @message.msg_post_msg_url = params[:msgPostMsgUrl]
    @message.save

    redirect_to :back

  end

  def viewMessageTypeTable

    @message_type_table = MessageType.find(:all)

  end


  def createNewMessageType

    @message_type = MessageType.new
    @message_type.msgtype_id
    @message_type.msgtype_status_id
    @message_type.msgtype_name
    @message_type.msgtype_in_role
    @message_type.msgtype_out_role
    @message_type.msgtype_sbdh_header_ver
    @message_type.msgtype_sbdh_docid_type_ver
    @message_type.msgtype_sbdh_docid_type
    @message_type.msgtype_sbdh_docid_multi_type
    @message_type.msgtype_bizscope_type
    @message_type.msgtype_bizscope_id
    @message_type.msgtype_bizscope_instance_id
    @message_type.msgtype_trans_cmd_dch_type
    @message_type.msgtype_compliance_map
    @message_type.msgtype_pre_compliance_map
    @message_type.msgtype_post_compliance_map
    @message_type.save

    redirect_to :back

  end


  def viewBusinessProcessTable

    @business_process_table = BusinessProcess.find(:all)

  end

  def createNewBusinessProcess

    @business_process = BusinessProcess.new
    @business_process.bp_id
    @business_process.bp_name
    @business_process.bp_buyer_authority
    @business_process.bp_buyer_authority_version
    @business_process.bp_supplier_authority
    @business_process.bp_supplier_authority_version
    @business_process.save

    redirect_to :back
  end


  def viewEntityTable

    @entity_table = Entity.find(:all)

  end


  def createNewEntity

    @entity = Entity.new
    @entity.entity_id = params[:entityId]
    @entity.entity_name = params[:entityName]
    @entity.entity_label = params[:entityLabel]
    @entity.entity_status_id = params[:entityStatusId]
    @entity.entity_role = params[:entityRole]
    @entity.entity_country = params[:entityCountry]
    @entity.entity_subscr_type = params[:entitySubscrType]
    @entity.entity_abn = params[:entityAbn]
    @entity.entity_sender_id = params[:entitySenderId]
    @entity.entity_receiver_id = params[:entityReceiverId]
    @entity.entity_company_id = params[:entityCompanyId]
    @entity.save

    redirect_to :back
    
  end


  def viewEntityRelationshipTable

    @entity_relationship_table = EntityRelationship.find(:all)

  end

  def createNewEntityRelationship

    @entity_relationship = EntityRelationship.new
    @entity_relationship.relation_id
    @entity_relationship.extbuy_entity_id
    @entity_relationship.locsupl_entity_id
    @entity_relationship.loc_entity_integercode_id
    @entity_relationship.loc_entity_edicode_id
    @entity_relationship.ext_entity_integercode_id
    @entity_relationship.ext_entity_edicode_id
    @entity_relationship.relation_status_id
    @entity_relationship.relation_bp_id
    @entity_relationship.save

    redirect_to :back
    
  end

  def viewInternalCodeTable

    @internal_code_table = InternalCode.find(:all)

  end

  def createNewInternalCode

    @internal_code = InternalCode.new
    @internal_code.code_id = params[:codeId]
    @internal_code.internal_code = params[:internalCode]
    @internal_code.partner_id = params[:partnerId]
    @internal_code.save

    redirect_to :back
    
  end

  def viewEdifactCodeTable

    @edifact_code_table = EdifactCode.find(:all)

  end

  def createNewEdifactCode

    @edifact_code = EdifactCode.new
    @edifact_code.code_id
    @edifact_code.edifact_identifiant
    @edifact_code.edifact_qualifiant
    @edifact_code.edifact_routing_adrs
    @edifact_code.edifact_syntax_level
    @edifact_code.edifact_syntax_version
    @edifact_code.edifact_una_seg
    @edifact_code.edifact_una_seg_value
    @edifact_code.edifact_test_indic
    @edifact_code.partner_id
    @edifact_code.save

    redirect_to :back
    
  end

  def viewRecordStatusTable

    @record_status_table = RecordStatus.find(:all)

  end


  def createNewRecordStatus

    @record_status = RecordStatus.new
    @record_status.status_id = params[:statusId]
    @record_status.status_label = params[:statusLabel]
    @record_status.save

    redirect_to :back
    
  end


  def viewSenderReceiverContactTable

    @sender_receiver_contact_table = SenderReceiverContact.find(:all)

  end


  def createNewSenderReceiverContact

    @sender_receiver_contact = SenderReceiverContact.new
    @sender_receiver_contact.contact_id
    @sender_receiver_contact.contact_gln
    @sender_receiver_contact.contact_name
    @sender_receiver_contact.contact_email
    @sender_receiver_contact.contact_fax
    @sender_receiver_contact.contact_phone
    @sender_receiver_contact.save

    redirect_to :back
    
  end


  def viewProcessMessageRelationshipTable

    @process_message_relationship_table = ProcessMessageRelationship.find(:all)

  end

  def createNewProcessMessageRelationship

    @process_message_relationship = ProcessMessageRelationship.new
    @process_message_relationship.bp_id = params[:bpId]
    @process_message_relationship.msgtype_id = params[:msgTypeId]
    @process_message_relationship.seq_order = params[:seqOrder]
    @process_message_relationship.save

    redirect_to :back

  end


  def viewSchemaMigrationTable

    @schema_migration_table = SchemaMigration.find(:all)

  end

  def createNewSchemaMigration

    @schema_migration = SchemaMigration.new
    @schema_migration.version = params[:schemaVersion]
    @schema_migration.save

    redirect_to :back
  end

end