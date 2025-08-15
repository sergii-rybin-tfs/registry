
set(VCPKG_USE_HEAD_VERSION ON)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO sergii-rybin-tfs/overloaded
#    REF "v1.2.3" # Can be a tag, branch, or commit hash
#    SHA512 "..." # The checksum of the downloaded file. Set to 0 to have vcpkg calculate it for you on the first run.
    HEAD_REF master
)

file(INSTALL "${SOURCE_PATH}/include/" DESTINATION "${CURRENT_PACKAGES_DIR}/include")

file(INSTALL "${CMAKE_CURRENT_LIST_DIR}/usage" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" )
