#!/bin/bash

DATASCIENCE_TESTDIR=$TESTDIR/datahub-base-notebook

### Add any non-selenium tests here

nbgrader export

# Test that the csv file has the necessary headers for Canvas
HEADERS="Student","ID","SIS User ID","SIS Login ID","Section"
firstline=$(cut -d ',' -f 1,2,3,4,5 grades.csv | head -1)

if ! [ "$firstline" == "$HEADERS" ]; then
    exit 1
fi

# if ! python3 ${DATASCIENCE_TESTDIR}/datahub-base-notebook.py; then
#     exit 1
# fi

# # test protobuf
# protoc -I=$DATASCIENCE_TESTDIR --python_out=$DATASCIENCE_TESTDIR $DATASCIENCE_TESTDIR/addressbook.proto
# python3 $DATASCIENCE_TESTDIR/addressbook_pb2.py
