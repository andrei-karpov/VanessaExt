alias OPENCV_OPTIONS='\
-DBUILD_CUDA_STUBS:BOOL=OFF \
-DBUILD_DOCS:BOOL=OFF \
-DBUILD_EXAMPLES:BOOL=OFF \
-DBUILD_FAT_JAVA_LIB:BOOL=OFF \
-DBUILD_IPP_IW:BOOL=OFF \
-DBUILD_ITT:BOOL=OFF \
-DBUILD_JASPER:BOOL=OFF \
-DBUILD_JAVA:BOOL=OFF \
-DBUILD_JPEG:BOOL=OFF \
-DBUILD_LIST:STRING= \
-DBUILD_OPENEXR:BOOL=OFF \
-DBUILD_OPENJPEG:BOOL=OFF \
-DBUILD_PACKAGE:BOOL=OFF \
-DBUILD_PERF_TESTS:BOOL=OFF \
-DBUILD_PNG:BOOL=ON \
-DBUILD_PROTOBUF:BOOL=OFF \
-DBUILD_SHARED_LIBS:BOOL=OFF \
-DBUILD_TBB:BOOL=OFF \
-DBUILD_TESTS:BOOL=OFF \
-DBUILD_TIFF:BOOL=OFF \
-DBUILD_USE_SYMLINKS:BOOL=OFF \
-DBUILD_WEBP:BOOL=OFF \
-DBUILD_WITH_DEBUG_INFO:BOOL=OFF \
-DBUILD_WITH_DYNAMIC_IPP:BOOL=OFF \
-DBUILD_WITH_STATIC_CRT:BOOL=ON \
-DBUILD_ZLIB:BOOL=OFF \
-DBUILD_opencv_apps:BOOL=OFF \
-DBUILD_opencv_calib3d:BOOL=OFF \
-DBUILD_opencv_core:BOOL=ON \
-DBUILD_opencv_dnn:BOOL=OFF \
-DBUILD_opencv_features2d:BOOL=OFF \
-DBUILD_opencv_flann:BOOL=OFF \
-DBUILD_opencv_gapi:BOOL=OFF \
-DBUILD_opencv_highgui:BOOL=OFF \
-DBUILD_opencv_imgcodecs:BOOL=ON \
-DBUILD_opencv_imgproc:BOOL=ON \
-DBUILD_opencv_java_bindings_generator:BOOL=OFF \
-DBUILD_opencv_js:BOOL=OFF \
-DBUILD_opencv_ml:BOOL=OFF \
-DBUILD_opencv_objdetect:BOOL=OFF \
-DBUILD_opencv_photo:BOOL=OFF \
-DBUILD_opencv_python_bindings_generator:BOOL=OFF \
-DBUILD_opencv_python_tests:BOOL=OFF \
-DBUILD_opencv_stitching:BOOL=OFF \
-DBUILD_opencv_ts:BOOL=OFF \
-DBUILD_opencv_video:BOOL=OFF \
-DBUILD_opencv_videoio:BOOL=OFF \
-DBUILD_opencv_world:BOOL=OFF \
-DENABLE_BUILD_HARDENING:BOOL=OFF \
-DENABLE_CCACHE:BOOL=OFF \
-DENABLE_CONFIG_VERIFICATION:BOOL=OFF \
-DENABLE_FAST_MATH:BOOL=OFF \
-DENABLE_FLAKE8:BOOL=OFF \
-DENABLE_IMPL_COLLECTION:BOOL=OFF \
-DENABLE_INSTRUMENTATION:BOOL=OFF \
-DENABLE_LTO:BOOL=OFF \
-DENABLE_NOISY_WARNINGS:BOOL=OFF \
-DENABLE_PIC:BOOL=ON \
-DENABLE_PRECOMPILED_HEADERS:BOOL=ON \
-DENABLE_PYLINT:BOOL=OFF \
-DENABLE_SOLUTION_FOLDERS:BOOL=ON \
-DWITH_1394:BOOL=OFF \
-DWITH_ADE:BOOL=OFF \
-DWITH_ARITH_DEC:BOOL=OFF \
-DWITH_ARITH_ENC:BOOL=OFF \
-DWITH_CLP:BOOL=OFF \
-DWITH_CUDA:BOOL=OFF \
-DWITH_DIRECTX:BOOL=OFF \
-DWITH_DSHOW:BOOL=OFF \
-DWITH_EIGEN:BOOL=OFF \
-DWITH_FFMPEG:BOOL=OFF \
-DWITH_FREETYPE:BOOL=OFF \
-DWITH_GDAL:BOOL=OFF \
-DWITH_GDCM:BOOL=OFF \
-DWITH_GSTREAMER:BOOL=OFF \
-DWITH_HALIDE:BOOL=OFF \
-DWITH_HPX:BOOL=OFF \
-DWITH_IMGCODEC_HDR:BOOL=OFF \
-DWITH_IMGCODEC_PFM:BOOL=OFF \
-DWITH_IMGCODEC_PXM:BOOL=OFF \
-DWITH_IMGCODEC_SUNRASTER:BOOL=OFF \
-DWITH_INF_ENGINE:BOOL=OFF \
-DWITH_IPP:BOOL=OFF \
-DWITH_ITT:BOOL=OFF \
-DWITH_JASPER:BOOL=OFF \
-DWITH_JPEG:BOOL=OFF \
-DWITH_LAPACK:BOOL=OFF \
-DWITH_LIBREALSENSE:BOOL=OFF \
-DWITH_MFX:BOOL=OFF \
-DWITH_MSMF:BOOL=OFF \
-DWITH_MSMF_DXVA:BOOL=OFF \
-DWITH_NGRAPH:BOOL=OFF \
-DWITH_OPENCL:BOOL=OFF \
-DWITH_OPENCLAMDBLAS:BOOL=OFF \
-DWITH_OPENCLAMDFFT:BOOL=OFF \
-DWITH_OPENCL_D3D11_NV:BOOL=OFF \
-DWITH_OPENCL_SVM:BOOL=OFF \
-DWITH_OPENEXR:BOOL=OFF \
-DWITH_OPENGL:BOOL=OFF \
-DWITH_OPENJPEG:BOOL=OFF \
-DWITH_OPENMP:BOOL=OFF \
-DWITH_OPENNI:BOOL=OFF \
-DWITH_OPENNI2:BOOL=OFF \
-DWITH_OPENVX:BOOL=OFF \
-DWITH_PLAIDML:BOOL=OFF \
-DWITH_PNG:BOOL=ON \
-DWITH_PROTOBUF:BOOL=OFF \
-DWITH_PVAPI:BOOL=OFF \
-DWITH_QT:BOOL=OFF \
-DWITH_QUIRC:BOOL=OFF \
-DWITH_TBB:BOOL=OFF \
-DWITH_TIFF:BOOL=OFF \
-DWITH_VTK:BOOL=OFF \
-DWITH_VULKAN:BOOL=OFF \
-DWITH_WEBP:BOOL=OFF \
-DWITH_WIN32UI:BOOL=OFF \
-DWITH_XIMEA:BOOL=OFF \
-DCMAKE_BUILD_TYPE:STRING=Release'

