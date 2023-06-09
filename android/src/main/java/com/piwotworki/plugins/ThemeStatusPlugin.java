package com.piwotworki.plugins;

import android.content.res.Configuration;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "ThemeStatus")
public class ThemeStatusPlugin extends Plugin {

    @PluginMethod
    public void isDarkMode(PluginCall call) {
        String value = "undefined";

        int nightModeFlags =
                getContext().getResources().getConfiguration().uiMode &
                        Configuration.UI_MODE_NIGHT_MASK;
        switch (nightModeFlags) {
            case Configuration.UI_MODE_NIGHT_YES:
                value = "true";
                break;

            case Configuration.UI_MODE_NIGHT_NO:
                value = "false";
                break;

            case Configuration.UI_MODE_NIGHT_UNDEFINED:
                value = "undefined";
                break;
        }


        JSObject ret = new JSObject();
        ret.put("value", value);
        call.resolve(ret);
    }
}
