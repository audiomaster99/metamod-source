# Metamod:Source
# Copyright (C) 2003-2024 AlliedModders LLC and authors
# Licensed under the GPLv3 license. See LICENSE file in the project root for details.

if(NOT SOURCESDK_DIR)
	message(FATAL_ERROR "SOURCESDK_DIR is empty")
endif()

set(SOURCESDK_BINARY_DIR "sourcesdk")
set(SOURCESDK_TIER1_BINARY_DIR "tier1")
set(SOURCESDK_AM_DEFINES ON)
set(SOURCESDK_CONFIGURE_EXPORT_MAP OFF)
set(SOURCESDK_COMPILE_PROTOBUF OFF)
set(SOURCESDK_CREATE_INTEFACE_OVERRIDE ON)

add_subdirectory(${SOURCESDK_DIR} ${SOURCESDK_TIER1_BINARY_DIR})

function(get_sourcesdk_target_property VAR_NAME TARGET PROPERTY)
	get_target_property(PROPERTY_VALUE ${TARGET} ${PROPERTY})

	if("${PROPERTY_VALUE}" MATCHES "PROPERTY_VALUE-NOTFOUND")
		set(${VAR_NAME} PARENT_SCOPE)
	else()
		set(${VAR_NAME} ${PROPERTY_VALUE} PARENT_SCOPE)
	endif()
endfunction()
