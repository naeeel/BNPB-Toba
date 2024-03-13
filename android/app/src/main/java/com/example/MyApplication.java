package com.example.best_flutter_ui_templates; // Sesuaikan dengan nama paket aplikasi Anda

import android.app.Application;
import io.flutter.app.FlutterApplication;
import io.flutter.view.FlutterMain;

public class MyApplication extends FlutterApplication {

    @Override
    public void onCreate() {
        super.onCreate();
        FlutterMain.startInitialization(this); // Inisialisasi Flutter
    }
}