ROOTPATH=$PWD

INSTALL_PATH=$ROOTPATH/opencv-x32
alias OPENCV_INSTALL32='\
  -DOPENCV_LIB_ARCHIVE_INSTALL_PATH:PATH=$INSTALL_PATH \
  -DOPENCV_3P_LIB_INSTALL_PATH:PATH=$INSTALL_PATH \
  -DOPENCV_INCLUDE_INSTALL_PATH=$INSTALL_PATH \
  -DCMAKE_C_FLAGS=-m32 \
  -DCMAKE_CXX_FLAGS=-m32'

cd opencv-4.5.0
mkdir build32
cd build32
cmake OPENCV_OPTIONS OPENCV_INSTALL32 ..
cmake --build . --config Release
cmake --build . --target install --config Release
cd $ROOTPATH

SET INSTALL_PATH=$ROOTPATH/opencv-x64
INSTALL_PATH=$ROOTPATH/opencv-x32
alias OPENCV_INSTALL64='\
  -DOPENCV_LIB_ARCHIVE_INSTALL_PATH:PATH=$INSTALL_PATH \
  -DOPENCV_3P_LIB_INSTALL_PATH:PATH=$INSTALL_PATH \
  -DOPENCV_INCLUDE_INSTALL_PATH=$INSTALL_PATH \
  -DCMAKE_C_FLAGS=-m64 \
  -DCMAKE_CXX_FLAGS=-m64'

cd opencv-4.5.0
mkdir build64
cd build64
cmake OPENCV_OPTIONS OPENCV_INSTALL64 ..
cmake --build . --config Release
cmake --build . --target install --config Release
cd $ROOTPATH
