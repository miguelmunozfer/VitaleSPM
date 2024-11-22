import Foundation
import React
import VitaleSDK

@objc(VitaleSDKBridge)
class VitaleSDKBridge: RCTEventEmitter {

  override init() {
    super.init()
    VitaleSDK.shared.setDelegate(self)
  }

  override static func requiresMainQueueSetup() -> Bool {
    return true
  }

  @objc func startSDK(_ appID: String, password: String, userID: String, url: String?) {
    VitaleSDK.shared.startSDKWith(appID: appID, password: password, userID: userID, url: url)
  }

  @objc func setMainColor(_ color: String) {
    VitaleSDK.shared.setMainColor(color: color)
  }

  @objc func setPrimaryButtonColor(_ color: String) {
    VitaleSDK.shared.setPrimaryButtonColor(color)
  }

  @objc func setNavigationBarColor(_ color: String) {
    VitaleSDK.shared.setNavigationBarColor(color: color)
  }

  @objc func setNavigationTintColor(_ color: String) {
    VitaleSDK.shared.setNavigationTintColor(color: color)
  }

  @objc func showVitale() {
    VitaleSDK.shared.showVitale()
  }

  @objc func showNutrition() {
    VitaleSDK.shared.showNutrition()
  }

  @objc func showTraining() {
    VitaleSDK.shared.showTraining()
  }

  @objc func showTodaytraining() {
    VitaleSDK.shared.showTodaytraining()
  }

  @objc func showLibrary() {
    VitaleSDK.shared.showLibrary()
  }

  @objc func showCustomWorkouts() {
    VitaleSDK.shared.showCustomWorkouts()
  }

  @objc func showTimeBasedWorkouts() {
    VitaleSDK.shared.showTimeBasedWorkouts()
  }

  @objc func showProfile() {
    VitaleSDK.shared.showProfile()
  }

  @objc func updatePersonalProfile(_ profile: [String: Any]) {
    VitaleSDK.shared.updatePersonalProfile(
      firstName: profile["firstName"] as? String,
      lastName: profile["lastName"] as? String,
      gender: UserGender(rawValue: profile["gender"] as? String ?? ""),
      height: profile["height"] as? Int,
      weight: profile["weight"] as? Double,
      birthDate: profile["birthDate"] as? Date
    )
  }

  @objc func setPathologies(_ pathologies: [String]) {
    let mappedPathologies = pathologies.compactMap { Pathologies(rawValue: $0) }
    VitaleSDK.shared.setPathologies(mappedPathologies)
  }

}