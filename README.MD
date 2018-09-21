This is a fun side project to play with Siri Shortcuts and Check Point API. I'll add more shortcuts for more functions as I build them so check back or follow the repository.

## How to Use ##
- Requires iOS 12 and the Shortcuts app from the app store.

- Install the Shortcut here to the shortcut application
  - Edit the SSH settings for your managment station
  - Edit the script text to support your Gateway (You will need to edit the 127.0.0.1 after the -d if this runs on a MDS environment and also edit the name of the Gateway)
    - mgmt_cli -r true run-script -d 127.0.0.1 script-name "Status Check" script "sh /home/admin/stats.sh" targets.1 drax --format json | jq --raw-output '.tasks[0]["task-details"][0].statusDescription'
- add the stats.sh script to your gateway

Then ask SIRI to run and enjoy some stats on your gateway! This reads Memory Utilization, CPU Utilization, Disk Space, and FW current/peak connections.
