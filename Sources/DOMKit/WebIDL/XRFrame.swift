// This file was auto-generated by WebIDLToSwift. DO NOT EDIT!

import JavaScriptEventLoop
import JavaScriptKit

public class XRFrame: JSBridgedClass {
    public class var constructor: JSFunction { JSObject.global[Strings.XRFrame].function! }

    public let jsObject: JSObject

    public required init(unsafelyWrapping jsObject: JSObject) {
        _session = ReadonlyAttribute(jsObject: jsObject, name: Strings.session)
        _predictedDisplayTime = ReadonlyAttribute(jsObject: jsObject, name: Strings.predictedDisplayTime)
        _trackedAnchors = ReadonlyAttribute(jsObject: jsObject, name: Strings.trackedAnchors)
        self.jsObject = jsObject
    }

    @ReadonlyAttribute
    public var session: XRSession

    @ReadonlyAttribute
    public var predictedDisplayTime: DOMHighResTimeStamp

    public func getViewerPose(referenceSpace: XRReferenceSpace) -> XRViewerPose? {
        jsObject[Strings.getViewerPose]!(referenceSpace.jsValue()).fromJSValue()!
    }

    public func getPose(space: XRSpace, baseSpace: XRSpace) -> XRPose? {
        jsObject[Strings.getPose]!(space.jsValue(), baseSpace.jsValue()).fromJSValue()!
    }

    public func getJointPose(joint: XRJointSpace, baseSpace: XRSpace) -> XRJointPose? {
        jsObject[Strings.getJointPose]!(joint.jsValue(), baseSpace.jsValue()).fromJSValue()!
    }

    public func fillJointRadii(jointSpaces: [XRJointSpace], radii: Float32Array) -> Bool {
        jsObject[Strings.fillJointRadii]!(jointSpaces.jsValue(), radii.jsValue()).fromJSValue()!
    }

    public func fillPoses(spaces: [XRSpace], baseSpace: XRSpace, transforms: Float32Array) -> Bool {
        jsObject[Strings.fillPoses]!(spaces.jsValue(), baseSpace.jsValue(), transforms.jsValue()).fromJSValue()!
    }

    public func createAnchor(pose: XRRigidTransform, space: XRSpace) -> JSPromise {
        jsObject[Strings.createAnchor]!(pose.jsValue(), space.jsValue()).fromJSValue()!
    }

    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    public func createAnchor(pose: XRRigidTransform, space: XRSpace) async throws -> XRAnchor {
        let _promise: JSPromise = jsObject[Strings.createAnchor]!(pose.jsValue(), space.jsValue()).fromJSValue()!
        return try await _promise.get().fromJSValue()!
    }

    @ReadonlyAttribute
    public var trackedAnchors: XRAnchorSet

    public func getDepthInformation(view: XRView) -> XRCPUDepthInformation? {
        jsObject[Strings.getDepthInformation]!(view.jsValue()).fromJSValue()!
    }

    public func getLightEstimate(lightProbe: XRLightProbe) -> XRLightEstimate? {
        jsObject[Strings.getLightEstimate]!(lightProbe.jsValue()).fromJSValue()!
    }

    public func getHitTestResults(hitTestSource: XRHitTestSource) -> [XRHitTestResult] {
        jsObject[Strings.getHitTestResults]!(hitTestSource.jsValue()).fromJSValue()!
    }

    public func getHitTestResultsForTransientInput(hitTestSource: XRTransientInputHitTestSource) -> [XRTransientInputHitTestResult] {
        jsObject[Strings.getHitTestResultsForTransientInput]!(hitTestSource.jsValue()).fromJSValue()!
    }
}