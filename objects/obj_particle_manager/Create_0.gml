/// @description  Initializes variables for the particle systems.
// Creates a reference to the particle manager.
global.ps_manager = id;
// Creates a particle system.
ps = part_system_create();
// The number of particle types.
part_count = 19;
//Initializes first particle type and its parameters.

global.pt[0, 0] = part_type_create();//This is the type : With this global you can call an unique script for all objects..
part_type_life(global.pt[0, 0], 60, 60);
part_type_sprite(global.pt[0,0], spr_pieces, false, false, false);
part_type_color1(global.pt[0,0], c_aqua);
part_type_alpha1(global.pt[0,0], 0.75);
part_type_size(global.pt[0, 0], 2, 2, -0.1, 0);
global.pt[0, 1] = 1; 
// This the numbers of particles 
// Initializes second particle type.

global.pt[1, 0] = part_type_create(); //This is the type : With this global you can call an unique script for all objects..
part_type_life(global.pt[1,0], 10, 15);
part_type_shape(global.pt[1, 0], pt_shape_spark);
part_type_color2(global.pt[1, 0], c_purple, c_fuchsia);
part_type_alpha2(global.pt[1, 0], 1, 0);
part_type_size(global.pt[1, 0], 0.5, 1.5, 0, 0);
part_type_speed(global.pt[1,0], 2.5, 15, 0, 0);
part_type_direction(global.pt[1,0], 0, 360, 0, 0);
global.pt[1, 1] = 50;// This the numbers of particles 

//Initializes third particle type.
global.pt[2, 0] = part_type_create();
part_type_life(global.pt[2,0], 10, 40);
part_type_shape(global.pt[2, 0], pt_shape_star);
part_type_color3(global.pt[2, 0], c_yellow, c_red, c_red);
part_type_alpha3(global.pt[2, 0], 0, 1, 0);
part_type_speed(global.pt[2,0], 10, 20, 0, 0);
part_type_direction(global.pt[2,0], 45, 135, 0, 0);
part_type_orientation(global.pt[2,0], 0, 360, 0, 0, false);
part_type_gravity(global.pt[2,0], 2, 270);
global.pt[2, 1] = 10;
 
//Initializes fourth particle type.

global.pt[3, 0] = part_type_create();
part_type_life(global.pt[3,0], 10, 15);
part_type_color_mix(global.pt[3,0], c_green, c_lime);
part_type_alpha2(global.pt[3,0], 1, 0);
part_type_blend(global.pt[3,0], true);
part_type_shape(global.pt[3,0], pt_shape_line);
part_type_speed(global.pt[3,0], 15, 15, -1, 0);
part_type_direction(global.pt[3,0], 0, 360, 0, 0);
part_type_orientation(global.pt[3,0], 0, 0, 0, 0, true);
global.pt[3, 1] = 10;

// Initializes fifth particle type.

global.pt[4, 0] = part_type_create();
part_type_life(global.pt[4,0], 15, 45);
part_type_shape(global.pt[4,0], pt_shape_circle);
part_type_scale(global.pt[4,0], 1, 0.5);
part_type_color3(global.pt[4,0], c_aqua, c_blue, c_aqua);
part_type_alpha3(global.pt[4,0], 1, 0.75, 0);
part_type_speed(global.pt[4,0], 4, 15, -0.015, 1);
part_type_direction(global.pt[4,0], -135, -45,0,0);
part_type_orientation(global.pt[4,0],45, 135, 15, 0, false);
part_type_gravity(global.pt[4,0], 1, 90);
global.pt[4, 1] = 10;

// Initializes sixth particle type.

global.pt[5, 0] = part_type_create();
part_type_life(global.pt[5,0], 15, 30);
part_type_shape(global.pt[5, 0], pt_shape_disk);
part_type_color3(global.pt[4,0], c_yellow, c_lime, c_yellow);
part_type_alpha2(global.pt[5, 0], 1, 0);
part_type_size(global.pt[5,0], 0.25, 0.35, 0, 1);
part_type_direction(global.pt[5,0], 0, 360, 12.5, 0);
part_type_speed(global.pt[5, 0], 2, 4, -0.05, 0);
global.pt[5, 1] = 10;


//Fenix iceball

global.pt[6,0] = part_type_create();
part_type_sprite(global.pt[6,0],spr_fenix_iceball,0,0,0);
part_type_size(global.pt[6,0],0.05,0.010,0,1);
part_type_scale(global.pt[6,0],0.5,0.5);
part_type_alpha3(global.pt[6,0],0.50,1,0.10);
part_type_speed(global.pt[6,0],1,2,0.10,1);
part_type_direction(global.pt[6,0],0,359,0,1);
part_type_gravity(global.pt[6,0],0,270);
part_type_orientation(global.pt[6,0],0,359,1,0,1);
part_type_blend(global.pt[6,0],1);
part_type_life(global.pt[6,0],10,20);
global.pt[6, 1] = 10;


