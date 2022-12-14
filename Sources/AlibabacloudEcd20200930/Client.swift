import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

open class Client : AlibabacloudOpenApi.Client {
    public override init(_ config: AlibabacloudOpenApi.Config) throws {
        try super.init(config)
        self._endpointRule = "regional"
        try checkConfig(config as! AlibabacloudOpenApi.Config)
        self._endpoint = try getEndpoint("ecd", self._regionId ?? "", self._endpointRule ?? "", self._network ?? "", self._suffix ?? "", self._endpointMap ?? [:], self._endpoint ?? "")
    }

    public func getEndpoint(_ productId: String, _ regionId: String, _ endpointRule: String, _ network: String, _ suffix: String, _ endpointMap: [String: String], _ endpoint: String) throws -> String {
        if (!TeaUtils.Client.empty(endpoint)) {
            return endpoint as! String
        }
        if (!TeaUtils.Client.isUnset(endpointMap) && !TeaUtils.Client.empty(endpointMap[regionId as! String])) {
            return endpointMap[regionId as! String] ?? ""
        }
        return try AlibabacloudEndpointUtil.Client.getEndpointRules(productId, regionId, endpointRule, network, suffix)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func activateOfficeSiteWithOptions(_ request: ActivateOfficeSiteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ActivateOfficeSiteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ActivateOfficeSite",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ActivateOfficeSiteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func activateOfficeSite(_ request: ActivateOfficeSiteRequest) async throws -> ActivateOfficeSiteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await activateOfficeSiteWithOptions(request as! ActivateOfficeSiteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserToDesktopGroupWithOptions(_ request: AddUserToDesktopGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AddUserToDesktopGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopGroupIds)) {
            query["DesktopGroupIds"] = request.desktopGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.endUserIds)) {
            query["EndUserIds"] = request.endUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AddUserToDesktopGroup",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AddUserToDesktopGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func addUserToDesktopGroup(_ request: AddUserToDesktopGroupRequest) async throws -> AddUserToDesktopGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await addUserToDesktopGroupWithOptions(request as! AddUserToDesktopGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyCoordinatePrivilegeWithOptions(_ request: ApplyCoordinatePrivilegeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyCoordinatePrivilegeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coId)) {
            query["CoId"] = request.coId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userType)) {
            query["UserType"] = request.userType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyCoordinatePrivilege",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyCoordinatePrivilegeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyCoordinatePrivilege(_ request: ApplyCoordinatePrivilegeRequest) async throws -> ApplyCoordinatePrivilegeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyCoordinatePrivilegeWithOptions(request as! ApplyCoordinatePrivilegeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyCoordinationForMonitoringWithOptions(_ request: ApplyCoordinationForMonitoringRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApplyCoordinationForMonitoringResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coordinatePolicyType)) {
            query["CoordinatePolicyType"] = request.coordinatePolicyType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.initiatorType)) {
            query["InitiatorType"] = request.initiatorType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceCandidates)) {
            query["ResourceCandidates"] = request.resourceCandidates ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApplyCoordinationForMonitoring",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApplyCoordinationForMonitoringResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func applyCoordinationForMonitoring(_ request: ApplyCoordinationForMonitoringRequest) async throws -> ApplyCoordinationForMonitoringResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await applyCoordinationForMonitoringWithOptions(request as! ApplyCoordinationForMonitoringRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func approveFotaUpdateWithOptions(_ request: ApproveFotaUpdateRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ApproveFotaUpdateResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appVersion)) {
            query["AppVersion"] = request.appVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ApproveFotaUpdate",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ApproveFotaUpdateResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func approveFotaUpdate(_ request: ApproveFotaUpdateRequest) async throws -> ApproveFotaUpdateResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await approveFotaUpdateWithOptions(request as! ApproveFotaUpdateRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateNetworkPackageWithOptions(_ request: AssociateNetworkPackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AssociateNetworkPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkPackageId)) {
            query["NetworkPackageId"] = request.networkPackageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AssociateNetworkPackage",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AssociateNetworkPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func associateNetworkPackage(_ request: AssociateNetworkPackageRequest) async throws -> AssociateNetworkPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await associateNetworkPackageWithOptions(request as! AssociateNetworkPackageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachCenWithOptions(_ request: AttachCenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> AttachCenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cenId)) {
            query["CenId"] = request.cenId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cenOwnerId)) {
            query["CenOwnerId"] = request.cenOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyCode)) {
            query["VerifyCode"] = request.verifyCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "AttachCen",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(AttachCenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func attachCen(_ request: AttachCenRequest) async throws -> AttachCenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await attachCenWithOptions(request as! AttachCenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelCoordinationForMonitoringWithOptions(_ request: CancelCoordinationForMonitoringRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelCoordinationForMonitoringResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coIds)) {
            query["CoIds"] = request.coIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userType)) {
            query["UserType"] = request.userType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelCoordinationForMonitoring",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelCoordinationForMonitoringResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelCoordinationForMonitoring(_ request: CancelCoordinationForMonitoringRequest) async throws -> CancelCoordinationForMonitoringResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelCoordinationForMonitoringWithOptions(request as! CancelCoordinationForMonitoringRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelCopyImageWithOptions(_ request: CancelCopyImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CancelCopyImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CancelCopyImage",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CancelCopyImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func cancelCopyImage(_ request: CancelCopyImageRequest) async throws -> CancelCopyImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await cancelCopyImageWithOptions(request as! CancelCopyImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clonePolicyGroupWithOptions(_ request: ClonePolicyGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ClonePolicyGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ClonePolicyGroup",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ClonePolicyGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func clonePolicyGroup(_ request: ClonePolicyGroupRequest) async throws -> ClonePolicyGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await clonePolicyGroupWithOptions(request as! ClonePolicyGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configADConnectorTrustWithOptions(_ request: ConfigADConnectorTrustRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigADConnectorTrustResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.trustKey)) {
            query["TrustKey"] = request.trustKey ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigADConnectorTrust",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigADConnectorTrustResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configADConnectorTrust(_ request: ConfigADConnectorTrustRequest) async throws -> ConfigADConnectorTrustResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configADConnectorTrustWithOptions(request as! ConfigADConnectorTrustRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configADConnectorUserWithOptions(_ request: ConfigADConnectorUserRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ConfigADConnectorUserResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainPassword)) {
            query["DomainPassword"] = request.domainPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainUserName)) {
            query["DomainUserName"] = request.domainUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OUName)) {
            query["OUName"] = request.OUName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ConfigADConnectorUser",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ConfigADConnectorUserResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func configADConnectorUser(_ request: ConfigADConnectorUserRequest) async throws -> ConfigADConnectorUserResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await configADConnectorUserWithOptions(request as! ConfigADConnectorUserRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyImageWithOptions(_ request: CopyImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CopyImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.destinationDescription)) {
            query["DestinationDescription"] = request.destinationDescription ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationImageName)) {
            query["DestinationImageName"] = request.destinationImageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.destinationRegionId)) {
            query["DestinationRegionId"] = request.destinationRegionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CopyImage",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CopyImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func copyImage(_ request: CopyImageRequest) async throws -> CopyImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await copyImageWithOptions(request as! CopyImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createADConnectorDirectoryWithOptions(_ request: CreateADConnectorDirectoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateADConnectorDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopAccessType)) {
            query["DesktopAccessType"] = request.desktopAccessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryName)) {
            query["DirectoryName"] = request.directoryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dnsAddress)) {
            query["DnsAddress"] = request.dnsAddress ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainPassword)) {
            query["DomainPassword"] = request.domainPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainUserName)) {
            query["DomainUserName"] = request.domainUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAdminAccess)) {
            query["EnableAdminAccess"] = request.enableAdminAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.mfaEnabled)) {
            query["MfaEnabled"] = request.mfaEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specification)) {
            query["Specification"] = request.specification!;
        }
        if (!TeaUtils.Client.isUnset(request.subDomainDnsAddress)) {
            query["SubDomainDnsAddress"] = request.subDomainDnsAddress ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.subDomainName)) {
            query["SubDomainName"] = request.subDomainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateADConnectorDirectory",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateADConnectorDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createADConnectorDirectory(_ request: CreateADConnectorDirectoryRequest) async throws -> CreateADConnectorDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createADConnectorDirectoryWithOptions(request as! CreateADConnectorDirectoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createADConnectorOfficeSiteWithOptions(_ request: CreateADConnectorOfficeSiteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateADConnectorOfficeSiteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adHostname)) {
            query["AdHostname"] = request.adHostname ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bandwidth)) {
            query["Bandwidth"] = request.bandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.cenId)) {
            query["CenId"] = request.cenId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cenOwnerId)) {
            query["CenOwnerId"] = request.cenOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.cidrBlock)) {
            query["CidrBlock"] = request.cidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopAccessType)) {
            query["DesktopAccessType"] = request.desktopAccessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dnsAddress)) {
            query["DnsAddress"] = request.dnsAddress ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainPassword)) {
            query["DomainPassword"] = request.domainPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainUserName)) {
            query["DomainUserName"] = request.domainUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAdminAccess)) {
            query["EnableAdminAccess"] = request.enableAdminAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.enableInternetAccess)) {
            query["EnableInternetAccess"] = request.enableInternetAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.mfaEnabled)) {
            query["MfaEnabled"] = request.mfaEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteName)) {
            query["OfficeSiteName"] = request.officeSiteName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocolType)) {
            query["ProtocolType"] = request.protocolType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.specification)) {
            query["Specification"] = request.specification!;
        }
        if (!TeaUtils.Client.isUnset(request.subDomainDnsAddress)) {
            query["SubDomainDnsAddress"] = request.subDomainDnsAddress ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.subDomainName)) {
            query["SubDomainName"] = request.subDomainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyCode)) {
            query["VerifyCode"] = request.verifyCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateADConnectorOfficeSite",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateADConnectorOfficeSiteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createADConnectorOfficeSite(_ request: CreateADConnectorOfficeSiteRequest) async throws -> CreateADConnectorOfficeSiteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createADConnectorOfficeSiteWithOptions(request as! CreateADConnectorOfficeSiteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAndBindNasFileSystemWithOptions(_ request: CreateAndBindNasFileSystemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateAndBindNasFileSystemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptType)) {
            query["EncryptType"] = request.encryptType!;
        }
        if (!TeaUtils.Client.isUnset(request.endUserIds)) {
            query["EndUserIds"] = request.endUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.fileSystemName)) {
            query["FileSystemName"] = request.fileSystemName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageType)) {
            query["StorageType"] = request.storageType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateAndBindNasFileSystem",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateAndBindNasFileSystemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createAndBindNasFileSystem(_ request: CreateAndBindNasFileSystemRequest) async throws -> CreateAndBindNasFileSystemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createAndBindNasFileSystemWithOptions(request as! CreateAndBindNasFileSystemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBundleWithOptions(_ request: CreateBundleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateBundleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bundleName)) {
            query["BundleName"] = request.bundleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopType)) {
            query["DesktopType"] = request.desktopType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rootDiskPerformanceLevel)) {
            query["RootDiskPerformanceLevel"] = request.rootDiskPerformanceLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rootDiskSizeGib)) {
            query["RootDiskSizeGib"] = request.rootDiskSizeGib!;
        }
        if (!TeaUtils.Client.isUnset(request.userDiskPerformanceLevel)) {
            query["UserDiskPerformanceLevel"] = request.userDiskPerformanceLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userDiskSizeGib)) {
            query["UserDiskSizeGib"] = request.userDiskSizeGib ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateBundle",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateBundleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createBundle(_ request: CreateBundleRequest) async throws -> CreateBundleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createBundleWithOptions(request as! CreateBundleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDesktopGroupWithOptions(_ request: CreateDesktopGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDesktopGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allClassifyUsers)) {
            query["AllClassifyUsers"] = request.allClassifyUsers!;
        }
        if (!TeaUtils.Client.isUnset(request.allowAutoSetup)) {
            query["AllowAutoSetup"] = request.allowAutoSetup!;
        }
        if (!TeaUtils.Client.isUnset(request.allowBufferCount)) {
            query["AllowBufferCount"] = request.allowBufferCount!;
        }
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.bindAmount)) {
            query["BindAmount"] = request.bindAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.bundleId)) {
            query["BundleId"] = request.bundleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.classify)) {
            query["Classify"] = request.classify ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientToken)) {
            query["ClientToken"] = request.clientToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comments)) {
            query["Comments"] = request.comments ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectDuration)) {
            query["ConnectDuration"] = request.connectDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.defaultInitDesktopCount)) {
            query["DefaultInitDesktopCount"] = request.defaultInitDesktopCount!;
        }
        if (!TeaUtils.Client.isUnset(request.desktopGroupName)) {
            query["DesktopGroupName"] = request.desktopGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserIds)) {
            query["EndUserIds"] = request.endUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.fileSystemId)) {
            query["FileSystemId"] = request.fileSystemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idleDisconnectDuration)) {
            query["IdleDisconnectDuration"] = request.idleDisconnectDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.keepDuration)) {
            query["KeepDuration"] = request.keepDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.loadPolicy)) {
            query["LoadPolicy"] = request.loadPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.maxDesktopsCount)) {
            query["MaxDesktopsCount"] = request.maxDesktopsCount!;
        }
        if (!TeaUtils.Client.isUnset(request.minDesktopsCount)) {
            query["MinDesktopsCount"] = request.minDesktopsCount!;
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownType)) {
            query["OwnType"] = request.ownType!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profileFollowSwitch)) {
            query["ProfileFollowSwitch"] = request.profileFollowSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.ratioThreshold)) {
            query["RatioThreshold"] = request.ratioThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resetType)) {
            query["ResetType"] = request.resetType!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleStrategyId)) {
            query["ScaleStrategyId"] = request.scaleStrategyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stopDuration)) {
            query["StopDuration"] = request.stopDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.volumeEncryptionEnabled)) {
            query["VolumeEncryptionEnabled"] = request.volumeEncryptionEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.volumeEncryptionKey)) {
            query["VolumeEncryptionKey"] = request.volumeEncryptionKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDesktopGroup",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDesktopGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDesktopGroup(_ request: CreateDesktopGroupRequest) async throws -> CreateDesktopGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDesktopGroupWithOptions(request as! CreateDesktopGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDesktopsWithOptions(_ request: CreateDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.amount)) {
            query["Amount"] = request.amount!;
        }
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.bundleId)) {
            query["BundleId"] = request.bundleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopName)) {
            query["DesktopName"] = request.desktopName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopNameSuffix)) {
            query["DesktopNameSuffix"] = request.desktopNameSuffix!;
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.hostname)) {
            query["Hostname"] = request.hostname ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            query["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userAssignMode)) {
            query["UserAssignMode"] = request.userAssignMode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userCommands)) {
            query["UserCommands"] = request.userCommands ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.volumeEncryptionEnabled)) {
            query["VolumeEncryptionEnabled"] = request.volumeEncryptionEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.volumeEncryptionKey)) {
            query["VolumeEncryptionKey"] = request.volumeEncryptionKey ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vpcId)) {
            query["VpcId"] = request.vpcId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDesktops",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDesktops(_ request: CreateDesktopsRequest) async throws -> CreateDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDesktopsWithOptions(request as! CreateDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDiskEncryptionServiceWithOptions(_ request: CreateDiskEncryptionServiceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDiskEncryptionServiceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDiskEncryptionService",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDiskEncryptionServiceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDiskEncryptionService(_ request: CreateDiskEncryptionServiceRequest) async throws -> CreateDiskEncryptionServiceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDiskEncryptionServiceWithOptions(request as! CreateDiskEncryptionServiceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDriveWithOptions(_ request: CreateDriveRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateDriveResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliUid)) {
            query["AliUid"] = request.aliUid!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainId)) {
            query["DomainId"] = request.domainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.driveName)) {
            query["DriveName"] = request.driveName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.externalDomainId)) {
            query["ExternalDomainId"] = request.externalDomainId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profileRoaming)) {
            query["ProfileRoaming"] = request.profileRoaming!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.totalSize)) {
            query["TotalSize"] = request.totalSize!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usedSize)) {
            query["UsedSize"] = request.usedSize!;
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateDrive",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateDriveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createDrive(_ request: CreateDriveRequest) async throws -> CreateDriveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createDriveWithOptions(request as! CreateDriveRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImageWithOptions(_ request: CreateImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoCleanUserdata)) {
            query["AutoCleanUserdata"] = request.autoCleanUserdata!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.diskType)) {
            query["DiskType"] = request.diskType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            query["ImageName"] = request.imageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageResourceType)) {
            query["ImageResourceType"] = request.imageResourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotIds)) {
            query["SnapshotIds"] = request.snapshotIds ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateImage",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createImage(_ request: CreateImageRequest) async throws -> CreateImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createImageWithOptions(request as! CreateImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNASFileSystemWithOptions(_ request: CreateNASFileSystemRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNASFileSystemResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.encryptType)) {
            query["EncryptType"] = request.encryptType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.storageType)) {
            query["StorageType"] = request.storageType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNASFileSystem",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNASFileSystemResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNASFileSystem(_ request: CreateNASFileSystemRequest) async throws -> CreateNASFileSystemResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNASFileSystemWithOptions(request as! CreateNASFileSystemRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNetworkPackageWithOptions(_ request: CreateNetworkPackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateNetworkPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.autoRenew)) {
            query["AutoRenew"] = request.autoRenew!;
        }
        if (!TeaUtils.Client.isUnset(request.bandwidth)) {
            query["Bandwidth"] = request.bandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.internetChargeType)) {
            query["InternetChargeType"] = request.internetChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            query["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateNetworkPackage",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateNetworkPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createNetworkPackage(_ request: CreateNetworkPackageRequest) async throws -> CreateNetworkPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createNetworkPackageWithOptions(request as! CreateNetworkPackageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicyGroupWithOptions(_ request: CreatePolicyGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreatePolicyGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appContentProtection)) {
            query["AppContentProtection"] = request.appContentProtection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizeAccessPolicyRule)) {
            query["AuthorizeAccessPolicyRule"] = request.authorizeAccessPolicyRule ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.authorizeSecurityPolicyRule)) {
            query["AuthorizeSecurityPolicyRule"] = request.authorizeSecurityPolicyRule ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.cameraRedirect)) {
            query["CameraRedirect"] = request.cameraRedirect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            query["ClientType"] = request.clientType ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clipboard)) {
            query["Clipboard"] = request.clipboard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainList)) {
            query["DomainList"] = request.domainList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gpuAcceleration)) {
            query["GpuAcceleration"] = request.gpuAcceleration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.html5Access)) {
            query["Html5Access"] = request.html5Access ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.html5FileTransfer)) {
            query["Html5FileTransfer"] = request.html5FileTransfer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localDrive)) {
            query["LocalDrive"] = request.localDrive ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.netRedirect)) {
            query["NetRedirect"] = request.netRedirect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preemptLogin)) {
            query["PreemptLogin"] = request.preemptLogin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preemptLoginUser)) {
            query["PreemptLoginUser"] = request.preemptLoginUser ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.printerRedirection)) {
            query["PrinterRedirection"] = request.printerRedirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordContent)) {
            query["RecordContent"] = request.recordContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordContentExpires)) {
            query["RecordContentExpires"] = request.recordContentExpires!;
        }
        if (!TeaUtils.Client.isUnset(request.recording)) {
            query["Recording"] = request.recording ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordingEndTime)) {
            query["RecordingEndTime"] = request.recordingEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordingExpires)) {
            query["RecordingExpires"] = request.recordingExpires!;
        }
        if (!TeaUtils.Client.isUnset(request.recordingFps)) {
            query["RecordingFps"] = request.recordingFps!;
        }
        if (!TeaUtils.Client.isUnset(request.recordingStartTime)) {
            query["RecordingStartTime"] = request.recordingStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remoteCoordinate)) {
            query["RemoteCoordinate"] = request.remoteCoordinate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usbRedirect)) {
            query["UsbRedirect"] = request.usbRedirect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usbSupplyRedirectRule)) {
            query["UsbSupplyRedirectRule"] = request.usbSupplyRedirectRule ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.visualQuality)) {
            query["VisualQuality"] = request.visualQuality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermark)) {
            query["Watermark"] = request.watermark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkTransparency)) {
            query["WatermarkTransparency"] = request.watermarkTransparency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkType)) {
            query["WatermarkType"] = request.watermarkType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreatePolicyGroup",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreatePolicyGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createPolicyGroup(_ request: CreatePolicyGroupRequest) async throws -> CreatePolicyGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createPolicyGroupWithOptions(request as! CreatePolicyGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRAMDirectoryWithOptions(_ request: CreateRAMDirectoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateRAMDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopAccessType)) {
            query["DesktopAccessType"] = request.desktopAccessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryName)) {
            query["DirectoryName"] = request.directoryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAdminAccess)) {
            query["EnableAdminAccess"] = request.enableAdminAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.enableInternetAccess)) {
            query["EnableInternetAccess"] = request.enableInternetAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateRAMDirectory",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateRAMDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createRAMDirectory(_ request: CreateRAMDirectoryRequest) async throws -> CreateRAMDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createRAMDirectoryWithOptions(request as! CreateRAMDirectoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSimpleOfficeSiteWithOptions(_ request: CreateSimpleOfficeSiteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSimpleOfficeSiteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bandwidth)) {
            query["Bandwidth"] = request.bandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.cenId)) {
            query["CenId"] = request.cenId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cenOwnerId)) {
            query["CenOwnerId"] = request.cenOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.cidrBlock)) {
            query["CidrBlock"] = request.cidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cloudBoxOfficeSite)) {
            query["CloudBoxOfficeSite"] = request.cloudBoxOfficeSite!;
        }
        if (!TeaUtils.Client.isUnset(request.desktopAccessType)) {
            query["DesktopAccessType"] = request.desktopAccessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableAdminAccess)) {
            query["EnableAdminAccess"] = request.enableAdminAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.enableInternetAccess)) {
            query["EnableInternetAccess"] = request.enableInternetAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.needVerifyZeroDevice)) {
            query["NeedVerifyZeroDevice"] = request.needVerifyZeroDevice!;
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteName)) {
            query["OfficeSiteName"] = request.officeSiteName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vSwitchId)) {
            query["VSwitchId"] = request.vSwitchId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.verifyCode)) {
            query["VerifyCode"] = request.verifyCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSimpleOfficeSite",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSimpleOfficeSiteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSimpleOfficeSite(_ request: CreateSimpleOfficeSiteRequest) async throws -> CreateSimpleOfficeSiteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSimpleOfficeSiteWithOptions(request as! CreateSimpleOfficeSiteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSnapshotWithOptions(_ request: CreateSnapshotRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> CreateSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotName)) {
            query["SnapshotName"] = request.snapshotName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.sourceDiskType)) {
            query["SourceDiskType"] = request.sourceDiskType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "CreateSnapshot",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(CreateSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func createSnapshot(_ request: CreateSnapshotRequest) async throws -> CreateSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await createSnapshotWithOptions(request as! CreateSnapshotRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBundlesWithOptions(_ request: DeleteBundlesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteBundlesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bundleId)) {
            query["BundleId"] = request.bundleId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteBundles",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteBundlesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteBundles(_ request: DeleteBundlesRequest) async throws -> DeleteBundlesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteBundlesWithOptions(request as! DeleteBundlesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCloudDriveUsersWithOptions(_ request: DeleteCloudDriveUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteCloudDriveUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cdsId)) {
            query["CdsId"] = request.cdsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteCloudDriveUsers",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteCloudDriveUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteCloudDriveUsers(_ request: DeleteCloudDriveUsersRequest) async throws -> DeleteCloudDriveUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteCloudDriveUsersWithOptions(request as! DeleteCloudDriveUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDesktopGroupWithOptions(_ request: DeleteDesktopGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDesktopGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDesktopGroup",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDesktopGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDesktopGroup(_ request: DeleteDesktopGroupRequest) async throws -> DeleteDesktopGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDesktopGroupWithOptions(request as! DeleteDesktopGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDesktopsWithOptions(_ request: DeleteDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDesktops",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDesktops(_ request: DeleteDesktopsRequest) async throws -> DeleteDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDesktopsWithOptions(request as! DeleteDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDirectoriesWithOptions(_ request: DeleteDirectoriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDirectoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDirectories",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDirectoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDirectories(_ request: DeleteDirectoriesRequest) async throws -> DeleteDirectoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDirectoriesWithOptions(request as! DeleteDirectoriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDriveWithOptions(_ request: DeleteDriveRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteDriveResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.driveId)) {
            query["DriveId"] = request.driveId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteDrive",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteDriveResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteDrive(_ request: DeleteDriveRequest) async throws -> DeleteDriveResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteDriveWithOptions(request as! DeleteDriveRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImagesWithOptions(_ request: DeleteImagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteImagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteImages",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteImagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteImages(_ request: DeleteImagesRequest) async throws -> DeleteImagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteImagesWithOptions(request as! DeleteImagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNASFileSystemsWithOptions(_ request: DeleteNASFileSystemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNASFileSystemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileSystemId)) {
            query["FileSystemId"] = request.fileSystemId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNASFileSystems",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNASFileSystemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNASFileSystems(_ request: DeleteNASFileSystemsRequest) async throws -> DeleteNASFileSystemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNASFileSystemsWithOptions(request as! DeleteNASFileSystemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetworkPackagesWithOptions(_ request: DeleteNetworkPackagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteNetworkPackagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkPackageId)) {
            query["NetworkPackageId"] = request.networkPackageId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteNetworkPackages",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteNetworkPackagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteNetworkPackages(_ request: DeleteNetworkPackagesRequest) async throws -> DeleteNetworkPackagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteNetworkPackagesWithOptions(request as! DeleteNetworkPackagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOfficeSitesWithOptions(_ request: DeleteOfficeSitesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteOfficeSitesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteOfficeSites",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteOfficeSitesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteOfficeSites(_ request: DeleteOfficeSitesRequest) async throws -> DeleteOfficeSitesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteOfficeSitesWithOptions(request as! DeleteOfficeSitesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyGroupsWithOptions(_ request: DeletePolicyGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeletePolicyGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeletePolicyGroups",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeletePolicyGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deletePolicyGroups(_ request: DeletePolicyGroupsRequest) async throws -> DeletePolicyGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deletePolicyGroupsWithOptions(request as! DeletePolicyGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnapshotWithOptions(_ request: DeleteSnapshotRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteSnapshot",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteSnapshot(_ request: DeleteSnapshotRequest) async throws -> DeleteSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteSnapshotWithOptions(request as! DeleteSnapshotRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVirtualMFADeviceWithOptions(_ request: DeleteVirtualMFADeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DeleteVirtualMFADeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            query["SerialNumber"] = request.serialNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DeleteVirtualMFADevice",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DeleteVirtualMFADeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func deleteVirtualMFADevice(_ request: DeleteVirtualMFADeviceRequest) async throws -> DeleteVirtualMFADeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await deleteVirtualMFADeviceWithOptions(request as! DeleteVirtualMFADeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAlarmEventStackInfoWithOptions(_ request: DescribeAlarmEventStackInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeAlarmEventStackInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventName)) {
            query["EventName"] = request.eventName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uniqueInfo)) {
            query["UniqueInfo"] = request.uniqueInfo ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeAlarmEventStackInfo",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeAlarmEventStackInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeAlarmEventStackInfo(_ request: DescribeAlarmEventStackInfoRequest) async throws -> DescribeAlarmEventStackInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeAlarmEventStackInfoWithOptions(request as! DescribeAlarmEventStackInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBundlesWithOptions(_ request: DescribeBundlesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeBundlesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bundleId)) {
            query["BundleId"] = request.bundleId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.bundleType)) {
            query["BundleType"] = request.bundleType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.checkStock)) {
            query["CheckStock"] = request.checkStock!;
        }
        if (!TeaUtils.Client.isUnset(request.cpuCount)) {
            query["CpuCount"] = request.cpuCount!;
        }
        if (!TeaUtils.Client.isUnset(request.desktopTypeFamily)) {
            query["DesktopTypeFamily"] = request.desktopTypeFamily ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fotaChannel)) {
            query["FotaChannel"] = request.fotaChannel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.fromDesktopGroup)) {
            query["FromDesktopGroup"] = request.fromDesktopGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.gpuCount)) {
            query["GpuCount"] = request.gpuCount!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.memorySize)) {
            query["MemorySize"] = request.memorySize!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocolType)) {
            query["ProtocolType"] = request.protocolType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.supportMultiSession)) {
            query["SupportMultiSession"] = request.supportMultiSession!;
        }
        if (!TeaUtils.Client.isUnset(request.volumeEncryptionEnabled)) {
            query["VolumeEncryptionEnabled"] = request.volumeEncryptionEnabled!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeBundles",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeBundlesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeBundles(_ request: DescribeBundlesRequest) async throws -> DescribeBundlesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeBundlesWithOptions(request as! DescribeBundlesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCensWithOptions(_ request: DescribeCensRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCensResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCens",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCensResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCens(_ request: DescribeCensRequest) async throws -> DescribeCensResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCensWithOptions(request as! DescribeCensRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClientEventsWithOptions(_ request: DescribeClientEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeClientEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopIp)) {
            query["DesktopIp"] = request.desktopIp ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopName)) {
            query["DesktopName"] = request.desktopName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventType)) {
            query["EventType"] = request.eventType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventTypes)) {
            query["EventTypes"] = request.eventTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteName)) {
            query["OfficeSiteName"] = request.officeSiteName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeClientEvents",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeClientEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeClientEvents(_ request: DescribeClientEventsRequest) async throws -> DescribeClientEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeClientEventsWithOptions(request as! DescribeClientEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudDrivePermissionsWithOptions(_ request: DescribeCloudDrivePermissionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCloudDrivePermissionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cdsId)) {
            query["CdsId"] = request.cdsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCloudDrivePermissions",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCloudDrivePermissionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCloudDrivePermissions(_ request: DescribeCloudDrivePermissionsRequest) async throws -> DescribeCloudDrivePermissionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCloudDrivePermissionsWithOptions(request as! DescribeCloudDrivePermissionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCustomizedListHeadersWithOptions(_ request: DescribeCustomizedListHeadersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeCustomizedListHeadersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.langType)) {
            query["LangType"] = request.langType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.listType)) {
            query["ListType"] = request.listType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeCustomizedListHeaders",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeCustomizedListHeadersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeCustomizedListHeaders(_ request: DescribeCustomizedListHeadersRequest) async throws -> DescribeCustomizedListHeadersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeCustomizedListHeadersWithOptions(request as! DescribeCustomizedListHeadersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDesktopGroupsWithOptions(_ request: DescribeDesktopGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDesktopGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopGroupName)) {
            query["DesktopGroupName"] = request.desktopGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserIds)) {
            query["EndUserIds"] = request.endUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.excludedEndUserIds)) {
            query["ExcludedEndUserIds"] = request.excludedEndUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownType)) {
            query["OwnType"] = request.ownType!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDesktopGroups",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDesktopGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDesktopGroups(_ request: DescribeDesktopGroupsRequest) async throws -> DescribeDesktopGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDesktopGroupsWithOptions(request as! DescribeDesktopGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDesktopIdsByVulNamesWithOptions(_ request: DescribeDesktopIdsByVulNamesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDesktopIdsByVulNamesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.necessity)) {
            query["Necessity"] = request.necessity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vulName)) {
            query["VulName"] = request.vulName ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDesktopIdsByVulNames",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDesktopIdsByVulNamesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDesktopIdsByVulNames(_ request: DescribeDesktopIdsByVulNamesRequest) async throws -> DescribeDesktopIdsByVulNamesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDesktopIdsByVulNamesWithOptions(request as! DescribeDesktopIdsByVulNamesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDesktopTypesWithOptions(_ request: DescribeDesktopTypesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDesktopTypesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appliedScope)) {
            query["AppliedScope"] = request.appliedScope ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cpuCount)) {
            query["CpuCount"] = request.cpuCount!;
        }
        if (!TeaUtils.Client.isUnset(request.desktopIdForModify)) {
            query["DesktopIdForModify"] = request.desktopIdForModify ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopTypeId)) {
            query["DesktopTypeId"] = request.desktopTypeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gpuCount)) {
            query["GpuCount"] = request.gpuCount!;
        }
        if (!TeaUtils.Client.isUnset(request.instanceTypeFamily)) {
            query["InstanceTypeFamily"] = request.instanceTypeFamily ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.memorySize)) {
            query["MemorySize"] = request.memorySize!;
        }
        if (!TeaUtils.Client.isUnset(request.orderType)) {
            query["OrderType"] = request.orderType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDesktopTypes",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDesktopTypesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDesktopTypes(_ request: DescribeDesktopTypesRequest) async throws -> DescribeDesktopTypesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDesktopTypesWithOptions(request as! DescribeDesktopTypesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDesktopsWithOptions(_ request: DescribeDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.desktopName)) {
            query["DesktopName"] = request.desktopName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopStatus)) {
            query["DesktopStatus"] = request.desktopStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.excludedEndUserId)) {
            query["ExcludedEndUserId"] = request.excludedEndUserId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.expiredTime)) {
            query["ExpiredTime"] = request.expiredTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filterDesktopGroup)) {
            query["FilterDesktopGroup"] = request.filterDesktopGroup!;
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.managementFlag)) {
            query["ManagementFlag"] = request.managementFlag ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteName)) {
            query["OfficeSiteName"] = request.officeSiteName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocolType)) {
            query["ProtocolType"] = request.protocolType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryFotaUpdate)) {
            query["QueryFotaUpdate"] = request.queryFotaUpdate!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDesktops",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDesktops(_ request: DescribeDesktopsRequest) async throws -> DescribeDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDesktopsWithOptions(request as! DescribeDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDesktopsInGroupWithOptions(_ request: DescribeDesktopsInGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDesktopsInGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ignoreDeleted)) {
            query["IgnoreDeleted"] = request.ignoreDeleted!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDesktopsInGroup",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDesktopsInGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDesktopsInGroup(_ request: DescribeDesktopsInGroupRequest) async throws -> DescribeDesktopsInGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDesktopsInGroupWithOptions(request as! DescribeDesktopsInGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDirectoriesWithOptions(_ request: DescribeDirectoriesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDirectoriesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.directoryStatus)) {
            query["DirectoryStatus"] = request.directoryStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryType)) {
            query["DirectoryType"] = request.directoryType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDirectories",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDirectoriesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDirectories(_ request: DescribeDirectoriesRequest) async throws -> DescribeDirectoriesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDirectoriesWithOptions(request as! DescribeDirectoriesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrivesWithOptions(_ request: DescribeDrivesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeDrivesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.domainIds)) {
            query["DomainIds"] = request.domainIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userId)) {
            query["UserId"] = request.userId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeDrives",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeDrivesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeDrives(_ request: DescribeDrivesRequest) async throws -> DescribeDrivesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeDrivesWithOptions(request as! DescribeDrivesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowMetricWithOptions(_ request: DescribeFlowMetricRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFlowMetricResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceId)) {
            query["InstanceId"] = request.instanceId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.instanceType)) {
            query["InstanceType"] = request.instanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.metricType)) {
            query["MetricType"] = request.metricType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFlowMetric",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFlowMetricResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowMetric(_ request: DescribeFlowMetricRequest) async throws -> DescribeFlowMetricResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFlowMetricWithOptions(request as! DescribeFlowMetricRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowStatisticWithOptions(_ request: DescribeFlowStatisticRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFlowStatisticResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageNumber)) {
            query["PageNumber"] = request.pageNumber!;
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFlowStatistic",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFlowStatisticResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFlowStatistic(_ request: DescribeFlowStatisticRequest) async throws -> DescribeFlowStatisticResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFlowStatisticWithOptions(request as! DescribeFlowStatisticRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFotaPendingDesktopsWithOptions(_ request: DescribeFotaPendingDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFotaPendingDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: String] = AlibabaCloudOpenApiUtil.Client.query(TeaUtils.Client.toMap(request))
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFotaPendingDesktops",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "GET",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFotaPendingDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFotaPendingDesktops(_ request: DescribeFotaPendingDesktopsRequest) async throws -> DescribeFotaPendingDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFotaPendingDesktopsWithOptions(request as! DescribeFotaPendingDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFotaTasksWithOptions(_ request: DescribeFotaTasksRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFotaTasksResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fotaStatus)) {
            query["FotaStatus"] = request.fotaStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskUid)) {
            query["TaskUid"] = request.taskUid ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userStatus)) {
            query["UserStatus"] = request.userStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFotaTasks",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFotaTasksResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFotaTasks(_ request: DescribeFotaTasksRequest) async throws -> DescribeFotaTasksResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFotaTasksWithOptions(request as! DescribeFotaTasksRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFrontVulPatchListWithOptions(_ request: DescribeFrontVulPatchListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeFrontVulPatchListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vulInfo)) {
            query["VulInfo"] = request.vulInfo ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeFrontVulPatchList",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeFrontVulPatchListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeFrontVulPatchList(_ request: DescribeFrontVulPatchListRequest) async throws -> DescribeFrontVulPatchListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeFrontVulPatchListWithOptions(request as! DescribeFrontVulPatchListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGroupedVulWithOptions(_ request: DescribeGroupedVulRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeGroupedVulResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.dealed)) {
            query["Dealed"] = request.dealed ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.necessity)) {
            query["Necessity"] = request.necessity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeGroupedVul",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeGroupedVulResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeGroupedVul(_ request: DescribeGroupedVulRequest) async throws -> DescribeGroupedVulResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeGroupedVulWithOptions(request as! DescribeGroupedVulRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImageModifiedRecordsWithOptions(_ request: DescribeImageModifiedRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeImageModifiedRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeImageModifiedRecords",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeImageModifiedRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImageModifiedRecords(_ request: DescribeImageModifiedRecordsRequest) async throws -> DescribeImageModifiedRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeImageModifiedRecordsWithOptions(request as! DescribeImageModifiedRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImagePermissionWithOptions(_ request: DescribeImagePermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeImagePermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeImagePermission",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeImagePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImagePermission(_ request: DescribeImagePermissionRequest) async throws -> DescribeImagePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeImagePermissionWithOptions(request as! DescribeImagePermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImagesWithOptions(_ request: DescribeImagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeImagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopInstanceType)) {
            query["DesktopInstanceType"] = request.desktopInstanceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gpuCategory)) {
            query["GpuCategory"] = request.gpuCategory!;
        }
        if (!TeaUtils.Client.isUnset(request.gpuDriverVersion)) {
            query["GpuDriverVersion"] = request.gpuDriverVersion ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.imageStatus)) {
            query["ImageStatus"] = request.imageStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageType)) {
            query["ImageType"] = request.imageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.languageType)) {
            query["LanguageType"] = request.languageType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osType)) {
            query["OsType"] = request.osType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocolType)) {
            query["ProtocolType"] = request.protocolType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeImages",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeImagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeImages(_ request: DescribeImagesRequest) async throws -> DescribeImagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeImagesWithOptions(request as! DescribeImagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInvocationsWithOptions(_ request: DescribeInvocationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeInvocationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commandType)) {
            query["CommandType"] = request.commandType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentEncoding)) {
            query["ContentEncoding"] = request.contentEncoding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.includeOutput)) {
            query["IncludeOutput"] = request.includeOutput!;
        }
        if (!TeaUtils.Client.isUnset(request.invokeId)) {
            query["InvokeId"] = request.invokeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.invokeStatus)) {
            query["InvokeStatus"] = request.invokeStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeInvocations",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeInvocationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeInvocations(_ request: DescribeInvocationsRequest) async throws -> DescribeInvocationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeInvocationsWithOptions(request as! DescribeInvocationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeKmsKeysWithOptions(_ request: DescribeKmsKeysRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeKmsKeysResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeKmsKeys",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeKmsKeysResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeKmsKeys(_ request: DescribeKmsKeysRequest) async throws -> DescribeKmsKeysResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeKmsKeysWithOptions(request as! DescribeKmsKeysRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNASFileSystemsWithOptions(_ request: DescribeNASFileSystemsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNASFileSystemsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileSystemId)) {
            query["FileSystemId"] = request.fileSystemId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNASFileSystems",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNASFileSystemsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNASFileSystems(_ request: DescribeNASFileSystemsRequest) async throws -> DescribeNASFileSystemsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNASFileSystemsWithOptions(request as! DescribeNASFileSystemsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworkPackagesWithOptions(_ request: DescribeNetworkPackagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeNetworkPackagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.internetChargeType)) {
            query["InternetChargeType"] = request.internetChargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.networkPackageId)) {
            query["NetworkPackageId"] = request.networkPackageId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeNetworkPackages",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeNetworkPackagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeNetworkPackages(_ request: DescribeNetworkPackagesRequest) async throws -> DescribeNetworkPackagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeNetworkPackagesWithOptions(request as! DescribeNetworkPackagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOfficeSitesWithOptions(_ request: DescribeOfficeSitesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeOfficeSitesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteType)) {
            query["OfficeSiteType"] = request.officeSiteType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeOfficeSites",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeOfficeSitesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeOfficeSites(_ request: DescribeOfficeSitesRequest) async throws -> DescribeOfficeSitesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeOfficeSitesWithOptions(request as! DescribeOfficeSitesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolicyGroupsWithOptions(_ request: DescribePolicyGroupsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribePolicyGroupsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribePolicyGroups",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribePolicyGroupsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describePolicyGroups(_ request: DescribePolicyGroupsRequest) async throws -> DescribePolicyGroupsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describePolicyGroupsWithOptions(request as! DescribePolicyGroupsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegionsWithOptions(_ request: DescribeRegionsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeRegionsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.acceptLanguage)) {
            query["AcceptLanguage"] = request.acceptLanguage ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeRegions",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeRegionsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeRegions(_ request: DescribeRegionsRequest) async throws -> DescribeRegionsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeRegionsWithOptions(request as! DescribeRegionsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScanTaskProgressWithOptions(_ request: DescribeScanTaskProgressRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeScanTaskProgressResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeScanTaskProgress",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeScanTaskProgressResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeScanTaskProgress(_ request: DescribeScanTaskProgressRequest) async throws -> DescribeScanTaskProgressResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeScanTaskProgressWithOptions(request as! DescribeScanTaskProgressRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventOperationStatusWithOptions(_ request: DescribeSecurityEventOperationStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityEventOperationStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityEventId)) {
            query["SecurityEventId"] = request.securityEventId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityEventOperationStatus",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityEventOperationStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventOperationStatus(_ request: DescribeSecurityEventOperationStatusRequest) async throws -> DescribeSecurityEventOperationStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityEventOperationStatusWithOptions(request as! DescribeSecurityEventOperationStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventOperationsWithOptions(_ request: DescribeSecurityEventOperationsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSecurityEventOperationsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityEventId)) {
            query["SecurityEventId"] = request.securityEventId!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSecurityEventOperations",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSecurityEventOperationsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSecurityEventOperations(_ request: DescribeSecurityEventOperationsRequest) async throws -> DescribeSecurityEventOperationsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSecurityEventOperationsWithOptions(request as! DescribeSecurityEventOperationsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSnapshotsWithOptions(_ request: DescribeSnapshotsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSnapshotsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSnapshots",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSnapshotsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSnapshots(_ request: DescribeSnapshotsRequest) async throws -> DescribeSnapshotsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSnapshotsWithOptions(request as! DescribeSnapshotsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSuspEventOverviewWithOptions(_ request: DescribeSuspEventOverviewRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSuspEventOverviewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSuspEventOverview",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSuspEventOverviewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSuspEventOverview(_ request: DescribeSuspEventOverviewRequest) async throws -> DescribeSuspEventOverviewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSuspEventOverviewWithOptions(request as! DescribeSuspEventOverviewRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSuspEventQuaraFilesWithOptions(_ request: DescribeSuspEventQuaraFilesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSuspEventQuaraFilesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSuspEventQuaraFiles",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSuspEventQuaraFilesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSuspEventQuaraFiles(_ request: DescribeSuspEventQuaraFilesRequest) async throws -> DescribeSuspEventQuaraFilesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSuspEventQuaraFilesWithOptions(request as! DescribeSuspEventQuaraFilesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSuspEventsWithOptions(_ request: DescribeSuspEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeSuspEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.alarmUniqueInfo)) {
            query["AlarmUniqueInfo"] = request.alarmUniqueInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.dealed)) {
            query["Dealed"] = request.dealed ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.levels)) {
            query["Levels"] = request.levels ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.parentEventType)) {
            query["ParentEventType"] = request.parentEventType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeSuspEvents",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeSuspEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeSuspEvents(_ request: DescribeSuspEventsRequest) async throws -> DescribeSuspEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeSuspEventsWithOptions(request as! DescribeSuspEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserConnectionRecordsWithOptions(_ request: DescribeUserConnectionRecordsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUserConnectionRecordsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectDurationFrom)) {
            query["ConnectDurationFrom"] = request.connectDurationFrom!;
        }
        if (!TeaUtils.Client.isUnset(request.connectDurationTo)) {
            query["ConnectDurationTo"] = request.connectDurationTo!;
        }
        if (!TeaUtils.Client.isUnset(request.connectEndTimeFrom)) {
            query["ConnectEndTimeFrom"] = request.connectEndTimeFrom!;
        }
        if (!TeaUtils.Client.isUnset(request.connectEndTimeTo)) {
            query["ConnectEndTimeTo"] = request.connectEndTimeTo!;
        }
        if (!TeaUtils.Client.isUnset(request.connectStartTimeFrom)) {
            query["ConnectStartTimeFrom"] = request.connectStartTimeFrom!;
        }
        if (!TeaUtils.Client.isUnset(request.connectStartTimeTo)) {
            query["ConnectStartTimeTo"] = request.connectStartTimeTo!;
        }
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserType)) {
            query["EndUserType"] = request.endUserType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUserConnectionRecords",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUserConnectionRecordsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUserConnectionRecords(_ request: DescribeUserConnectionRecordsRequest) async throws -> DescribeUserConnectionRecordsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUserConnectionRecordsWithOptions(request as! DescribeUserConnectionRecordsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsersInGroupWithOptions(_ request: DescribeUsersInGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUsersInGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.connectState)) {
            query["ConnectState"] = request.connectState!;
        }
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.orgId)) {
            query["OrgId"] = request.orgId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.queryUserDetail)) {
            query["QueryUserDetail"] = request.queryUserDetail!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUsersInGroup",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUsersInGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsersInGroup(_ request: DescribeUsersInGroupRequest) async throws -> DescribeUsersInGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUsersInGroupWithOptions(request as! DescribeUsersInGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsersPasswordWithOptions(_ request: DescribeUsersPasswordRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeUsersPasswordResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeUsersPassword",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeUsersPasswordResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeUsersPassword(_ request: DescribeUsersPasswordRequest) async throws -> DescribeUsersPasswordResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeUsersPasswordWithOptions(request as! DescribeUsersPasswordRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVirtualMFADevicesWithOptions(_ request: DescribeVirtualMFADevicesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVirtualMFADevicesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVirtualMFADevices",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVirtualMFADevicesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVirtualMFADevices(_ request: DescribeVirtualMFADevicesRequest) async throws -> DescribeVirtualMFADevicesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVirtualMFADevicesWithOptions(request as! DescribeVirtualMFADevicesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVulDetailsWithOptions(_ request: DescribeVulDetailsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVulDetailsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliasName)) {
            query["AliasName"] = request.aliasName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVulDetails",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVulDetailsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVulDetails(_ request: DescribeVulDetailsRequest) async throws -> DescribeVulDetailsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVulDetailsWithOptions(request as! DescribeVulDetailsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVulListWithOptions(_ request: DescribeVulListRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVulListResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.aliasName)) {
            query["AliasName"] = request.aliasName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.currentPage)) {
            query["CurrentPage"] = request.currentPage!;
        }
        if (!TeaUtils.Client.isUnset(request.dealed)) {
            query["Dealed"] = request.dealed ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.lang)) {
            query["Lang"] = request.lang ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.necessity)) {
            query["Necessity"] = request.necessity ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.pageSize)) {
            query["PageSize"] = request.pageSize!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVulList",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVulListResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVulList(_ request: DescribeVulListRequest) async throws -> DescribeVulListResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVulListWithOptions(request as! DescribeVulListRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVulOverviewWithOptions(_ request: DescribeVulOverviewRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeVulOverviewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeVulOverview",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeVulOverviewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeVulOverview(_ request: DescribeVulOverviewRequest) async throws -> DescribeVulOverviewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeVulOverviewWithOptions(request as! DescribeVulOverviewRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeZonesWithOptions(_ request: DescribeZonesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DescribeZonesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.zoneType)) {
            query["ZoneType"] = request.zoneType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DescribeZones",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DescribeZonesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func describeZones(_ request: DescribeZonesRequest) async throws -> DescribeZonesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await describeZonesWithOptions(request as! DescribeZonesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachCenWithOptions(_ request: DetachCenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DetachCenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DetachCen",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DetachCenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func detachCen(_ request: DetachCenRequest) async throws -> DetachCenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await detachCenWithOptions(request as! DetachCenRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableDesktopsInGroupWithOptions(_ request: DisableDesktopsInGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DisableDesktopsInGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopIds)) {
            query["DesktopIds"] = request.desktopIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DisableDesktopsInGroup",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DisableDesktopsInGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func disableDesktopsInGroup(_ request: DisableDesktopsInGroupRequest) async throws -> DisableDesktopsInGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await disableDesktopsInGroupWithOptions(request as! DisableDesktopsInGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dissociateNetworkPackageWithOptions(_ request: DissociateNetworkPackageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> DissociateNetworkPackageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.networkPackageId)) {
            query["NetworkPackageId"] = request.networkPackageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "DissociateNetworkPackage",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(DissociateNetworkPackageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func dissociateNetworkPackage(_ request: DissociateNetworkPackageRequest) async throws -> DissociateNetworkPackageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await dissociateNetworkPackageWithOptions(request as! DissociateNetworkPackageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportClientEventsWithOptions(_ request: ExportClientEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportClientEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopName)) {
            query["DesktopName"] = request.desktopName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endTime)) {
            query["EndTime"] = request.endTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventType)) {
            query["EventType"] = request.eventType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.eventTypes)) {
            query["EventTypes"] = request.eventTypes ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteName)) {
            query["OfficeSiteName"] = request.officeSiteName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.startTime)) {
            query["StartTime"] = request.startTime ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportClientEvents",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportClientEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportClientEvents(_ request: ExportClientEventsRequest) async throws -> ExportClientEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await exportClientEventsWithOptions(request as! ExportClientEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportDesktopGroupInfoWithOptions(_ request: ExportDesktopGroupInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportDesktopGroupInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.desktopGroupName)) {
            query["DesktopGroupName"] = request.desktopGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.expiredTime)) {
            query["ExpiredTime"] = request.expiredTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.langType)) {
            query["LangType"] = request.langType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportDesktopGroupInfo",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportDesktopGroupInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportDesktopGroupInfo(_ request: ExportDesktopGroupInfoRequest) async throws -> ExportDesktopGroupInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await exportDesktopGroupInfoWithOptions(request as! ExportDesktopGroupInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportDesktopListInfoWithOptions(_ request: ExportDesktopListInfoRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ExportDesktopListInfoResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.desktopName)) {
            query["DesktopName"] = request.desktopName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopStatus)) {
            query["DesktopStatus"] = request.desktopStatus ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.expiredTime)) {
            query["ExpiredTime"] = request.expiredTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.groupId)) {
            query["GroupId"] = request.groupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.langType)) {
            query["LangType"] = request.langType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.userName)) {
            query["UserName"] = request.userName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ExportDesktopListInfo",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ExportDesktopListInfoResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func exportDesktopListInfo(_ request: ExportDesktopListInfoRequest) async throws -> ExportDesktopListInfoResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await exportDesktopListInfoWithOptions(request as! ExportDesktopListInfoRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConnectionTicketWithOptions(_ request: GetConnectionTicketRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetConnectionTicketResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ownerId)) {
            query["OwnerId"] = request.ownerId!;
        }
        if (!TeaUtils.Client.isUnset(request.password)) {
            query["Password"] = request.password ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerAccount)) {
            query["ResourceOwnerAccount"] = request.resourceOwnerAccount ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceOwnerId)) {
            query["ResourceOwnerId"] = request.resourceOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.taskId)) {
            query["TaskId"] = request.taskId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetConnectionTicket",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetConnectionTicketResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getConnectionTicket(_ request: GetConnectionTicketRequest) async throws -> GetConnectionTicketResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getConnectionTicketWithOptions(request as! GetConnectionTicketRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDesktopGroupDetailWithOptions(_ request: GetDesktopGroupDetailRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetDesktopGroupDetailResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetDesktopGroupDetail",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetDesktopGroupDetailResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getDesktopGroupDetail(_ request: GetDesktopGroupDetailRequest) async throws -> GetDesktopGroupDetailResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getDesktopGroupDetailWithOptions(request as! GetDesktopGroupDetailRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOfficeSiteSsoStatusWithOptions(_ request: GetOfficeSiteSsoStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetOfficeSiteSsoStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetOfficeSiteSsoStatus",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetOfficeSiteSsoStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getOfficeSiteSsoStatus(_ request: GetOfficeSiteSsoStatusRequest) async throws -> GetOfficeSiteSsoStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getOfficeSiteSsoStatusWithOptions(request as! GetOfficeSiteSsoStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSpMetadataWithOptions(_ request: GetSpMetadataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> GetSpMetadataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "GetSpMetadata",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(GetSpMetadataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func getSpMetadata(_ request: GetSpMetadataRequest) async throws -> GetSpMetadataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await getSpMetadataWithOptions(request as! GetSpMetadataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func handleSecurityEventsWithOptions(_ request: HandleSecurityEventsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> HandleSecurityEventsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operationCode)) {
            query["OperationCode"] = request.operationCode ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.operationParams)) {
            query["OperationParams"] = request.operationParams ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.securityEvent)) {
            query["SecurityEvent"] = request.securityEvent ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "HandleSecurityEvents",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(HandleSecurityEventsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func handleSecurityEvents(_ request: HandleSecurityEventsRequest) async throws -> HandleSecurityEventsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await handleSecurityEventsWithOptions(request as! HandleSecurityEventsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDirectoryUsersWithOptions(_ request: ListDirectoryUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListDirectoryUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OUPath)) {
            query["OUPath"] = request.OUPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListDirectoryUsers",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListDirectoryUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listDirectoryUsers(_ request: ListDirectoryUsersRequest) async throws -> ListDirectoryUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listDirectoryUsersWithOptions(request as! ListDirectoryUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOfficeSiteOverviewWithOptions(_ request: ListOfficeSiteOverviewRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOfficeSiteOverviewResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.forceRefresh)) {
            query["ForceRefresh"] = request.forceRefresh!;
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.queryRange)) {
            query["QueryRange"] = request.queryRange!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOfficeSiteOverview",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOfficeSiteOverviewResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOfficeSiteOverview(_ request: ListOfficeSiteOverviewRequest) async throws -> ListOfficeSiteOverviewResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOfficeSiteOverviewWithOptions(request as! ListOfficeSiteOverviewRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOfficeSiteUsersWithOptions(_ request: ListOfficeSiteUsersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListOfficeSiteUsersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.filter)) {
            query["Filter"] = request.filter ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.OUPath)) {
            query["OUPath"] = request.OUPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListOfficeSiteUsers",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListOfficeSiteUsersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listOfficeSiteUsers(_ request: ListOfficeSiteUsersRequest) async throws -> ListOfficeSiteUsersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listOfficeSiteUsersWithOptions(request as! ListOfficeSiteUsersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResourcesWithOptions(_ request: ListTagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListTagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.maxResults)) {
            query["MaxResults"] = request.maxResults!;
        }
        if (!TeaUtils.Client.isUnset(request.nextToken)) {
            query["NextToken"] = request.nextToken ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListTagResources",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListTagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listTagResources(_ request: ListTagResourcesRequest) async throws -> ListTagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listTagResourcesWithOptions(request as! ListTagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserAdOrganizationUnitsWithOptions(_ request: ListUserAdOrganizationUnitsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ListUserAdOrganizationUnitsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ListUserAdOrganizationUnits",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ListUserAdOrganizationUnitsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func listUserAdOrganizationUnits(_ request: ListUserAdOrganizationUnitsRequest) async throws -> ListUserAdOrganizationUnitsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await listUserAdOrganizationUnitsWithOptions(request as! ListUserAdOrganizationUnitsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lockVirtualMFADeviceWithOptions(_ request: LockVirtualMFADeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> LockVirtualMFADeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            query["SerialNumber"] = request.serialNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "LockVirtualMFADevice",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(LockVirtualMFADeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func lockVirtualMFADevice(_ request: LockVirtualMFADeviceRequest) async throws -> LockVirtualMFADeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await lockVirtualMFADeviceWithOptions(request as! LockVirtualMFADeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyADConnectorDirectoryWithOptions(_ request: ModifyADConnectorDirectoryRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyADConnectorDirectoryResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adHostname)) {
            query["AdHostname"] = request.adHostname ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.directoryName)) {
            query["DirectoryName"] = request.directoryName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dnsAddress)) {
            query["DnsAddress"] = request.dnsAddress ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainPassword)) {
            query["DomainPassword"] = request.domainPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainUserName)) {
            query["DomainUserName"] = request.domainUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mfaEnabled)) {
            query["MfaEnabled"] = request.mfaEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.OUName)) {
            query["OUName"] = request.OUName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDomainDnsAddress)) {
            query["SubDomainDnsAddress"] = request.subDomainDnsAddress ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.subDomainName)) {
            query["SubDomainName"] = request.subDomainName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyADConnectorDirectory",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyADConnectorDirectoryResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyADConnectorDirectory(_ request: ModifyADConnectorDirectoryRequest) async throws -> ModifyADConnectorDirectoryResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyADConnectorDirectoryWithOptions(request as! ModifyADConnectorDirectoryRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyADConnectorOfficeSiteWithOptions(_ request: ModifyADConnectorOfficeSiteRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyADConnectorOfficeSiteResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.adHostname)) {
            query["AdHostname"] = request.adHostname ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.dnsAddress)) {
            query["DnsAddress"] = request.dnsAddress ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.domainName)) {
            query["DomainName"] = request.domainName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainPassword)) {
            query["DomainPassword"] = request.domainPassword ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainUserName)) {
            query["DomainUserName"] = request.domainUserName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mfaEnabled)) {
            query["MfaEnabled"] = request.mfaEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.OUName)) {
            query["OUName"] = request.OUName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteName)) {
            query["OfficeSiteName"] = request.officeSiteName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.subDomainDnsAddress)) {
            query["SubDomainDnsAddress"] = request.subDomainDnsAddress ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.subDomainName)) {
            query["SubDomainName"] = request.subDomainName ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyADConnectorOfficeSite",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyADConnectorOfficeSiteResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyADConnectorOfficeSite(_ request: ModifyADConnectorOfficeSiteRequest) async throws -> ModifyADConnectorOfficeSiteResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyADConnectorOfficeSiteWithOptions(request as! ModifyADConnectorOfficeSiteRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBundleWithOptions(_ request: ModifyBundleRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyBundleResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.bundleId)) {
            query["BundleId"] = request.bundleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.bundleName)) {
            query["BundleName"] = request.bundleName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.language)) {
            query["Language"] = request.language ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyBundle",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyBundleResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyBundle(_ request: ModifyBundleRequest) async throws -> ModifyBundleResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyBundleWithOptions(request as! ModifyBundleRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCloudDrivePermissionWithOptions(_ request: ModifyCloudDrivePermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCloudDrivePermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cdsId)) {
            query["CdsId"] = request.cdsId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.downloadEndUserIds)) {
            query["DownloadEndUserIds"] = request.downloadEndUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.downloadUploadEndUserIds)) {
            query["DownloadUploadEndUserIds"] = request.downloadUploadEndUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCloudDrivePermission",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCloudDrivePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCloudDrivePermission(_ request: ModifyCloudDrivePermissionRequest) async throws -> ModifyCloudDrivePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCloudDrivePermissionWithOptions(request as! ModifyCloudDrivePermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCustomizedListHeadersWithOptions(_ request: ModifyCustomizedListHeadersRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyCustomizedListHeadersResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.headers)) {
            query["Headers"] = request.headers ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.listType)) {
            query["ListType"] = request.listType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyCustomizedListHeaders",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyCustomizedListHeadersResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyCustomizedListHeaders(_ request: ModifyCustomizedListHeadersRequest) async throws -> ModifyCustomizedListHeadersResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyCustomizedListHeadersWithOptions(request as! ModifyCustomizedListHeadersRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesktopChargeTypeWithOptions(_ request: ModifyDesktopChargeTypeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDesktopChargeTypeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.chargeType)) {
            query["ChargeType"] = request.chargeType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            query["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDesktopChargeType",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDesktopChargeTypeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesktopChargeType(_ request: ModifyDesktopChargeTypeRequest) async throws -> ModifyDesktopChargeTypeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDesktopChargeTypeWithOptions(request as! ModifyDesktopChargeTypeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesktopGroupWithOptions(_ request: ModifyDesktopGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDesktopGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.allowAutoSetup)) {
            query["AllowAutoSetup"] = request.allowAutoSetup!;
        }
        if (!TeaUtils.Client.isUnset(request.allowBufferCount)) {
            query["AllowBufferCount"] = request.allowBufferCount!;
        }
        if (!TeaUtils.Client.isUnset(request.bindAmount)) {
            query["BindAmount"] = request.bindAmount!;
        }
        if (!TeaUtils.Client.isUnset(request.classify)) {
            query["Classify"] = request.classify ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.comments)) {
            query["Comments"] = request.comments ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.connectDuration)) {
            query["ConnectDuration"] = request.connectDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopGroupName)) {
            query["DesktopGroupName"] = request.desktopGroupName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.disableSessionConfig)) {
            query["DisableSessionConfig"] = request.disableSessionConfig!;
        }
        if (!TeaUtils.Client.isUnset(request.fileSystemId)) {
            query["FileSystemId"] = request.fileSystemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idleDisconnectDuration)) {
            query["IdleDisconnectDuration"] = request.idleDisconnectDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.keepDuration)) {
            query["KeepDuration"] = request.keepDuration!;
        }
        if (!TeaUtils.Client.isUnset(request.loadPolicy)) {
            query["LoadPolicy"] = request.loadPolicy!;
        }
        if (!TeaUtils.Client.isUnset(request.maxDesktopsCount)) {
            query["MaxDesktopsCount"] = request.maxDesktopsCount!;
        }
        if (!TeaUtils.Client.isUnset(request.minDesktopsCount)) {
            query["MinDesktopsCount"] = request.minDesktopsCount!;
        }
        if (!TeaUtils.Client.isUnset(request.ownBundleId)) {
            query["OwnBundleId"] = request.ownBundleId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.profileFollowSwitch)) {
            query["ProfileFollowSwitch"] = request.profileFollowSwitch!;
        }
        if (!TeaUtils.Client.isUnset(request.ratioThreshold)) {
            query["RatioThreshold"] = request.ratioThreshold!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resetType)) {
            query["ResetType"] = request.resetType!;
        }
        if (!TeaUtils.Client.isUnset(request.scaleStrategyId)) {
            query["ScaleStrategyId"] = request.scaleStrategyId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stopDuration)) {
            query["StopDuration"] = request.stopDuration!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDesktopGroup",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDesktopGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesktopGroup(_ request: ModifyDesktopGroupRequest) async throws -> ModifyDesktopGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDesktopGroupWithOptions(request as! ModifyDesktopGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesktopHostNameWithOptions(_ request: ModifyDesktopHostNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDesktopHostNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newHostName)) {
            query["NewHostName"] = request.newHostName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDesktopHostName",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDesktopHostNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesktopHostName(_ request: ModifyDesktopHostNameRequest) async throws -> ModifyDesktopHostNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDesktopHostNameWithOptions(request as! ModifyDesktopHostNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesktopNameWithOptions(_ request: ModifyDesktopNameRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDesktopNameResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newDesktopName)) {
            query["NewDesktopName"] = request.newDesktopName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDesktopName",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDesktopNameResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesktopName(_ request: ModifyDesktopNameRequest) async throws -> ModifyDesktopNameResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDesktopNameWithOptions(request as! ModifyDesktopNameRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesktopSpecWithOptions(_ request: ModifyDesktopSpecRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDesktopSpecResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopType)) {
            query["DesktopType"] = request.desktopType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            query["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rootDiskSizeGib)) {
            query["RootDiskSizeGib"] = request.rootDiskSizeGib!;
        }
        if (!TeaUtils.Client.isUnset(request.userDiskPerformanceLevel)) {
            query["UserDiskPerformanceLevel"] = request.userDiskPerformanceLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userDiskSizeGib)) {
            query["UserDiskSizeGib"] = request.userDiskSizeGib!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDesktopSpec",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDesktopSpecResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesktopSpec(_ request: ModifyDesktopSpecRequest) async throws -> ModifyDesktopSpecResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDesktopSpecWithOptions(request as! ModifyDesktopSpecRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesktopsPolicyGroupWithOptions(_ request: ModifyDesktopsPolicyGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDesktopsPolicyGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDesktopsPolicyGroup",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDesktopsPolicyGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDesktopsPolicyGroup(_ request: ModifyDesktopsPolicyGroupRequest) async throws -> ModifyDesktopsPolicyGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDesktopsPolicyGroupWithOptions(request as! ModifyDesktopsPolicyGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskSpecWithOptions(_ request: ModifyDiskSpecRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyDiskSpecResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            query["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.rootDiskPerformanceLevel)) {
            query["RootDiskPerformanceLevel"] = request.rootDiskPerformanceLevel ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userDiskPerformanceLevel)) {
            query["UserDiskPerformanceLevel"] = request.userDiskPerformanceLevel ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyDiskSpec",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyDiskSpecResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyDiskSpec(_ request: ModifyDiskSpecRequest) async throws -> ModifyDiskSpecResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyDiskSpecWithOptions(request as! ModifyDiskSpecRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEntitlementWithOptions(_ request: ModifyEntitlementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyEntitlementResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyEntitlement",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyEntitlementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyEntitlement(_ request: ModifyEntitlementRequest) async throws -> ModifyEntitlementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyEntitlementWithOptions(request as! ModifyEntitlementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyImageAttributeWithOptions(_ request: ModifyImageAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyImageAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyImageAttribute",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyImageAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyImageAttribute(_ request: ModifyImageAttributeRequest) async throws -> ModifyImageAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyImageAttributeWithOptions(request as! ModifyImageAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyImagePermissionWithOptions(_ request: ModifyImagePermissionRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyImagePermissionResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.addAccount)) {
            query["AddAccount"] = request.addAccount ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.removeAccount)) {
            query["RemoveAccount"] = request.removeAccount ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyImagePermission",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyImagePermissionResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyImagePermission(_ request: ModifyImagePermissionRequest) async throws -> ModifyImagePermissionResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyImagePermissionWithOptions(request as! ModifyImagePermissionRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNASDefaultMountTargetWithOptions(_ request: ModifyNASDefaultMountTargetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNASDefaultMountTargetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileSystemId)) {
            query["FileSystemId"] = request.fileSystemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.mountTargetDomain)) {
            query["MountTargetDomain"] = request.mountTargetDomain ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNASDefaultMountTarget",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNASDefaultMountTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNASDefaultMountTarget(_ request: ModifyNASDefaultMountTargetRequest) async throws -> ModifyNASDefaultMountTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyNASDefaultMountTargetWithOptions(request as! ModifyNASDefaultMountTargetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNetworkPackageBandwidthWithOptions(_ request: ModifyNetworkPackageBandwidthRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNetworkPackageBandwidthResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.bandwidth)) {
            query["Bandwidth"] = request.bandwidth!;
        }
        if (!TeaUtils.Client.isUnset(request.networkPackageId)) {
            query["NetworkPackageId"] = request.networkPackageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            query["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNetworkPackageBandwidth",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNetworkPackageBandwidthResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNetworkPackageBandwidth(_ request: ModifyNetworkPackageBandwidthRequest) async throws -> ModifyNetworkPackageBandwidthResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyNetworkPackageBandwidthWithOptions(request as! ModifyNetworkPackageBandwidthRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNetworkPackageEnabledWithOptions(_ request: ModifyNetworkPackageEnabledRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyNetworkPackageEnabledResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enabled)) {
            query["Enabled"] = request.enabled!;
        }
        if (!TeaUtils.Client.isUnset(request.networkPackageId)) {
            query["NetworkPackageId"] = request.networkPackageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyNetworkPackageEnabled",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyNetworkPackageEnabledResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyNetworkPackageEnabled(_ request: ModifyNetworkPackageEnabledRequest) async throws -> ModifyNetworkPackageEnabledResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyNetworkPackageEnabledWithOptions(request as! ModifyNetworkPackageEnabledRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyOfficeSiteAttributeWithOptions(_ request: ModifyOfficeSiteAttributeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyOfficeSiteAttributeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopAccessType)) {
            query["DesktopAccessType"] = request.desktopAccessType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.needVerifyLoginRisk)) {
            query["NeedVerifyLoginRisk"] = request.needVerifyLoginRisk!;
        }
        if (!TeaUtils.Client.isUnset(request.needVerifyZeroDevice)) {
            query["NeedVerifyZeroDevice"] = request.needVerifyZeroDevice!;
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteName)) {
            query["OfficeSiteName"] = request.officeSiteName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyOfficeSiteAttribute",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyOfficeSiteAttributeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyOfficeSiteAttribute(_ request: ModifyOfficeSiteAttributeRequest) async throws -> ModifyOfficeSiteAttributeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyOfficeSiteAttributeWithOptions(request as! ModifyOfficeSiteAttributeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyOfficeSiteCrossDesktopAccessWithOptions(_ request: ModifyOfficeSiteCrossDesktopAccessRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyOfficeSiteCrossDesktopAccessResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableCrossDesktopAccess)) {
            query["EnableCrossDesktopAccess"] = request.enableCrossDesktopAccess!;
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyOfficeSiteCrossDesktopAccess",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyOfficeSiteCrossDesktopAccessResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyOfficeSiteCrossDesktopAccess(_ request: ModifyOfficeSiteCrossDesktopAccessRequest) async throws -> ModifyOfficeSiteCrossDesktopAccessResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyOfficeSiteCrossDesktopAccessWithOptions(request as! ModifyOfficeSiteCrossDesktopAccessRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyOfficeSiteMfaEnabledWithOptions(_ request: ModifyOfficeSiteMfaEnabledRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyOfficeSiteMfaEnabledResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.mfaEnabled)) {
            query["MfaEnabled"] = request.mfaEnabled!;
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyOfficeSiteMfaEnabled",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyOfficeSiteMfaEnabledResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyOfficeSiteMfaEnabled(_ request: ModifyOfficeSiteMfaEnabledRequest) async throws -> ModifyOfficeSiteMfaEnabledResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyOfficeSiteMfaEnabledWithOptions(request as! ModifyOfficeSiteMfaEnabledRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyOperateVulWithOptions(_ request: ModifyOperateVulRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyOperateVulResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            query["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vulInfo)) {
            query["VulInfo"] = request.vulInfo ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyOperateVul",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyOperateVulResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyOperateVul(_ request: ModifyOperateVulRequest) async throws -> ModifyOperateVulResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyOperateVulWithOptions(request as! ModifyOperateVulRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPolicyGroupWithOptions(_ request: ModifyPolicyGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyPolicyGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.appContentProtection)) {
            query["AppContentProtection"] = request.appContentProtection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.authorizeAccessPolicyRule)) {
            query["AuthorizeAccessPolicyRule"] = request.authorizeAccessPolicyRule ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.authorizeSecurityPolicyRule)) {
            query["AuthorizeSecurityPolicyRule"] = request.authorizeSecurityPolicyRule ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.cameraRedirect)) {
            query["CameraRedirect"] = request.cameraRedirect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.clientType)) {
            query["ClientType"] = request.clientType ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.clipboard)) {
            query["Clipboard"] = request.clipboard ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.domainList)) {
            query["DomainList"] = request.domainList ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.gpuAcceleration)) {
            query["GpuAcceleration"] = request.gpuAcceleration ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.html5Access)) {
            query["Html5Access"] = request.html5Access ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.html5FileTransfer)) {
            query["Html5FileTransfer"] = request.html5FileTransfer ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.localDrive)) {
            query["LocalDrive"] = request.localDrive ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.name)) {
            query["Name"] = request.name ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.netRedirect)) {
            query["NetRedirect"] = request.netRedirect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.policyGroupId)) {
            query["PolicyGroupId"] = request.policyGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preemptLogin)) {
            query["PreemptLogin"] = request.preemptLogin ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.preemptLoginUser)) {
            query["PreemptLoginUser"] = request.preemptLoginUser ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.printerRedirection)) {
            query["PrinterRedirection"] = request.printerRedirection ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordContent)) {
            query["RecordContent"] = request.recordContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordContentExpires)) {
            query["RecordContentExpires"] = request.recordContentExpires!;
        }
        if (!TeaUtils.Client.isUnset(request.recording)) {
            query["Recording"] = request.recording ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordingEndTime)) {
            query["RecordingEndTime"] = request.recordingEndTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.recordingExpires)) {
            query["RecordingExpires"] = request.recordingExpires!;
        }
        if (!TeaUtils.Client.isUnset(request.recordingFps)) {
            query["RecordingFps"] = request.recordingFps!;
        }
        if (!TeaUtils.Client.isUnset(request.recordingStartTime)) {
            query["RecordingStartTime"] = request.recordingStartTime ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.remoteCoordinate)) {
            query["RemoteCoordinate"] = request.remoteCoordinate ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.revokeAccessPolicyRule)) {
            query["RevokeAccessPolicyRule"] = request.revokeAccessPolicyRule ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.revokeSecurityPolicyRule)) {
            query["RevokeSecurityPolicyRule"] = request.revokeSecurityPolicyRule ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.usbRedirect)) {
            query["UsbRedirect"] = request.usbRedirect ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.usbSupplyRedirectRule)) {
            query["UsbSupplyRedirectRule"] = request.usbSupplyRedirectRule ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.visualQuality)) {
            query["VisualQuality"] = request.visualQuality ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermark)) {
            query["Watermark"] = request.watermark ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkTransparency)) {
            query["WatermarkTransparency"] = request.watermarkTransparency ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.watermarkType)) {
            query["WatermarkType"] = request.watermarkType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyPolicyGroup",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyPolicyGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyPolicyGroup(_ request: ModifyPolicyGroupRequest) async throws -> ModifyPolicyGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyPolicyGroupWithOptions(request as! ModifyPolicyGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserEntitlementWithOptions(_ request: ModifyUserEntitlementRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyUserEntitlementResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.authorizeDesktopId)) {
            query["AuthorizeDesktopId"] = request.authorizeDesktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.revokeDesktopId)) {
            query["RevokeDesktopId"] = request.revokeDesktopId ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyUserEntitlement",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyUserEntitlementResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserEntitlement(_ request: ModifyUserEntitlementRequest) async throws -> ModifyUserEntitlementResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyUserEntitlementWithOptions(request as! ModifyUserEntitlementRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserToDesktopGroupWithOptions(_ request: ModifyUserToDesktopGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ModifyUserToDesktopGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.newEndUserIds)) {
            query["NewEndUserIds"] = request.newEndUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.oldEndUserIds)) {
            query["OldEndUserIds"] = request.oldEndUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ModifyUserToDesktopGroup",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ModifyUserToDesktopGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func modifyUserToDesktopGroup(_ request: ModifyUserToDesktopGroupRequest) async throws -> ModifyUserToDesktopGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await modifyUserToDesktopGroupWithOptions(request as! ModifyUserToDesktopGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateVulsWithOptions(_ request: OperateVulsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> OperateVulsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.operateType)) {
            query["OperateType"] = request.operateType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.precondition)) {
            query["Precondition"] = request.precondition!;
        }
        if (!TeaUtils.Client.isUnset(request.reason)) {
            query["Reason"] = request.reason ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.vulName)) {
            query["VulName"] = request.vulName ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "OperateVuls",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(OperateVulsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func operateVuls(_ request: OperateVulsRequest) async throws -> OperateVulsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await operateVulsWithOptions(request as! OperateVulsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootDesktopsWithOptions(_ request: RebootDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RebootDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebootDesktops",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebootDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebootDesktops(_ request: RebootDesktopsRequest) async throws -> RebootDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rebootDesktopsWithOptions(request as! RebootDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebuildDesktopsWithOptions(_ request: RebuildDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RebuildDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RebuildDesktops",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RebuildDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rebuildDesktops(_ request: RebuildDesktopsRequest) async throws -> RebuildDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rebuildDesktopsWithOptions(request as! RebuildDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUserFromDesktopGroupWithOptions(_ request: RemoveUserFromDesktopGroupRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RemoveUserFromDesktopGroupResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopGroupIds)) {
            query["DesktopGroupIds"] = request.desktopGroupIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.endUserIds)) {
            query["EndUserIds"] = request.endUserIds ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RemoveUserFromDesktopGroup",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RemoveUserFromDesktopGroupResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func removeUserFromDesktopGroup(_ request: RemoveUserFromDesktopGroupRequest) async throws -> RemoveUserFromDesktopGroupResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await removeUserFromDesktopGroupWithOptions(request as! RemoveUserFromDesktopGroupRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewDesktopsWithOptions(_ request: RenewDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            query["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewDesktops",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewDesktops(_ request: RenewDesktopsRequest) async throws -> RenewDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewDesktopsWithOptions(request as! RenewDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewNetworkPackagesWithOptions(_ request: RenewNetworkPackagesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RenewNetworkPackagesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.autoPay)) {
            query["AutoPay"] = request.autoPay!;
        }
        if (!TeaUtils.Client.isUnset(request.networkPackageId)) {
            query["NetworkPackageId"] = request.networkPackageId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.period)) {
            query["Period"] = request.period!;
        }
        if (!TeaUtils.Client.isUnset(request.periodUnit)) {
            query["PeriodUnit"] = request.periodUnit ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.promotionId)) {
            query["PromotionId"] = request.promotionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RenewNetworkPackages",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RenewNetworkPackagesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func renewNetworkPackages(_ request: RenewNetworkPackagesRequest) async throws -> RenewNetworkPackagesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await renewNetworkPackagesWithOptions(request as! RenewNetworkPackagesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetDesktopsWithOptions(_ request: ResetDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.imageId)) {
            query["ImageId"] = request.imageId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.payType)) {
            query["PayType"] = request.payType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resetType)) {
            query["ResetType"] = request.resetType ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetDesktops",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetDesktops(_ request: ResetDesktopsRequest) async throws -> ResetDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetDesktopsWithOptions(request as! ResetDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetNASDefaultMountTargetWithOptions(_ request: ResetNASDefaultMountTargetRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetNASDefaultMountTargetResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.fileSystemId)) {
            query["FileSystemId"] = request.fileSystemId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetNASDefaultMountTarget",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetNASDefaultMountTargetResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetNASDefaultMountTarget(_ request: ResetNASDefaultMountTargetRequest) async throws -> ResetNASDefaultMountTargetResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetNASDefaultMountTargetWithOptions(request as! ResetNASDefaultMountTargetRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetSnapshotWithOptions(_ request: ResetSnapshotRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> ResetSnapshotResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.snapshotId)) {
            query["SnapshotId"] = request.snapshotId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "ResetSnapshot",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(ResetSnapshotResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func resetSnapshot(_ request: ResetSnapshotRequest) async throws -> ResetSnapshotResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await resetSnapshotWithOptions(request as! ResetSnapshotRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeCoordinatePrivilegeWithOptions(_ request: RevokeCoordinatePrivilegeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RevokeCoordinatePrivilegeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.coId)) {
            query["CoId"] = request.coId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.endUserId)) {
            query["EndUserId"] = request.endUserId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userType)) {
            query["UserType"] = request.userType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.uuid)) {
            query["Uuid"] = request.uuid ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RevokeCoordinatePrivilege",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RevokeCoordinatePrivilegeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func revokeCoordinatePrivilege(_ request: RevokeCoordinatePrivilegeRequest) async throws -> RevokeCoordinatePrivilegeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await revokeCoordinatePrivilegeWithOptions(request as! RevokeCoordinatePrivilegeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackSuspEventQuaraFileWithOptions(_ request: RollbackSuspEventQuaraFileRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RollbackSuspEventQuaraFileResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.quaraFieldId)) {
            query["QuaraFieldId"] = request.quaraFieldId!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RollbackSuspEventQuaraFile",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RollbackSuspEventQuaraFileResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func rollbackSuspEventQuaraFile(_ request: RollbackSuspEventQuaraFileRequest) async throws -> RollbackSuspEventQuaraFileResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await rollbackSuspEventQuaraFileWithOptions(request as! RollbackSuspEventQuaraFileRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCommandWithOptions(_ request: RunCommandRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> RunCommandResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.commandContent)) {
            query["CommandContent"] = request.commandContent ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.contentEncoding)) {
            query["ContentEncoding"] = request.contentEncoding ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.timeout)) {
            query["Timeout"] = request.timeout!;
        }
        if (!TeaUtils.Client.isUnset(request.type)) {
            query["Type"] = request.type ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "RunCommand",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(RunCommandResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func runCommand(_ request: RunCommandRequest) async throws -> RunCommandResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await runCommandWithOptions(request as! RunCommandRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendVerifyCodeWithOptions(_ request: SendVerifyCodeRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SendVerifyCodeResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.extraInfo)) {
            query["ExtraInfo"] = request.extraInfo ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyCodeAction)) {
            query["VerifyCodeAction"] = request.verifyCodeAction ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SendVerifyCode",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SendVerifyCodeResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func sendVerifyCode(_ request: SendVerifyCodeRequest) async throws -> SendVerifyCodeResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await sendVerifyCodeWithOptions(request as! SendVerifyCodeRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDesktopGroupTimerWithOptions(_ request: SetDesktopGroupTimerRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDesktopGroupTimerResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cronExpression)) {
            query["CronExpression"] = request.cronExpression ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.force)) {
            query["Force"] = request.force!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resetType)) {
            query["ResetType"] = request.resetType!;
        }
        if (!TeaUtils.Client.isUnset(request.timerType)) {
            query["TimerType"] = request.timerType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDesktopGroupTimer",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDesktopGroupTimerResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDesktopGroupTimer(_ request: SetDesktopGroupTimerRequest) async throws -> SetDesktopGroupTimerResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDesktopGroupTimerWithOptions(request as! SetDesktopGroupTimerRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDesktopGroupTimerStatusWithOptions(_ request: SetDesktopGroupTimerStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetDesktopGroupTimerStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopGroupId)) {
            query["DesktopGroupId"] = request.desktopGroupId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.status)) {
            query["Status"] = request.status!;
        }
        if (!TeaUtils.Client.isUnset(request.timerType)) {
            query["TimerType"] = request.timerType!;
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetDesktopGroupTimerStatus",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetDesktopGroupTimerStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setDesktopGroupTimerStatus(_ request: SetDesktopGroupTimerStatusRequest) async throws -> SetDesktopGroupTimerStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setDesktopGroupTimerStatusWithOptions(request as! SetDesktopGroupTimerStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setIdpMetadataWithOptions(_ request: SetIdpMetadataRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetIdpMetadataResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.directoryId)) {
            query["DirectoryId"] = request.directoryId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.idpMetadata)) {
            query["IdpMetadata"] = request.idpMetadata ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetIdpMetadata",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetIdpMetadataResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setIdpMetadata(_ request: SetIdpMetadataRequest) async throws -> SetIdpMetadataResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setIdpMetadataWithOptions(request as! SetIdpMetadataRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setOfficeSiteSsoStatusWithOptions(_ request: SetOfficeSiteSsoStatusRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> SetOfficeSiteSsoStatusResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.enableSso)) {
            query["EnableSso"] = request.enableSso!;
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "SetOfficeSiteSsoStatus",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(SetOfficeSiteSsoStatusResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func setOfficeSiteSsoStatus(_ request: SetOfficeSiteSsoStatusRequest) async throws -> SetOfficeSiteSsoStatusResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await setOfficeSiteSsoStatusWithOptions(request as! SetOfficeSiteSsoStatusRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDesktopsWithOptions(_ request: StartDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartDesktops",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startDesktops(_ request: StartDesktopsRequest) async throws -> StartDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startDesktopsWithOptions(request as! StartDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startVirusScanTaskWithOptions(_ request: StartVirusScanTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StartVirusScanTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.officeSiteId)) {
            query["OfficeSiteId"] = request.officeSiteId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StartVirusScanTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StartVirusScanTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func startVirusScanTask(_ request: StartVirusScanTaskRequest) async throws -> StartVirusScanTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await startVirusScanTaskWithOptions(request as! StartVirusScanTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDesktopsWithOptions(_ request: StopDesktopsRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopDesktopsResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.stoppedMode)) {
            query["StoppedMode"] = request.stoppedMode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopDesktops",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopDesktopsResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopDesktops(_ request: StopDesktopsRequest) async throws -> StopDesktopsResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopDesktopsWithOptions(request as! StopDesktopsRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopInvocationWithOptions(_ request: StopInvocationRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> StopInvocationResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.desktopId)) {
            query["DesktopId"] = request.desktopId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.invokeId)) {
            query["InvokeId"] = request.invokeId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "StopInvocation",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(StopInvocationResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func stopInvocation(_ request: StopInvocationRequest) async throws -> StopInvocationResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await stopInvocationWithOptions(request as! StopInvocationRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResourcesWithOptions(_ request: TagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> TagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tag)) {
            query["Tag"] = request.tag ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "TagResources",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(TagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func tagResources(_ request: TagResourcesRequest) async throws -> TagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await tagResourcesWithOptions(request as! TagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unlockVirtualMFADeviceWithOptions(_ request: UnlockVirtualMFADeviceRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UnlockVirtualMFADeviceResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.serialNumber)) {
            query["SerialNumber"] = request.serialNumber ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UnlockVirtualMFADevice",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UnlockVirtualMFADeviceResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func unlockVirtualMFADevice(_ request: UnlockVirtualMFADeviceRequest) async throws -> UnlockVirtualMFADeviceResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await unlockVirtualMFADeviceWithOptions(request as! UnlockVirtualMFADeviceRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResourcesWithOptions(_ request: UntagResourcesRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UntagResourcesResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.all)) {
            query["All"] = request.all!;
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.resourceId)) {
            query["ResourceId"] = request.resourceId ?? [];
        }
        if (!TeaUtils.Client.isUnset(request.resourceType)) {
            query["ResourceType"] = request.resourceType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.tagKey)) {
            query["TagKey"] = request.tagKey ?? [];
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UntagResources",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UntagResourcesResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func untagResources(_ request: UntagResourcesRequest) async throws -> UntagResourcesResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await untagResourcesWithOptions(request as! UntagResourcesRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFotaTaskWithOptions(_ request: UpdateFotaTaskRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UpdateFotaTaskResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.taskUid)) {
            query["TaskUid"] = request.taskUid ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.userStatus)) {
            query["UserStatus"] = request.userStatus ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UpdateFotaTask",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UpdateFotaTaskResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func updateFotaTask(_ request: UpdateFotaTaskRequest) async throws -> UpdateFotaTaskResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await updateFotaTaskWithOptions(request as! UpdateFotaTaskRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadImageWithOptions(_ request: UploadImageRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> UploadImageResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.dataDiskSize)) {
            query["DataDiskSize"] = request.dataDiskSize!;
        }
        if (!TeaUtils.Client.isUnset(request.description_)) {
            query["Description"] = request.description_ ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.enableSecurityCheck)) {
            query["EnableSecurityCheck"] = request.enableSecurityCheck!;
        }
        if (!TeaUtils.Client.isUnset(request.gpuCategory)) {
            query["GpuCategory"] = request.gpuCategory!;
        }
        if (!TeaUtils.Client.isUnset(request.gpuDriverType)) {
            query["GpuDriverType"] = request.gpuDriverType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.imageName)) {
            query["ImageName"] = request.imageName ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.licenseType)) {
            query["LicenseType"] = request.licenseType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.osType)) {
            query["OsType"] = request.osType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.ossObjectPath)) {
            query["OssObjectPath"] = request.ossObjectPath ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.protocolType)) {
            query["ProtocolType"] = request.protocolType ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "UploadImage",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(UploadImageResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func uploadImage(_ request: UploadImageRequest) async throws -> UploadImageResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await uploadImageWithOptions(request as! UploadImageRequest, runtime as! TeaUtils.RuntimeOptions)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyCenWithOptions(_ request: VerifyCenRequest, _ runtime: TeaUtils.RuntimeOptions) async throws -> VerifyCenResponse {
        try TeaUtils.Client.validateModel(request)
        var query: [String: Any] = [:]
        if (!TeaUtils.Client.isUnset(request.cenId)) {
            query["CenId"] = request.cenId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.cenOwnerId)) {
            query["CenOwnerId"] = request.cenOwnerId!;
        }
        if (!TeaUtils.Client.isUnset(request.cidrBlock)) {
            query["CidrBlock"] = request.cidrBlock ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.regionId)) {
            query["RegionId"] = request.regionId ?? "";
        }
        if (!TeaUtils.Client.isUnset(request.verifyCode)) {
            query["VerifyCode"] = request.verifyCode ?? "";
        }
        var req: AlibabacloudOpenApi.OpenApiRequest = AlibabacloudOpenApi.OpenApiRequest([
            "query": AlibabaCloudOpenApiUtil.Client.query(query)
        ])
        var params: AlibabacloudOpenApi.Params = AlibabacloudOpenApi.Params([
            "action": "VerifyCen",
            "version": "2020-09-30",
            "protocol": "HTTPS",
            "pathname": "/",
            "method": "POST",
            "authType": "AK",
            "style": "RPC",
            "reqBodyType": "formData",
            "bodyType": "json"
        ])
        var tmp: [String: Any] = try await callApi(params as! AlibabacloudOpenApi.Params, req as! AlibabacloudOpenApi.OpenApiRequest, runtime as! TeaUtils.RuntimeOptions)
        return Tea.TeaConverter.fromMap(VerifyCenResponse(), tmp)
    }

    @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
    public func verifyCen(_ request: VerifyCenRequest) async throws -> VerifyCenResponse {
        var runtime: TeaUtils.RuntimeOptions = TeaUtils.RuntimeOptions([:])
        return try await verifyCenWithOptions(request as! VerifyCenRequest, runtime as! TeaUtils.RuntimeOptions)
    }
}
