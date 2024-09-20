#!/bin/bash

current_path=$(pwd)
cd Start_game

function check_directory {

     if [[ $PWD == "${current_path}/Start_game/look_in_your_dog_bed" ]]; then
            echo "You found your ticket, you can have a breakfast now"
            
    fi 
    if [[ $PWD == "${current_path}/Start_game/look_in_your_pijamas" ]]; then
        echo "There is nothing here!"
        cd ${current_path}/Start_game
            
    fi 
    if [[ $PWD == "${current_path}/Start_game/look_under_your_bed" ]]; then
        echo "There is nothing here!"
        cd ${current_path}/Start_game
            
    fi 

    if [[ $PWD == "${current_path}/Start_game/look_in_your_dog_bed/fridge" ]]; then
        echo "Your fridge is empty! Search in another place."
        cd ${current_path}/Start_game/look_in_your_dog_bed
    fi  

    if [[ $PWD == "${current_path}/Start_game/look_in_your_dog_bed/KFC" ]]; then
        echo "You do not have enough time to go to cafe. Try another option."
        cd ${current_path}/Start_game/look_in_your_dog_bed

    fi
    
    if [[ $PWD == "${current_path}/Start_game/look_in_your_dog_bed/powercoders_breakfast" ]]; then
        echo "Good choice! Now you are at the train station. Catch the right train!"
        cd ${current_path}/Start_game/look_in_your_dog_bed/powercoders_breakfast
    fi 

    if [[ $PWD == "${current_path}/Start_game/look_in_your_dog_bed/powercoders_breakfast/train_A" ]]; then
        echo "You are in the wrong train, so change your train"
        cd ${current_path}/Start_game/look_in_your_dog_bed/powercoders_breakfast

    fi

    if [[ $PWD == "${current_path}/Start_game/look_in_your_dog_bed/powercoders_breakfast/train_C" ]]; then
        echo "You are in the wrong train, so change your train"
        cd ${current_path}/Start_game/look_in_your_dog_bed/powercoders_breakfast
    fi

    if [[ $PWD == "${current_path}/Start_game/look_in_your_dog_bed/powercoders_breakfast/train_B" ]]; then
        echo "Yeah, You are in the right 
        ____
        |DD|____T_
        |_ |_____|<
        @-@-@-oo\  to the POWERCODERS !"

    fi
       
}

function custom_cd {
    builtin cd "$@" && check_directory
}

alias cd='custom_cd'