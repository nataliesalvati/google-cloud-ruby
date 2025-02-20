# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gkehub/v1beta1/membership.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/gkehub/v1beta1/membership.proto", :syntax => :proto3) do
    add_message "google.cloud.gkehub.v1beta1.Membership" do
      optional :name, :string, 1
      map :labels, :string, :string, 2
      optional :description, :string, 3
      optional :state, :message, 5, "google.cloud.gkehub.v1beta1.MembershipState"
      optional :authority, :message, 9, "google.cloud.gkehub.v1beta1.Authority"
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :update_time, :message, 7, "google.protobuf.Timestamp"
      optional :delete_time, :message, 8, "google.protobuf.Timestamp"
      optional :external_id, :string, 10
      optional :last_connection_time, :message, 11, "google.protobuf.Timestamp"
      optional :unique_id, :string, 12
      optional :infrastructure_type, :enum, 13, "google.cloud.gkehub.v1beta1.Membership.InfrastructureType"
      oneof :type do
        optional :endpoint, :message, 4, "google.cloud.gkehub.v1beta1.MembershipEndpoint"
      end
    end
    add_enum "google.cloud.gkehub.v1beta1.Membership.InfrastructureType" do
      value :INFRASTRUCTURE_TYPE_UNSPECIFIED, 0
      value :ON_PREM, 1
      value :MULTI_CLOUD, 2
    end
    add_message "google.cloud.gkehub.v1beta1.MembershipEndpoint" do
      optional :kubernetes_metadata, :message, 5, "google.cloud.gkehub.v1beta1.KubernetesMetadata"
      optional :kubernetes_resource, :message, 6, "google.cloud.gkehub.v1beta1.KubernetesResource"
      oneof :type do
        optional :gke_cluster, :message, 4, "google.cloud.gkehub.v1beta1.GkeCluster"
        optional :on_prem_cluster, :message, 7, "google.cloud.gkehub.v1beta1.OnPremCluster"
        optional :multi_cloud_cluster, :message, 8, "google.cloud.gkehub.v1beta1.MultiCloudCluster"
      end
    end
    add_message "google.cloud.gkehub.v1beta1.KubernetesResource" do
      optional :membership_cr_manifest, :string, 1
      repeated :membership_resources, :message, 2, "google.cloud.gkehub.v1beta1.ResourceManifest"
      repeated :connect_resources, :message, 3, "google.cloud.gkehub.v1beta1.ResourceManifest"
      optional :resource_options, :message, 4, "google.cloud.gkehub.v1beta1.ResourceOptions"
    end
    add_message "google.cloud.gkehub.v1beta1.ResourceOptions" do
      optional :connect_version, :string, 1
      optional :v1beta1_crd, :bool, 2
      optional :k8s_version, :string, 3
    end
    add_message "google.cloud.gkehub.v1beta1.ResourceManifest" do
      optional :manifest, :string, 1
      optional :cluster_scoped, :bool, 2
    end
    add_message "google.cloud.gkehub.v1beta1.GkeCluster" do
      optional :resource_link, :string, 1
      optional :cluster_missing, :bool, 3
    end
    add_message "google.cloud.gkehub.v1beta1.OnPremCluster" do
      optional :resource_link, :string, 1
      optional :cluster_missing, :bool, 2
      optional :admin_cluster, :bool, 3
    end
    add_message "google.cloud.gkehub.v1beta1.MultiCloudCluster" do
      optional :resource_link, :string, 1
      optional :cluster_missing, :bool, 2
    end
    add_message "google.cloud.gkehub.v1beta1.KubernetesMetadata" do
      optional :kubernetes_api_server_version, :string, 1
      optional :node_provider_id, :string, 2
      optional :node_count, :int32, 3
      optional :vcpu_count, :int32, 4
      optional :memory_mb, :int32, 5
      optional :update_time, :message, 100, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.gkehub.v1beta1.Authority" do
      optional :issuer, :string, 1
      optional :workload_identity_pool, :string, 2
      optional :identity_provider, :string, 3
      optional :oidc_jwks, :bytes, 4
    end
    add_message "google.cloud.gkehub.v1beta1.MembershipState" do
      optional :code, :enum, 1, "google.cloud.gkehub.v1beta1.MembershipState.Code"
      optional :description, :string, 2
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.gkehub.v1beta1.MembershipState.Code" do
      value :CODE_UNSPECIFIED, 0
      value :CREATING, 1
      value :READY, 2
      value :DELETING, 3
      value :UPDATING, 4
      value :SERVICE_UPDATING, 5
    end
    add_message "google.cloud.gkehub.v1beta1.ListMembershipsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.gkehub.v1beta1.ListMembershipsResponse" do
      repeated :resources, :message, 1, "google.cloud.gkehub.v1beta1.Membership"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.gkehub.v1beta1.GetMembershipRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.gkehub.v1beta1.CreateMembershipRequest" do
      optional :parent, :string, 1
      optional :membership_id, :string, 2
      optional :resource, :message, 3, "google.cloud.gkehub.v1beta1.Membership"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.gkehub.v1beta1.DeleteMembershipRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 4
    end
    add_message "google.cloud.gkehub.v1beta1.UpdateMembershipRequest" do
      optional :name, :string, 1
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :resource, :message, 3, "google.cloud.gkehub.v1beta1.Membership"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.gkehub.v1beta1.GenerateConnectManifestRequest" do
      optional :name, :string, 1
      optional :connect_agent, :message, 2, "google.cloud.gkehub.v1beta1.ConnectAgent"
      optional :version, :string, 3
      optional :is_upgrade, :bool, 4
      optional :registry, :string, 5
      optional :image_pull_secret_content, :bytes, 6
    end
    add_message "google.cloud.gkehub.v1beta1.GenerateConnectManifestResponse" do
      repeated :manifest, :message, 1, "google.cloud.gkehub.v1beta1.ConnectAgentResource"
    end
    add_message "google.cloud.gkehub.v1beta1.ConnectAgentResource" do
      optional :type, :message, 1, "google.cloud.gkehub.v1beta1.TypeMeta"
      optional :manifest, :string, 2
    end
    add_message "google.cloud.gkehub.v1beta1.TypeMeta" do
      optional :kind, :string, 1
      optional :api_version, :string, 2
    end
    add_message "google.cloud.gkehub.v1beta1.ConnectAgent" do
      optional :name, :string, 1
      optional :proxy, :bytes, 2
      optional :namespace, :string, 3
    end
    add_message "google.cloud.gkehub.v1beta1.ValidateExclusivityRequest" do
      optional :parent, :string, 1
      optional :cr_manifest, :string, 2
      optional :intended_membership, :string, 3
    end
    add_message "google.cloud.gkehub.v1beta1.ValidateExclusivityResponse" do
      optional :status, :message, 1, "google.rpc.Status"
    end
    add_message "google.cloud.gkehub.v1beta1.GenerateExclusivityManifestRequest" do
      optional :name, :string, 1
      optional :crd_manifest, :string, 2
      optional :cr_manifest, :string, 3
    end
    add_message "google.cloud.gkehub.v1beta1.GenerateExclusivityManifestResponse" do
      optional :crd_manifest, :string, 1
      optional :cr_manifest, :string, 2
    end
    add_message "google.cloud.gkehub.v1beta1.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_detail, :string, 5
      optional :cancel_requested, :bool, 6
      optional :api_version, :string, 7
    end
  end
