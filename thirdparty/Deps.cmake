include(FetchContent)

set(FETCHCONTENT_UPDATES_DISCONNECTED ON)

FetchContent_Declare(
  glad
  GIT_REPOSITORY    https://github.com/Dav1dde/glad.git
  GIT_TAG           b5d260b65b3edbbd9e75f5a6c9924fe0ff4f04dd
  PREFIX            "${PROJECT_SOURCE_DIR}/thirdparty"
  SOURCE_DIR        "${PROJECT_SOURCE_DIR}/thirdparty/glad"
  BINARY_DIR        "${PROJECT_SOURCE_DIR}/thirdparty/glad-build"
)

FetchContent_Declare(
  nlnx
  GIT_REPOSITORY    https://github.com/Kaioru/nlnx
  GIT_TAG           21ae12c5e6bdf01171c73ad1f56f5ff49ba4f366
  PREFIX            "${PROJECT_SOURCE_DIR}/thirdparty"
  SOURCE_DIR        "${PROJECT_SOURCE_DIR}/thirdparty/nlnx"
  BINARY_DIR        "${PROJECT_SOURCE_DIR}/thirdparty/nlnx-build"
)

FetchContent_Declare(
  stb
  GIT_REPOSITORY    https://github.com/nothings/stb.git
  GIT_TAG           b42009b3b9d4ca35bc703f5310eedc74f584be58
  PREFIX            "${PROJECT_SOURCE_DIR}/thirdparty"
  SOURCE_DIR        "${PROJECT_SOURCE_DIR}/thirdparty/stb"
)

FetchContent_Declare(
  asio
  GIT_REPOSITORY    https://github.com/chriskohlhoff/asio.git
  GIT_TAG           1f8d154829b902dbc45a651587c6c6df948358e8
  PREFIX            "${PROJECT_SOURCE_DIR}/thirdparty"
  SOURCE_DIR        "${PROJECT_SOURCE_DIR}/thirdparty/asio"
)

IF (WIN32)
    FetchContent_Declare(
      glfw
      GIT_REPOSITORY    https://github.com/glfw/glfw.git
      GIT_TAG           3327050ca66ad34426a82c217c2d60ced61526b7
      PREFIX            "${PROJECT_SOURCE_DIR}/thirdparty"
      SOURCE_DIR        "${PROJECT_SOURCE_DIR}/thirdparty/glfw"
      BINARY_DIR        "${PROJECT_SOURCE_DIR}/thirdparty/glfw-build"
    )

    FetchContent_Declare(
      lz4
      URL               https://github.com/lz4/lz4/archive/v1.9.3.zip
      URL_MD5           72defe037b2c3db7a69affe7fe4bffd6
      PREFIX            "${PROJECT_SOURCE_DIR}/thirdparty"
      SOURCE_DIR        "${PROJECT_SOURCE_DIR}/thirdparty/lz4"
      BINARY_DIR        "${PROJECT_SOURCE_DIR}/thirdparty/lz4-build"
      SOURCE_SUBDIR     build/cmake
    )

    FetchContent_Declare(
      freetype
      URL               https://github.com/ubawurinna/freetype-windows-binaries/archive/v2.10.2.zip
      URL_MD5           e1edf9f185eb96d4493538ccb9237bc6
      PREFIX            "${PROJECT_SOURCE_DIR}/thirdparty"
      SOURCE_DIR        "${PROJECT_SOURCE_DIR}/thirdparty/freetype/freetype-windows-binaries-2.10.2"
    )

    FetchContent_MakeAvailable(lz4 nlnx glad freetype glfw stb asio)

ELSE()
    FetchContent_MakeAvailable(glad nlnx asio stb)
ENDIF()