// Piece_travel 1
global.pt[7,0] =part_type_create();
part_type_shape(global.pt[7,0],pt_shape_ring);
part_type_size(global.pt[7,0],0.45,0.55,0,0);
part_type_scale(global.pt[7,0],3.16,1.25);
part_type_color3(global.pt[7,0],8388863,16711680,5112690);
part_type_alpha3(global.pt[7,0],0.94,0.31,0.08);
part_type_speed(global.pt[7,0],1.56,4.39,-0.19,0);
part_type_direction(global.pt[7,0],0,359,-1,0);
part_type_gravity(global.pt[7,0],0,270);
part_type_orientation(global.pt[7,0],0,0,0,0,1);
part_type_blend(global.pt[7,0],1);
part_type_life(global.pt[7,0],41,65);
global.pt[7, 1] = 5;

// Piece_travel 2
global.pt[8,0] = part_type_create();
part_type_shape(global.pt[8,0],pt_shape_smoke);
part_type_size(global.pt[8,0],0.80,1.80,-0.17,1);
part_type_scale(global.pt[8,0],0.20,0.20);
part_type_color3(global.pt[8,0],7322880,9456168,9233281);
part_type_alpha3(global.pt[8,0],0.98,0.77,0.00);
part_type_speed(global.pt[8,0],3.58,5.83,0.07,7);
part_type_direction(global.pt[8,0],52,332,-1,7);
part_type_gravity(global.pt[8,0],0,270);
part_type_orientation(global.pt[8,0],71,312,0.40,0,1);
part_type_blend(global.pt[8,0],1);
part_type_life(global.pt[8,0],10,15);
global.pt[8,1] = 5;

//Piece_travel 3
global.pt[9,0] = part_type_create();
part_type_shape(global.pt[9,0],pt_shape_ring);
part_type_size(global.pt[9,0],0.45,0.55,0,0);
part_type_scale(global.pt[9,0],0.50,0.50);
part_type_color3(global.pt[9,0],8388863,16711680,5112690);
part_type_alpha3(global.pt[9,0],0.94,0.31,0.08);
part_type_speed(global.pt[9,0],1.56,4.39,-0.19,0);
part_type_direction(global.pt[9,0],0,359,-1,0);
part_type_gravity(global.pt[9,0],0,270);
part_type_orientation(global.pt[9,0],0,0,0,0,1);
part_type_blend(global.pt[9,0],1);
part_type_life(global.pt[9,0],41,65);
global.pt[9,1] =5;

// Piece_travel 4
global.pt[10,0] = part_type_create();
part_type_shape(global.pt[10,0],pt_shape_spark);
part_type_size(global.pt[10,0],0.20,0.41,0,0);
part_type_scale(global.pt[10,0],2.38,1);
part_type_color3(global.pt[10,0],3490879,2700286,5331980);
part_type_alpha3(global.pt[10,0],0.90,0.36,0.05);
part_type_speed(global.pt[10,0],1.01,1.70,0.07,0);
part_type_direction(global.pt[10,0],0,359,0,0);
part_type_gravity(global.pt[10,0],0,270);
part_type_orientation(global.pt[10,0],0,0,0,0,1);
part_type_blend(global.pt[10,0],1);
part_type_life(global.pt[10,0],15,30);
global.pt[10,1] =5;

//piece_travel 5
global.pt[11,0] = part_type_create();
part_type_shape(global.pt[11,0],pt_shape_flare);
part_type_size(global.pt[11,0],0.10,0.30,-0.17,1);
part_type_scale(global.pt[11,0],0.60,0.30);
part_type_color3(global.pt[11,0],65280,65535,32768);
part_type_alpha3(global.pt[11,0],0.81,0.35,0.06);
part_type_speed(global.pt[11,0],3.49,6.42,-0.01,7);
part_type_direction(global.pt[11,0],52,332,0,7);
part_type_gravity(global.pt[11,0],0,270);
part_type_orientation(global.pt[11,0],71,312,0.1,0,1);
part_type_blend(global.pt[11,0],1);
part_type_life(global.pt[11,0],10,15);
global.pt[11,1]=5;

