time repo sync --current-branch --no-tags --no-clone-bundle --force-sync --force-broken --detach $(repo manifest | egrep 'remote=' | egrep "<project" | awk '{print  $2 }' | awk -F'"' '{print $2}')
