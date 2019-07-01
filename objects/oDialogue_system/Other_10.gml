/// @description Continues the dialogue
message = ds_queue_dequeue(dialogue);

if(is_undefined(message)) instance_destroy();
else current = message;