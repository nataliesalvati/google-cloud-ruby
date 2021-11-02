# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/retail/v2/catalog_service.proto for package 'Google.Cloud.Retail.V2'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/retail/v2/catalog_service_pb'

module Google
  module Cloud
    module Retail
      module V2
        module CatalogService
          # Service for managing catalog configuration.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.retail.v2.CatalogService'

            # Lists all the [Catalog][google.cloud.retail.v2.Catalog]s associated with
            # the project.
            rpc :ListCatalogs, ::Google::Cloud::Retail::V2::ListCatalogsRequest, ::Google::Cloud::Retail::V2::ListCatalogsResponse
            # Updates the [Catalog][google.cloud.retail.v2.Catalog]s.
            rpc :UpdateCatalog, ::Google::Cloud::Retail::V2::UpdateCatalogRequest, ::Google::Cloud::Retail::V2::Catalog
            # Set a specified branch id as default branch. API methods such as
            # [SearchService.Search][google.cloud.retail.v2.SearchService.Search],
            # [ProductService.GetProduct][google.cloud.retail.v2.ProductService.GetProduct],
            # [ProductService.ListProducts][google.cloud.retail.v2.ProductService.ListProducts]
            # will treat requests using "default_branch" to the actual branch id set as
            # default.
            #
            # For example, if `projects/*/locations/*/catalogs/*/branches/1` is set as
            # default, setting
            # [SearchRequest.branch][google.cloud.retail.v2.SearchRequest.branch] to
            # `projects/*/locations/*/catalogs/*/branches/default_branch` is equivalent
            # to setting
            # [SearchRequest.branch][google.cloud.retail.v2.SearchRequest.branch] to
            # `projects/*/locations/*/catalogs/*/branches/1`.
            #
            # Using multiple branches can be useful when developers would like
            # to have a staging branch to test and verify for future usage. When it
            # becomes ready, developers switch on the staging branch using this API while
            # keeping using `projects/*/locations/*/catalogs/*/branches/default_branch`
            # as [SearchRequest.branch][google.cloud.retail.v2.SearchRequest.branch] to
            # route the traffic to this staging branch.
            #
            # CAUTION: If you have live predict/search traffic, switching the default
            # branch could potentially cause outages if the ID space of the new branch is
            # very different from the old one.
            #
            # More specifically:
            #
            # * PredictionService will only return product IDs from branch {newBranch}.
            # * SearchService will only return product IDs from branch {newBranch}
            #   (if branch is not explicitly set).
            # * UserEventService will only join events with products from branch
            #   {newBranch}.
            #
            # This feature is only available for users who have Retail Search enabled.
            # Please submit a form [here](https://cloud.google.com/contact) to contact
            # cloud sales if you are interested in using Retail Search.
            rpc :SetDefaultBranch, ::Google::Cloud::Retail::V2::SetDefaultBranchRequest, ::Google::Protobuf::Empty
            # Get which branch is currently default branch set by
            # [CatalogService.SetDefaultBranch][google.cloud.retail.v2.CatalogService.SetDefaultBranch]
            # method under a specified parent catalog.
            #
            # This feature is only available for users who have Retail Search enabled.
            # Please submit a form [here](https://cloud.google.com/contact) to contact
            # cloud sales if you are interested in using Retail Search.
            rpc :GetDefaultBranch, ::Google::Cloud::Retail::V2::GetDefaultBranchRequest, ::Google::Cloud::Retail::V2::GetDefaultBranchResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
