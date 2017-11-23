svn status --no-ignore | grep '^[IMA?!]' | cut -c 9- | while IFS= read -r f; do rm -rf "$f"; done
svn up

