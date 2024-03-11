// called when the character gets KO'd

if instance_exists(mailbox) {
    mailbox.state = -1;
    mailbox.state_timer = 0;
}
mailbox_timer = 0;
blackbox_charges = max_blackboxes;
blackbox_timer = 0;