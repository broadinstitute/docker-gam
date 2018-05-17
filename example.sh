#!/bin/sh

# Add a Google Group to a calendar resource and make sure it's visible
echo "Adding Test calendar to all operations group members..."
./gam group operations@example.com add calendar example.com_Py3cWxCH9xRNtFeaJdchu4NjWG@group.calendar.google.com hidden false

# Add a Google Group to a calendar resource, but also default it to being
# selected, visible, and with a specific color.
echo "Adding Test2 calendar to all admin group members..."
./gam group admin@example.com add calendar example.com_Zv7FWrf83jzuyS7G43tBT65r3r@group.calendar.google.com selected true hidden false colorindex 16
