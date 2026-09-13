# Install script for directory: /home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so.3.4.3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so.3.4"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/k13f7401d/FangOS/packages/calamares/src/build/libcalamares.so.3.4.3"
    "/home/k13f7401d/FangOS/packages/calamares/src/build/libcalamares.so.3.4"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so.3.4.3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcalamares.so.3.4"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/k13f7401d/FangOS/packages/calamares/src/build/libcalamares.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  
    file( MAKE_DIRECTORY "$ENV{DESTDIR}//usr/lib/calamares" )
    execute_process( COMMAND "/usr/bin/cmake" -E create_symlink ../libcalamares.so.3.4.3 libcalamares.so WORKING_DIRECTORY "$ENV{DESTDIR}//usr/lib/calamares" )

endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares" TYPE FILE FILES
    "/home/k13f7401d/FangOS/packages/calamares/src/build/src/libcalamares/CalamaresConfig.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/build/src/libcalamares/CalamaresVersion.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/CalamaresAbout.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/CppJob.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/DllMacro.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/GlobalStorage.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/Job.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/JobExample.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/JobQueue.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/ProcessJob.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/Settings.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/geoip" TYPE FILE FILES
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/geoip/GeoIPFixed.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/geoip/GeoIPJSON.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/geoip/GeoIPTests.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/geoip/GeoIPXML.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/geoip/Handler.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/geoip/Interface.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/locale" TYPE FILE FILES
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/locale/Global.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/locale/Lookup.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/locale/TimeZone.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/locale/TranslatableConfiguration.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/locale/TranslatableString.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/locale/Translation.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/locale/TranslationsModel.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/modulesystem" TYPE FILE FILES
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/modulesystem/Actions.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/modulesystem/Config.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/modulesystem/Descriptor.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/modulesystem/InstanceKey.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/modulesystem/Module.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/modulesystem/Preset.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/modulesystem/Requirement.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/modulesystem/RequirementsChecker.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/modulesystem/RequirementsModel.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/network" TYPE FILE FILES
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/network/Manager.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/network/Tests.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/partition" TYPE FILE FILES
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/partition/AutoMount.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/partition/FileSystem.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/partition/Global.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/partition/KPMHelper.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/partition/KPMManager.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/partition/Mount.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/partition/PartitionIterator.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/partition/PartitionQuery.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/partition/PartitionSize.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/partition/Sync.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/utils" TYPE FILE FILES
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/CommandList.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/Dirs.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/Entropy.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/Logger.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/NamedEnum.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/NamedSuffix.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/Permissions.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/PluginFactory.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/RAII.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/Retranslator.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/Runner.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/String.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/StringExpander.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/System.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/Traits.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/UMask.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/Units.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/Variant.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/Yaml.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/utils/moc-warnings.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/compat" TYPE FILE FILES
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/compat/CheckBox.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/compat/Mutex.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/compat/Size.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/compat/Variant.h"
    "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/compat/Xml.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "CALAMARES" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/libcalamares/packages" TYPE FILE FILES "/home/k13f7401d/FangOS/packages/calamares/src/src/src/libcalamares/packages/Globals.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/k13f7401d/FangOS/packages/calamares/src/build/src/libcalamares/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
