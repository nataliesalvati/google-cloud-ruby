# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module GkeHub
      module V1beta1
        # Membership contains information about a member cluster.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The full, unique name of this Membership resource in the format
        #     `projects/*/locations/*/memberships/{membership_id}`, set during creation.
        #
        #     `membership_id` must be a valid RFC 1123 compliant DNS label:
        #
        #       1. At most 63 characters in length
        #       2. It must consist of lower case alphanumeric characters or `-`
        #       3. It must start and end with an alphanumeric character
        #
        #     Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`,
        #     with a maximum length of 63 characters.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. GCP labels for this membership.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of this membership, limited to 63 characters.
        #     Must match the regex: `[a-zA-Z0-9][a-zA-Z0-9_\-\.\ ]*`
        # @!attribute [rw] endpoint
        #   @return [::Google::Cloud::GkeHub::V1beta1::MembershipEndpoint]
        #     Optional. Endpoint information to reach this member.
        # @!attribute [r] state
        #   @return [::Google::Cloud::GkeHub::V1beta1::MembershipState]
        #     Output only. State of the Membership resource.
        # @!attribute [rw] authority
        #   @return [::Google::Cloud::GkeHub::V1beta1::Authority]
        #     Optional. How to identify workloads from this Membership.
        #     See the documentation on Workload Identity for more details:
        #     https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. When the Membership was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. When the Membership was last updated.
        # @!attribute [r] delete_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. When the Membership was deleted.
        # @!attribute [rw] external_id
        #   @return [::String]
        #     Optional. An externally-generated and managed ID for this Membership. This ID may
        #     be modified after creation, but this is not recommended. For GKE clusters,
        #     external_id is managed by the Hub API and updates will be ignored.
        #
        #     The ID must match the regex: `[a-zA-Z0-9][a-zA-Z0-9_\-\.]*`
        #
        #     If this Membership represents a Kubernetes cluster, this value should be
        #     set to the UID of the `kube-system` namespace object.
        # @!attribute [r] last_connection_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. For clusters using Connect, the timestamp of the most recent connection
        #     established with Google Cloud. This time is updated every several minutes,
        #     not continuously. For clusters that do not use GKE Connect, or that have
        #     never connected successfully, this field will be unset.
        # @!attribute [r] unique_id
        #   @return [::String]
        #     Output only. Google-generated UUID for this resource. This is unique across all
        #     Membership resources. If a Membership resource is deleted and another
        #     resource with the same name is created, it gets a different unique_id.
        # @!attribute [rw] infrastructure_type
        #   @return [::Google::Cloud::GkeHub::V1beta1::Membership::InfrastructureType]
        #     Optional. The infrastructure type this Membership is running on.
        class Membership
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Specifies the infrastructure type of a Membership. Infrastructure type is
          # used by Hub to control infrastructure-specific behavior, including pricing.
          #
          # Each GKE distribution (on-GCP, on-Prem, on-X,...) will set this field
          # automatically, but Attached Clusters customers should specify a type
          # during registration.
          module InfrastructureType
            # No type was specified. Some Hub functionality may require a type be
            # specified, and will not support Memberships with this value.
            INFRASTRUCTURE_TYPE_UNSPECIFIED = 0

            # Private infrastructure that is owned or operated by customer. This
            # includes GKE distributions such as GKE-OnPrem and GKE-OnBareMetal.
            ON_PREM = 1

            # Public cloud infrastructure.
            MULTI_CLOUD = 2
          end
        end

        # MembershipEndpoint contains information needed to contact a Kubernetes API,
        # endpoint and any additional Kubernetes metadata.
        # @!attribute [rw] gke_cluster
        #   @return [::Google::Cloud::GkeHub::V1beta1::GkeCluster]
        #     Optional. Specific information for a GKE-on-GCP cluster.
        # @!attribute [rw] on_prem_cluster
        #   @return [::Google::Cloud::GkeHub::V1beta1::OnPremCluster]
        #     Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster
        #     who has no resourceLink is not allowed to use this field, it should have
        #     a nil "type" instead.
        # @!attribute [rw] multi_cloud_cluster
        #   @return [::Google::Cloud::GkeHub::V1beta1::MultiCloudCluster]
        #     Optional. Specific information for a GKE Multi-Cloud cluster.
        # @!attribute [rw] edge_cluster
        #   @return [::Google::Cloud::GkeHub::V1beta1::EdgeCluster]
        #     Optional. Specific information for a Google Edge cluster.
        # @!attribute [rw] appliance_cluster
        #   @return [::Google::Cloud::GkeHub::V1beta1::ApplianceCluster]
        #     Optional. Specific information for a GDC Edge Appliance cluster.
        # @!attribute [r] kubernetes_metadata
        #   @return [::Google::Cloud::GkeHub::V1beta1::KubernetesMetadata]
        #     Output only. Useful Kubernetes-specific metadata.
        # @!attribute [rw] kubernetes_resource
        #   @return [::Google::Cloud::GkeHub::V1beta1::KubernetesResource]
        #     Optional. The in-cluster Kubernetes Resources that should be applied for a correctly
        #     registered cluster, in the steady state. These resources:
        #
        #       * Ensure that the cluster is exclusively registered to one and only one
        #         Hub Membership.
        #       * Propagate Workload Pool Information available in the Membership
        #         Authority field.
        #       * Ensure proper initial configuration of default Hub Features.
        class MembershipEndpoint
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # KubernetesResource contains the YAML manifests and configuration for
        # Membership Kubernetes resources in the cluster. After CreateMembership or
        # UpdateMembership, these resources should be re-applied in the cluster.
        # @!attribute [rw] membership_cr_manifest
        #   @return [::String]
        #     Input only. The YAML representation of the Membership CR. This field is ignored for GKE
        #     clusters where Hub can read the CR directly.
        #
        #     Callers should provide the CR that is currently present in the cluster
        #     during CreateMembership or UpdateMembership, or leave this field empty if
        #     none exists. The CR manifest is used to validate the cluster has not been
        #     registered with another Membership.
        # @!attribute [r] membership_resources
        #   @return [::Array<::Google::Cloud::GkeHub::V1beta1::ResourceManifest>]
        #     Output only. Additional Kubernetes resources that need to be applied to the cluster
        #     after Membership creation, and after every update.
        #
        #     This field is only populated in the Membership returned from a successful
        #     long-running operation from CreateMembership or UpdateMembership. It is not
        #     populated during normal GetMembership or ListMemberships requests. To get
        #     the resource manifest after the initial registration, the caller should
        #     make a UpdateMembership call with an empty field mask.
        # @!attribute [r] connect_resources
        #   @return [::Array<::Google::Cloud::GkeHub::V1beta1::ResourceManifest>]
        #     Output only. The Kubernetes resources for installing the GKE Connect agent
        #
        #     This field is only populated in the Membership returned from a successful
        #     long-running operation from CreateMembership or UpdateMembership. It is not
        #     populated during normal GetMembership or ListMemberships requests. To get
        #     the resource manifest after the initial registration, the caller should
        #     make a UpdateMembership call with an empty field mask.
        # @!attribute [rw] resource_options
        #   @return [::Google::Cloud::GkeHub::V1beta1::ResourceOptions]
        #     Optional. Options for Kubernetes resource generation.
        class KubernetesResource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ResourceOptions represent options for Kubernetes resource generation.
        # @!attribute [rw] connect_version
        #   @return [::String]
        #     Optional. The Connect agent version to use for connect_resources. Defaults to the
        #     latest GKE Connect version. The version must be a currently supported
        #     version, obsolete versions will be rejected.
        # @!attribute [rw] v1beta1_crd
        #   @return [::Boolean]
        #     Optional. Use `apiextensions/v1beta1` instead of `apiextensions/v1` for
        #     CustomResourceDefinition resources.
        #     This option should be set for clusters with Kubernetes apiserver versions
        #     <1.16.
        # @!attribute [rw] k8s_version
        #   @return [::String]
        #     Optional. Major version of the Kubernetes cluster. This is only used to determine
        #     which version to use for the CustomResourceDefinition resources,
        #     `apiextensions/v1beta1` or`apiextensions/v1`.
        class ResourceOptions
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ResourceManifest represents a single Kubernetes resource to be applied to
        # the cluster.
        # @!attribute [rw] manifest
        #   @return [::String]
        #     YAML manifest of the resource.
        # @!attribute [rw] cluster_scoped
        #   @return [::Boolean]
        #     Whether the resource provided in the manifest is `cluster_scoped`.
        #     If unset, the manifest is assumed to be namespace scoped.
        #
        #     This field is used for REST mapping when applying the resource in a
        #     cluster.
        class ResourceManifest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # GkeCluster contains information specific to GKE clusters.
        # @!attribute [rw] resource_link
        #   @return [::String]
        #     Immutable. Self-link of the GCP resource for the GKE cluster. For example:
        #
        #         //container.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
        #
        #     Zonal clusters are also supported.
        # @!attribute [r] cluster_missing
        #   @return [::Boolean]
        #     Output only. If cluster_missing is set then it denotes that the GKE cluster no longer
        #     exists in the GKE Control Plane.
        class GkeCluster
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # OnPremCluster contains information specific to GKE On-Prem clusters.
        # @!attribute [rw] resource_link
        #   @return [::String]
        #     Immutable. Self-link of the GCP resource for the GKE On-Prem cluster. For example:
        #
        #      //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/vmwareClusters/my-cluster
        #      //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/bareMetalClusters/my-cluster
        # @!attribute [r] cluster_missing
        #   @return [::Boolean]
        #     Output only. If cluster_missing is set then it denotes that
        #     API(gkeonprem.googleapis.com) resource for this GKE On-Prem cluster no
        #     longer exists.
        # @!attribute [rw] admin_cluster
        #   @return [::Boolean]
        #     Immutable. Whether the cluster is an admin cluster.
        class OnPremCluster
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.
        # @!attribute [rw] resource_link
        #   @return [::String]
        #     Immutable. Self-link of the GCP resource for the GKE Multi-Cloud cluster. For
        #     example:
        #
        #      //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster
        #      //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster
        # @!attribute [r] cluster_missing
        #   @return [::Boolean]
        #     Output only. If cluster_missing is set then it denotes that
        #     API(gkemulticloud.googleapis.com) resource for this GKE Multi-Cloud cluster
        #     no longer exists.
        class MultiCloudCluster
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # EdgeCluster contains information specific to Google Edge Clusters.
        # @!attribute [rw] resource_link
        #   @return [::String]
        #     Immutable. Self-link of the GCP resource for the Edge Cluster. For
        #     example:
        #
        #     //edgecontainer.googleapis.com/projects/my-project/locations/us-west1-a/clusters/my-cluster
        class EdgeCluster
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ApplianceCluster contains information specific to GDC Edge Appliance
        # Clusters.
        # @!attribute [rw] resource_link
        #   @return [::String]
        #     Immutable. Self-link of the GCP resource for the Appliance Cluster. For
        #     example:
        #
        #     //transferappliance.googleapis.com/projects/my-project/locations/us-west1-a/appliances/my-appliance
        class ApplianceCluster
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # KubernetesMetadata provides informational metadata for Memberships
        # representing Kubernetes clusters.
        # @!attribute [r] kubernetes_api_server_version
        #   @return [::String]
        #     Output only. Kubernetes API server version string as reported by '/version'.
        # @!attribute [r] node_provider_id
        #   @return [::String]
        #     Output only. Node providerID as reported by the first node in the list of nodes on
        #     the Kubernetes endpoint. On Kubernetes platforms that support zero-node
        #     clusters (like GKE-on-GCP), the node_count will be zero and the
        #     node_provider_id will be empty.
        # @!attribute [r] node_count
        #   @return [::Integer]
        #     Output only. Node count as reported by Kubernetes nodes resources.
        # @!attribute [r] vcpu_count
        #   @return [::Integer]
        #     Output only. vCPU count as reported by Kubernetes nodes resources.
        # @!attribute [r] memory_mb
        #   @return [::Integer]
        #     Output only. The total memory capacity as reported by the sum of all Kubernetes nodes
        #     resources, defined in MB.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which these details were last updated. This update_time is
        #     different from the Membership-level update_time since EndpointDetails are
        #     updated internally for API consumers.
        class KubernetesMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Authority encodes how Google will recognize identities from this Membership.
        # See the workload identity documentation for more details:
        # https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
        # @!attribute [rw] issuer
        #   @return [::String]
        #     Optional. A JSON Web Token (JWT) issuer URI. `issuer` must start with `https://` and
        #     be a valid URL with length <2000 characters.
        #
        #     If set, then Google will allow valid OIDC tokens from this issuer to
        #     authenticate within the workload_identity_pool. OIDC discovery will be
        #     performed on this URI to validate tokens from the issuer.
        #
        #     Clearing `issuer` disables Workload Identity. `issuer` cannot be directly
        #     modified; it must be cleared (and Workload Identity disabled) before using
        #     a new issuer (and re-enabling Workload Identity).
        # @!attribute [r] workload_identity_pool
        #   @return [::String]
        #     Output only. The name of the workload identity pool in which `issuer` will be
        #     recognized.
        #
        #     There is a single Workload Identity Pool per Hub that is shared
        #     between all Memberships that belong to that Hub. For a Hub hosted in
        #     \\{PROJECT_ID}, the workload pool format is `{PROJECT_ID}.hub.id.goog`,
        #     although this is subject to change in newer versions of this API.
        # @!attribute [r] identity_provider
        #   @return [::String]
        #     Output only. An identity provider that reflects the `issuer` in the workload identity
        #     pool.
        # @!attribute [rw] oidc_jwks
        #   @return [::String]
        #     Optional. OIDC verification keys for this Membership in JWKS format (RFC 7517).
        #
        #     When this field is set, OIDC discovery will NOT be performed on `issuer`,
        #     and instead OIDC tokens will be validated using this field.
        class Authority
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # State of the Membership resource.
        # @!attribute [r] code
        #   @return [::Google::Cloud::GkeHub::V1beta1::MembershipState::Code]
        #     Output only. The current state of the Membership resource.
        # @!attribute [rw] description
        #   @return [::String]
        #     This field is never set by the Hub Service.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     This field is never set by the Hub Service.
        class MembershipState
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Code describes the state of a Membership resource.
          module Code
            # The code is not set.
            CODE_UNSPECIFIED = 0

            # The cluster is being registered.
            CREATING = 1

            # The cluster is registered.
            READY = 2

            # The cluster is being unregistered.
            DELETING = 3

            # The Membership is being updated.
            UPDATING = 4

            # The Membership is being updated by the Hub Service.
            SERVICE_UPDATING = 5
          end
        end

        # Request message for `GkeHubMembershipService.ListMemberships` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent (project and location) where the Memberships will be listed.
        #     Specified in the format `projects/*/locations/*`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. When requesting a 'page' of resources, `page_size` specifies number of
        #     resources to return. If unspecified or set to 0, all resources will
        #     be returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. Token returned by previous call to `ListMemberships` which
        #     specifies the position in the list from where to continue listing the
        #     resources.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Lists Memberships that match the filter expression, following the syntax
        #     outlined in https://google.aip.dev/160.
        #
        #     Examples:
        #
        #       - Name is `bar` in project `foo-proj` and location `global`:
        #
        #           name = "projects/foo-proj/locations/global/membership/bar"
        #
        #       - Memberships that have a label called `foo`:
        #
        #           labels.foo:*
        #
        #       - Memberships that have a label called `foo` whose value is `bar`:
        #
        #           labels.foo = bar
        #
        #       - Memberships in the CREATING state:
        #
        #           state = CREATING
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. One or more fields to compare and use to sort the output.
        #     See https://google.aip.dev/132#ordering.
        class ListMembershipsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for the `GkeHubMembershipService.ListMemberships` method.
        # @!attribute [rw] resources
        #   @return [::Array<::Google::Cloud::GkeHub::V1beta1::Membership>]
        #     The list of matching Memberships.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to request the next page of resources from the
        #     `ListMemberships` method. The value of an empty string means that
        #     there are no more resources to return.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     List of locations that could not be reached while fetching this list.
        class ListMembershipsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `GkeHubMembershipService.GetMembership` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The Membership resource name in the format
        #     `projects/*/locations/*/memberships/*`.
        class GetMembershipRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the `GkeHubMembershipService.CreateMembership` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent (project and location) where the Memberships will be created.
        #     Specified in the format `projects/*/locations/*`.
        # @!attribute [rw] membership_id
        #   @return [::String]
        #     Required. Client chosen ID for the membership. `membership_id` must be a valid RFC
        #     1123 compliant DNS label:
        #
        #       1. At most 63 characters in length
        #       2. It must consist of lower case alphanumeric characters or `-`
        #       3. It must start and end with an alphanumeric character
        #
        #     Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`,
        #     with a maximum length of 63 characters.
        # @!attribute [rw] resource
        #   @return [::Google::Cloud::GkeHub::V1beta1::Membership]
        #     Required. The membership to create.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. A request ID to identify requests. Specify a unique request ID
        #     so that if you must retry your request, the server will know to ignore
        #     the request if it has already been completed. The server will guarantee
        #     that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and
        #     the request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class CreateMembershipRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `GkeHubMembershipService.DeleteMembership` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The Membership resource name in the format
        #     `projects/*/locations/*/memberships/*`.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. A request ID to identify requests. Specify a unique request ID
        #     so that if you must retry your request, the server will know to ignore
        #     the request if it has already been completed. The server will guarantee
        #     that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and
        #     the request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class DeleteMembershipRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `GkeHubMembershipService.UpdateMembership` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The membership resource name in the format:
        #     `projects/[project_id]/locations/global/memberships/[membership_id]`
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update. At least one field path must be specified in this
        #     mask.
        # @!attribute [rw] resource
        #   @return [::Google::Cloud::GkeHub::V1beta1::Membership]
        #     Required. Only fields specified in update_mask are updated.
        #     If you specify a field in the update_mask but don't specify its value here
        #     that field will be deleted.
        #     If you are updating a map field, set the value of a key to null or empty
        #     string to delete the key from the map. It's not possible to update a key's
        #     value to the empty string.
        #     If you specify the update_mask to be a special path "*", fully replaces all
        #     user-modifiable fields to match `resource`.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. A request ID to identify requests. Specify a unique request ID
        #     so that if you must retry your request, the server will know to ignore
        #     the request if it has already been completed. The server will guarantee
        #     that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and
        #     the request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class UpdateMembershipRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `GkeHubMembershipService.GenerateConnectManifest`
        # method.
        # .
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The Membership resource name the Agent will associate with, in the format
        #     `projects/*/locations/*/memberships/*`.
        # @!attribute [rw] connect_agent
        #   @return [::Google::Cloud::GkeHub::V1beta1::ConnectAgent]
        #     Optional. The connect agent to generate manifest for.
        # @!attribute [rw] version
        #   @return [::String]
        #     Optional. The Connect agent version to use. Defaults to the most current version.
        # @!attribute [rw] is_upgrade
        #   @return [::Boolean]
        #     Optional. If true, generate the resources for upgrade only. Some resources
        #     generated only for installation (e.g. secrets) will be excluded.
        # @!attribute [rw] registry
        #   @return [::String]
        #     Optional. The registry to fetch the connect agent image from. Defaults to
        #     gcr.io/gkeconnect.
        # @!attribute [rw] image_pull_secret_content
        #   @return [::String]
        #     Optional. The image pull secret content for the registry, if not public.
        class GenerateConnectManifestRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # GenerateConnectManifestResponse contains manifest information for
        # installing/upgrading a Connect agent.
        # @!attribute [rw] manifest
        #   @return [::Array<::Google::Cloud::GkeHub::V1beta1::ConnectAgentResource>]
        #     The ordered list of Kubernetes resources that need to be applied to the
        #     cluster for GKE Connect agent installation/upgrade.
        class GenerateConnectManifestResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ConnectAgentResource represents a Kubernetes resource manifest for Connect
        # Agent deployment.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::GkeHub::V1beta1::TypeMeta]
        #     Kubernetes type of the resource.
        # @!attribute [rw] manifest
        #   @return [::String]
        #     YAML manifest of the resource.
        class ConnectAgentResource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # TypeMeta is the type information needed for content unmarshalling of
        # Kubernetes resources in the manifest.
        # @!attribute [rw] kind
        #   @return [::String]
        #     Kind of the resource (e.g. Deployment).
        # @!attribute [rw] api_version
        #   @return [::String]
        #     APIVersion of the resource (e.g. v1).
        class TypeMeta
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The information required from end users to use GKE Connect.
        # @!attribute [rw] name
        #   @return [::String]
        #     Do not set.
        # @!attribute [rw] proxy
        #   @return [::String]
        #     Optional. URI of a proxy if connectivity from the agent to gkeconnect.googleapis.com
        #     requires the use of a proxy. Format must be in the form
        #     `http(s)://{proxy_address}`, depending on the HTTP/HTTPS protocol
        #     supported by the proxy. This will direct the connect agent's outbound
        #     traffic through a HTTP(S) proxy.
        # @!attribute [rw] namespace
        #   @return [::String]
        #     Optional. Namespace for GKE Connect agent resources. Defaults to `gke-connect`.
        #
        #     The Connect Agent is authorized automatically when run in the default
        #     namespace. Otherwise, explicit authorization must be granted with an
        #     additional IAM binding.
        class ConnectAgent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to validate the existing state of the membership CR in the
        # cluster.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent (project and location) where the Memberships will be created.
        #     Specified in the format `projects/*/locations/*`.
        # @!attribute [rw] cr_manifest
        #   @return [::String]
        #     Optional. The YAML of the membership CR in the cluster. Empty if the membership
        #     CR does not exist.
        # @!attribute [rw] intended_membership
        #   @return [::String]
        #     Required. The intended membership name under the `parent`. This method only does
        #     validation in anticipation of a CreateMembership call with the same name.
        class ValidateExclusivityRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response of exclusivity artifacts validation result status.
        # @!attribute [rw] status
        #   @return [::Google::Rpc::Status]
        #     The validation result.
        #
        #     * `OK` means that exclusivity is validated, assuming the manifest produced
        #        by GenerateExclusivityManifest is successfully applied.
        #     * `ALREADY_EXISTS` means that the Membership CRD is already owned by
        #        another Hub. See `status.message` for more information.
        class ValidateExclusivityResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to generate the manifests for exclusivity artifacts.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The Membership resource name in the format
        #     `projects/*/locations/*/memberships/*`.
        # @!attribute [rw] crd_manifest
        #   @return [::String]
        #     Optional. The YAML manifest of the membership CRD retrieved by
        #     `kubectl get customresourcedefinitions membership`.
        #     Leave empty if the resource does not exist.
        # @!attribute [rw] cr_manifest
        #   @return [::String]
        #     Optional. The YAML manifest of the membership CR retrieved by
        #     `kubectl get memberships membership`.
        #     Leave empty if the resource does not exist.
        class GenerateExclusivityManifestRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response of the exclusivity artifacts manifests for the client to apply.
        # @!attribute [rw] crd_manifest
        #   @return [::String]
        #     The YAML manifest of the membership CRD to apply if a newer version of the
        #     CRD is available. Empty if no update needs to be applied.
        # @!attribute [rw] cr_manifest
        #   @return [::String]
        #     The YAML manifest of the membership CR to apply if a new version of the
        #     CR is available. Empty if no update needs to be applied.
        class GenerateExclusivityManifestResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the metadata of the long-running operation.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [r] target
        #   @return [::String]
        #     Output only. Server-defined resource path for the target of the operation.
        # @!attribute [r] verb
        #   @return [::String]
        #     Output only. Name of the verb executed by the operation.
        # @!attribute [r] status_detail
        #   @return [::String]
        #     Output only. Human-readable status of the operation, if any.
        # @!attribute [r] cancel_requested
        #   @return [::Boolean]
        #     Output only. Identifies whether the user has requested cancellation
        #     of the operation. Operations that have successfully been cancelled
        #     have [Operation.error][] value with a {::Google::Rpc::Status#code google.rpc.Status.code} of 1,
        #     corresponding to `Code.CANCELLED`.
        # @!attribute [r] api_version
        #   @return [::String]
        #     Output only. API version used to start the operation.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
