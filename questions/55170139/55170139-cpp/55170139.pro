QT += quick webview
CONFIG += c++11
SOURCES += main.cpp
RESOURCES += qml.qrc

COPY_CONFIG = 3rdParty example.pdf
copy_cmd.input = COPY_CONFIG
copy_cmd.output = ${QMAKE_FILE_IN_BASE}${QMAKE_FILE_EXT}
copy_cmd.commands = $$QMAKE_COPY_DIR ${QMAKE_FILE_IN} ${QMAKE_FILE_OUT}
copy_cmd.CONFIG += no_link_no_clean
copy_cmd.variable_out = PRE_TARGETDEPS
QMAKE_EXTRA_COMPILERS += copy_cmd
