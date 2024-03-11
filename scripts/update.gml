//update
if state == PS_CROUCH && state_timer > 4 { // Crouch invisibility
    draw_indicator = false;
    with(asset_get("new_dust_fx_obj")) {x = -300; y = -300; dust_length=0;}
}
// Countdown
if mailbox_timer > 0 && !instance_exists(mailbox) {mailbox_timer--;}
if ("blackbox_timer" in self) && blackbox_timer > 0 { blackbox_timer--;}


// Regenerate charges
if ("blackbox_charges" in self) && (blackbox_charges < max_blackboxes) {
	if (max_blackboxes > 1) {
    	if (blackbox_timer == blackbox_interval*(max_blackboxes-blackbox_charges-1)){ //if timer ends
 	    	blackbox_charges++; //create a charge
 		}
   
    	// Correct if cooldown is too low. If the blackbox timer is less than required to meet max blackboxes, increase timer
		if (blackbox_timer < blackbox_interval*(max_blackboxes-blackbox_charges-1)) {
        	blackbox_timer += blackbox_interval;
    	}
	}
	else {
		if (blackbox_timer == 0 && !instance_exists(blackbox)){ //if timer ends
 	    	blackbox_charges++; //create a charge
 		}
	}
}

// Check for empty spaces in blackbox array
// if ("blackboxes" in self) && array_length(blackboxes) > 0 {
//     for (i = 0; i < array_length(blackboxes); i++;) {  //Start at first index and oldest turret
//         if blackboxes[i] == noone && i < array_length(blackboxes) {     // If current position empty
//             if array_length(blackboxes) == 1 {         // If array only has one empty slot
//                 blackboxes = [];   // Reset array
//                 break;
//             }
//             if array_length(blackboxes) > 1 {      // If array has many blackboxes
//                 if i == 0 || i == (array_length(blackboxes) - 1)  {      // If on either end of the array
//                     if i == 0 {         // If first in array and oldest blackbox
//                         blackboxes = array_slice(blackboxes, 1, array_length(blackboxes)-1); // Shorten and cut out first index.
//                         i--;    //Restart next iteration at the same position which will have the new value
//                     }
//                     if i == (array_length(blackboxes) - 1) {     // If last in array and most recent blackbox
//                         blackboxes = array_slice(blackboxes, 0, i);   // Shorten and cut out last index.
//                     }
//                 }
//                 else {      // If in the middle of the array
//                     if blackboxes[i+1] != noone && (i+1) < array_length(blackboxes) {    // If there is a next value in the array
//                         blackboxes[i] = blackboxes[i+1];
//                         blackboxes[i+1] = noone;
//                         i--;    //Restart next iteration at the same position which will have the new value
//                     }
//                 }
//             }
//         }
//     }    
// }

// Recycle. If maximum blackboxes are placed, destroy the oldest blackbox
// if ("blackboxes" in self) && array_length(blackboxes) > max_blackboxes {
//     for (k = 0; k < array_length(blackboxes); k++;) {
//         if k < (array_length(blackboxes) - max_blackboxes) {
//             var cur_tur = blackboxes[k];
//             if cur_tur != noone {
//                 cur_tur.state = 2;     // Delete blackbox
//                 cur_tur.state_timer = 0;
//             }
//             else {
//                 // blackboxes = array_slice(blackboxes, 1, array_length(blackboxes) - 1);     // Cut first blackbox out of the array
//                 // break;
//             }
//         }
//     }
// }