end

module Google
  module Cloud
    module GkeHub
      module V1beta1
        Membership = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.Membership").msgclass
        Membership::InfrastructureType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.Membership.InfrastructureType").enummodule
        MembershipEndpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.MembershipEndpoint").msgclass
        KubernetesResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.KubernetesResource").msgclass
        ResourceOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.ResourceOptions").msgclass
        ResourceManifest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.ResourceManifest").msgclass
        GkeCluster = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.GkeCluster").msgclass
        OnPremCluster = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.OnPremCluster").msgclass
        MultiCloudCluster = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.MultiCloudCluster").msgclass
        KubernetesMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.KubernetesMetadata").msgclass
        Authority = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.Authority").msgclass
        MembershipState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.MembershipState").msgclass
        MembershipState::Code = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.MembershipState.Code").enummodule
        ListMembershipsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.ListMembershipsRequest").msgclass
        ListMembershipsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.ListMembershipsResponse").msgclass
        GetMembershipRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.GetMembershipRequest").msgclass
        CreateMembershipRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.CreateMembershipRequest").msgclass
        DeleteMembershipRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.DeleteMembershipRequest").msgclass
        UpdateMembershipRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.UpdateMembershipRequest").msgclass
        GenerateConnectManifestRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.GenerateConnectManifestRequest").msgclass
        GenerateConnectManifestResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.GenerateConnectManifestResponse").msgclass
        ConnectAgentResource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.ConnectAgentResource").msgclass
        TypeMeta = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.TypeMeta").msgclass
        ConnectAgent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.ConnectAgent").msgclass
        ValidateExclusivityRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.ValidateExclusivityRequest").msgclass
        ValidateExclusivityResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.ValidateExclusivityResponse").msgclass
        GenerateExclusivityManifestRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.GenerateExclusivityManifestRequest").msgclass
        GenerateExclusivityManifestResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.GenerateExclusivityManifestResponse").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1beta1.OperationMetadata").msgclass
      end
    end
  end
end
