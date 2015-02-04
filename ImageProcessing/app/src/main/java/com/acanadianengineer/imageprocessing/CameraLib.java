package com.acanadianengineer.imageprocessing;

import android.content.res.AssetManager;
import android.graphics.Bitmap;

public class CameraLib {
    static {
      System.loadLibrary( "ImageProcessingC" );
   }

   public static native void initCamera();
   public static native void cameraMain();
   public static native void closeCamera();
   public static native void drawMain(Bitmap bm);
   public static native int  isDirty();

   public static native void initOpenGL( int w, int h);
   public static native void step( float fElapsedTime);
   public static native void createAssetManager( AssetManager assetManager );


}
