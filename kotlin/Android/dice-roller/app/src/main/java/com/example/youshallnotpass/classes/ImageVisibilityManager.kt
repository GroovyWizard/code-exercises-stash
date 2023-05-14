package com.example.youshallnotpass.classes

import android.view.View
import android.widget.ImageView

class ImageVisibilityManager {
    fun changeVisibilityByText(textToWatch: String, imageToChange: ImageView, expectedResult: String){

        if (textToWatch == expectedResult) {
            imageToChange.visibility = View.VISIBLE
        } else {
            imageToChange.visibility = View.INVISIBLE
        }
    }
}