/// Piece_travel 6
global.pt[12,0] = part_type_create();
part_type_shape(global.pt[12,0],pt_shape_flare);
part_type_size(global.pt[12,0],0.10,0.36,-0.17,1);
part_type_scale(global.pt[12,0],0.50,1.80);
part_type_color3(global.pt[12,0],16711680,16776960,16744576);
part_type_alpha3(global.pt[12,0],0.61,0.55,0.02);
part_type_speed(global.pt[12,0],1.20,2.57,-0.17,7);
part_type_direction(global.pt[12,0],52,332,0,7);
part_type_gravity(global.pt[12,0],0,270);
part_type_orientation(global.pt[12,0],71,312,0.40,0,1);
part_type_blend(global.pt[12,0],1);
part_type_life(global.pt[12,0],47,86);
global.pt[12,1] = 5;

// Magic
global.pt[13,0] = part_type_create();
part_type_shape(global.pt[13,0],pt_shape_pixel);
part_type_size(global.pt[13,0],0.10,0.31,-0.17,1);
part_type_scale(global.pt[13,0],1,2.54);
part_type_color3(global.pt[13,0],4227327,65535,65535);
part_type_alpha3(global.pt[13,0],0.52,0.70,0.03);
part_type_speed(global.pt[13,0],2.29,3.47,-0.12,7);
part_type_direction(global.pt[13,0],52,332,0,7);
part_type_gravity(global.pt[13,0],0,270);
part_type_orientation(global.pt[13,0],71,312,0.40,0,1);
part_type_blend(global.pt[13,0],1);
part_type_life(global.pt[13,0],30,60);
global.pt[13,1] = 5;

///Life
global.pt[14,0] = part_type_create();
part_type_shape(global.pt[14,0],pt_shape_flare);
part_type_size(global.pt[14,0],0.10,0.10,0,0);
part_type_scale(global.pt[14,0],1.50,1.20);
part_type_color3(global.pt[14,0],8421631,255,8421631);
part_type_alpha3(global.pt[14,0],0.50,1,0.20);
part_type_speed(global.pt[14,0],1,1,0,0);
part_type_direction(global.pt[14,0],0,359,0,0);
part_type_gravity(global.pt[14,0],0.20,90);
part_type_orientation(global.pt[14,0],0,0,0,0,1);
part_type_blend(global.pt[14,0],1);
part_type_life(global.pt[14,0],20,40);
global.pt[14,1] = 5;

// Arrow
global.pt[15,0] = part_type_create();
part_type_shape(global.pt[15,0],pt_shape_disk);
part_type_size(global.pt[15,0],0.38,0.78,0,0);
part_type_scale(global.pt[15,0],0.20,1);
part_type_color3(global.pt[15,0],8454143,65408,4227072);
part_type_alpha3(global.pt[15,0],0.63,0.56,0.01);
part_type_speed(global.pt[15,0],4.65,5.93,0.19,0);
part_type_direction(global.pt[15,0],0,359,0,0);
part_type_gravity(global.pt[15,0],0,90);
part_type_orientation(global.pt[15,0],0,0,0,0,1);
part_type_blend(global.pt[15,0],1);
part_type_life(global.pt[15,0],15,25);
global.pt[15,1] = 5;

///Gun
global.pt[16,0] = part_type_create();
part_type_shape(global.pt[16,0],pt_shape_smoke);
part_type_size(global.pt[16,0],0.33,0.63,0,0);
part_type_scale(global.pt[16,0],2,0.75);
part_type_color3(global.pt[16,0],1929864,5915682,3277883);
part_type_alpha3(global.pt[16,0],1.00,0.38,0.02);
part_type_speed(global.pt[16,0],3.69,7.63,-0.13,0);
part_type_direction(global.pt[16,0],0,359,1,0);
part_type_gravity(global.pt[16,0],0,90);
part_type_orientation(global.pt[16,0],0,0,0,0,0);
part_type_blend(global.pt[16,0],1);
part_type_life(global.pt[16,0],54,58);
global.pt[16,1] = 5;


//Fenix dead
global.pt[17,0] = part_type_create();
part_type_life(global.pt[17,0], 60, 60);
part_type_sprite(global.pt[17,0], spr_fenix_attack, true, false, false);
part_type_color1(global.pt[17,0], c_aqua);
part_type_alpha1(global.pt[17,0], 0.75);
part_type_size(global.pt[17,0], 2, 2, -0.1, 0.2);
global.pt[17,1] = 1;

// life recovery
global.pt[18,0] = part_type_create();
part_type_life(global.pt[18,0], 30,30 );
part_type_sprite(global.pt[18,0], spr_mask_life, false, false, false);
part_type_color3(global.pt[18,0], c_red,c_fuchsia,c_red);
part_type_alpha2(global.pt[18,0], 0.75,0.20);
part_type_size(global.pt[18,0], 0.4, 0.4, -0.01, 1);
global.pt[18,1] = 1;


