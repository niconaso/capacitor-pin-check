import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(PinCheck)
public class PinCheck: CAPPlugin {
    
    @objc func isSecure(_ call: CAPPluginCall) {
        let secret = "Device has passcode set?".data(using: String.Encoding.utf8, allowLossyConversion: false)
        let attributes = [kSecClass as String:kSecClassGenericPassword, kSecAttrService as String:"LocalDeviceServices", kSecAttrAccount as String:"NoAccount", kSecValueData as String:secret!, kSecAttrAccessible as String:kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly] as [String : Any]

        let status = SecItemAdd(attributes as CFDictionary, nil)
        
        if status == 0 {
        SecItemDelete(attributes as CFDictionary)
        call.success([
            "isSecure": true])
        return
        }

        call.success([
        "isSecure": false])
     
    }
}

