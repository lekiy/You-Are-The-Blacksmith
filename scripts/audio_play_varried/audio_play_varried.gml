///@discription
///@arg sound
///@arg priority
///@arg loops
///@arg variance

var snd = argument0;
audio_sound_pitch(snd, random_range(1-argument3, 1+argument3));
audio_play_sound(snd, argument1, argument2);