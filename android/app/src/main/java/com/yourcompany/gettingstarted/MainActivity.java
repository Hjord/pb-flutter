package com.yourcompany.gettingstarted;

import android.os.Bundle;
import android.widget.Toast;

import com.github.johnpersano.supertoasts.library.Style;
import com.github.johnpersano.supertoasts.library.SuperToast;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.PluginRegistry;

public class MainActivity extends FlutterActivity {
    PluginRegistry pluginRegistry;

    private static final String CHANNEL = "hjord.net/toast";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        pluginRegistry = new PluginRegistry();
        pluginRegistry.registerAll(this);

        new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(
                new MethodChannel.MethodCallHandler() {
                    @Override
                    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {

                        switch (methodCall.method) {
                            case "ShowThatToast":
                                ShowThatToast();
                                break;
                            case "SuperToast":
                                ShowSuperToast();
                            default:
                                result.notImplemented();
                                break;
                        }
                    }
                }
        );

    }

    private void ShowThatToast() {
        Toast.makeText(this, "Yay - a toast!", Toast.LENGTH_LONG).show();
    }

    private void ShowSuperToast() {
        Style style = Style.green();
        style.animations = Style.ANIMATIONS_FLY;


        SuperToast.create(this, "Hello world!", Style.DURATION_LONG, style).show();
    }
}
