if(${PROJECT_NAME}_ENABLE_DOCUMENTATION)

    # Doxygen
    if(${PROJECT_NAME}_ENABLE_DOCUMENTATION_DOXYGEN)
        # Doxygen configuration
        find_package(Doxygen REQUIRED doxygen dot)
        if(DOXYGEN_FOUND)
            message("-- Using Doxygen Version: " ${DOXYGEN_VERSION})
            set(${PROJECT_NAME}_USE_DOXYGEN ON)
            set(DOXYGEN_DOT_GRAPH_MAX_NODES 150)
            set(DOXYGEN_ALPHABETICAL_INDEX NO)
            set(DOXYGEN_BUILTIN_STL_SUPPORT YES)
            set(DOXYGEN_CASE_SENSE_NAMES NO)
            set(DOXYGEN_CLASS_DIAGRAMS YES)
            set(DOXYGEN_DISTRIBUTE_GROUP_DOC YES)
            set(DOXYGEN_EXCLUDE bin)
            set(DOXYGEN_EXTRACT_ALL YES)
            set(DOXYGEN_EXTRACT_LOCAL_CLASSES NO)
            set(DOXYGEN_FILE_PATTERNS *.h)
            set(DOXYGEN_GENERATE_TREEVIEW YES)
            set(DOXYGEN_HIDE_FRIEND_COMPOUNDS YES)
            set(DOXYGEN_HIDE_IN_BODY_DOCS YES)
            set(DOXYGEN_HIDE_UNDOC_CLASSES YES)
            set(DOXYGEN_HIDE_UNDOC_MEMBERS YES)
            set(DOXYGEN_JAVADOC_AUTOBRIEF YES)
            set(DOXYGEN_QT_AUTOBRIEF YES)
            set(DOXYGEN_QUIET YES)
            set(DOXYGEN_RECURSIVE YES)
            set(DOXYGEN_REFERENCED_BY_RELATION YES)
            set(DOXYGEN_REFERENCES_RELATION YES)
            set(DOXYGEN_SORT_BY_SCOPE_NAME YES)
            set(DOXYGEN_SORT_MEMBER_DOCS NO)
            set(DOXYGEN_SOURCE_BROWSER YES)
            set(DOXYGEN_STRIP_CODE_COMMENTS NO)
            set(DOXYGEN_GENERATE_HTML YES)
        endif()
    endif()

    if(    ${PROJECT_NAME}_ENABLE_DOCUMENTATION_PDF
        OR ${PROJECT_NAME}_ENABLE_DOCUMENTATION_HTML
        OR ${PROJECT_NAME}_ENABLE_DOCUMENTATION_MAN
    )

        find_program (SRecord_search_groff NAMES
                        "groff"
                        DOC "groff"
        )

        if(SRecord_search_groff)
            message("-- Using Groff")
            set(${PROJECT_NAME}_USE_DOCUMENTATION_PDF ON)
        endif()
    endif()

    if(${PROJECT_NAME}_ENABLE_DOCUMENTATION_PDF)
        message("-- Generating PDF Documentation")
        set(${PROJECT_NAME}_USE_DOCUMENTATION_PDF ON)
    endif()

    if(${PROJECT_NAME}_ENABLE_DOCUMENTATION_HTML)
        message("-- Generating HTML Documentation")
        set(${PROJECT_NAME}_USE_DOCUMENTATION_HTML ON)
    endif()

    if(${PROJECT_NAME}_ENABLE_DOCUMENTATION_MAN)
        message("-- Generating Man Pages")
        set(${PROJECT_NAME}_USE_DOCUMENTATION_MAN ON)
    endif()
endif()
