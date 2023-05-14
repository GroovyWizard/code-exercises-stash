package com.example.youshallnotpass.classes

class Dice (private val diceSides: Int) {
    fun roll(): Int{
        val randomNumber = (1..diceSides).random()

        return randomNumber

    }
}