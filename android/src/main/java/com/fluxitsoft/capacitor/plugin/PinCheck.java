package com.fluxitsoft.capacitor.plugin;

import android.app.KeyguardManager;
import android.app.KeyguardManager;
import android.content.Context;

import com.getcapacitor.JSObject;
import com.getcapacitor.NativePlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import android.os.Build;

@NativePlugin()
public class PinCheck extends Plugin {
    private static final boolean isDeviceSecureSupported = Build.VERSION.SDK_INT >= Build.VERSION_CODES.M;

    @PluginMethod()
    public void isSecure(PluginCall call) {
        Context ctx = this.getBridge().getContext();
        boolean result = isDeviceSecure(ctx);

        JSObject ret = new JSObject();

        ret.put("isSecure", result);
        call.success(ret);
    }

    private boolean isDeviceSecure(Context context) {

        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService(Context.KEYGUARD_SERVICE);
        if (PinCheck.isDeviceSecureSupported) {
            return keyguardManager.isDeviceSecure();
        } else {
            return keyguardManager.isKeyguardSecure();
        }
    }
}
