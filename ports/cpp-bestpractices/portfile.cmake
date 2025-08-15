
set(SOURCE_PATH ${CMAKE_CURRENT_LIST_DIR})

vcpkg_cmake_configure( SOURCE_PATH ${SOURCE_PATH} )


vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME cpp-bestpractices)

file(INSTALL
    "${SOURCE_PATH}/vcpkg.json"
    "${SOURCE_PATH}/usage"
    DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
)
