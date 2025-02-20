# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/application.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/talent/v4beta1/common_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/type/date_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/talent/v4beta1/application.proto", :syntax => :proto3) do
    add_message "google.cloud.talent.v4beta1.Application" do
      optional :name, :string, 1
      optional :external_id, :string, 31
      optional :profile, :string, 2
      optional :job, :string, 4
      optional :company, :string, 5
      optional :application_date, :message, 7, "google.type.Date"
      optional :stage, :enum, 11, "google.cloud.talent.v4beta1.Application.ApplicationStage"
      optional :state, :enum, 13, "google.cloud.talent.v4beta1.Application.ApplicationState"
      repeated :interviews, :message, 16, "google.cloud.talent.v4beta1.Interview"
      optional :referral, :message, 18, "google.protobuf.BoolValue"
      optional :create_time, :message, 19, "google.protobuf.Timestamp"
      optional :update_time, :message, 20, "google.protobuf.Timestamp"
      optional :outcome_notes, :string, 21
      optional :outcome, :enum, 22, "google.cloud.talent.v4beta1.Outcome"
      optional :is_match, :message, 28, "google.protobuf.BoolValue"
      optional :job_title_snippet, :string, 29
    end
    add_enum "google.cloud.talent.v4beta1.Application.ApplicationState" do
      value :APPLICATION_STATE_UNSPECIFIED, 0
      value :IN_PROGRESS, 1
      value :CANDIDATE_WITHDREW, 2
      value :EMPLOYER_WITHDREW, 3
      value :COMPLETED, 4
      value :CLOSED, 5
    end
    add_enum "google.cloud.talent.v4beta1.Application.ApplicationStage" do
      value :APPLICATION_STAGE_UNSPECIFIED, 0
      value :NEW, 1
      value :SCREEN, 2
      value :HIRING_MANAGER_REVIEW, 3
      value :INTERVIEW, 4
      value :OFFER_EXTENDED, 5
      value :OFFER_ACCEPTED, 6
      value :STARTED, 7
    end
  end
end

module Google
  module Cloud
    module Talent
      module V4beta1
        Application = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.Application").msgclass
        Application::ApplicationState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.Application.ApplicationState").enummodule
        Application::ApplicationStage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.Application.ApplicationStage").enummodule
      end
    end
  end
end
