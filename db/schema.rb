# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_process", id: false, force: true do |t|
    t.integer "bp_id",                                    null: false
    t.string  "bp_name"
    t.string  "bp_buyer_authority"
    t.string  "bp_buyer_authority_version",    limit: 50
    t.string  "bp_supplier_authority"
    t.string  "bp_supplier_authority_version", limit: 20
  end

  create_table "company", id: false, force: true do |t|
    t.integer "company_id",        null: false
    t.string  "company_name"
    t.integer "company_status_id"
  end

  create_table "company_status", id: false, force: true do |t|
    t.integer "status_id",               null: false
    t.string  "status_label", limit: 50
  end

  create_table "edifact_code", id: false, force: true do |t|
    t.integer "code_id",                          null: false
    t.string  "edifact_identifiant"
    t.string  "edifact_qualifiant"
    t.string  "edifact_routing_adrs"
    t.string  "edifact_syntax_level"
    t.string  "edifact_syntax_version"
    t.string  "edifact_una_seg",        limit: 1
    t.string  "edifact_una_seg_value"
    t.string  "edifact_test_indic",     limit: 1
    t.integer "partner_id"
  end

  create_table "entity", id: false, force: true do |t|
    t.integer "entity_id",                                              null: false
    t.string  "entity_name"
    t.string  "entity_label"
    t.integer "entity_status_id"
    t.string  "entity_role",        limit: 50
    t.string  "entity_country",     limit: 2
    t.decimal "entity_subscr_type",            precision: 18, scale: 0
    t.string  "entity_abn",         limit: 25
    t.integer "entity_sender_id"
    t.integer "entity_receiver_id"
    t.integer "entity_company_id",                                      null: false
  end

  create_table "entity_relationship", id: false, force: true do |t|
    t.integer "relation_id",               null: false
    t.integer "extbuy_entity_id",          null: false
    t.integer "locsupl_entity_id",         null: false
    t.integer "loc_entity_integercode_id"
    t.integer "loc_entity_edicode_id"
    t.integer "ext_entity_integercode_id"
    t.integer "ext_entity_edicode_id"
    t.integer "relation_status_id"
    t.integer "relation_bp_id"
  end

  create_table "internal_code", id: false, force: true do |t|
    t.integer "code_id",       null: false
    t.string  "internal_code"
    t.integer "partner_id"
  end

  create_table "message", id: false, force: true do |t|
    t.integer  "msg_id",                                               null: false
    t.integer  "msg_type_id"
    t.integer  "msg_relation_id"
    t.string   "msg_direction",                             limit: 2
    t.datetime "msg_datetime"
    t.string   "msg_url"
    t.string   "msg_sbdh_docid_instance_id",                limit: 50
    t.string   "msg_sbdh_docid_datetime",                   limit: 50
    t.string   "msg_msg_creator_id"
    t.string   "msg_trans_creator_id"
    t.string   "msg_trans_cmd_dch_creator_id"
    t.string   "msg_trans_cmd_dco_order_doc_status",        limit: 50
    t.string   "msg_trans_cmd_dco_order_creation_datetime", limit: 50
    t.string   "msg_trans_cmd_dco_order_creator_id",        limit: 50
    t.string   "msg_pre_proc_url",                          limit: 50
    t.string   "msg_post_proc_url",                         limit: 50
    t.string   "msg_prev_msg_url",                          limit: 50
    t.string   "msg_post_msg_url",                          limit: 50
  end

  create_table "message_type", id: false, force: true do |t|
    t.integer "msgtype_id",                                   null: false
    t.integer "msgtype_status_id"
    t.string  "msgtype_name"
    t.string  "msgtype_in_role",                   limit: 50
    t.string  "msgtype_out_role",                  limit: 50
    t.string  "msgtype_sbdh_header_ver",           limit: 50
    t.string  "msgtype_sbdh_docid_type_ver",       limit: 50
    t.string  "msgtype_sbdh_docid_type",           limit: 50
    t.integer "msgtype_sbdh_docid_multi_type",     limit: 2
    t.string  "msgtype_sbdh_bizscope_type",        limit: 50
    t.string  "msgtype_sbdh_bizscope_id",          limit: 50
    t.string  "msgtype_sbdh_bizscope_instance_id", limit: 50
    t.string  "msgtype_trans_cmd_dch_type",        limit: 50
    t.string  "msgtype_compliance_map",            limit: 50
    t.string  "msgtype_pre_compliance_map",        limit: 50
    t.string  "msgtype_post_compliance_map",       limit: 50
  end

  create_table "process_message_relationship", id: false, force: true do |t|
    t.integer "bp_id",      null: false
    t.integer "msgtype_id", null: false
    t.integer "seq_order",  null: false
  end

  create_table "record_status", id: false, force: true do |t|
    t.integer "status_id",               null: false
    t.string  "status_label", limit: 50
  end

  create_table "sender_receiver_contact", id: false, force: true do |t|
    t.integer "contact_id",                null: false
    t.string  "contact_gln",   limit: 100
    t.string  "contact_name",  limit: 100
    t.string  "contact_email", limit: 100
    t.string  "contact_fax",   limit: 100
    t.string  "contact_phone", limit: 100
  end

end
