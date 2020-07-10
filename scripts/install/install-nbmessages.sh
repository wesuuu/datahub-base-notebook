#!/bin/sh -x

pip install nbmessages==0.0.9

jupyter nbextension install --symlink --sys-prefix --py nbmessages
jupyter nbextension enable --sys-prefix --py nbmessages
jupyter serverextension enable --sys-prefix --py nbmessages

jupyter nbextension disable --sys-prefix admin/main --section=tree
