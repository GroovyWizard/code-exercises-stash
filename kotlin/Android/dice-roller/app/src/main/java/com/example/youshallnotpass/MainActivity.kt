package com.example.youshallnotpass

import android.os.Bundle
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.example.youshallnotpass.classes.Dice
import com.example.youshallnotpass.classes.ImageVisibilityManager


class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val rollButton: Button = findViewById(R.id.button)
        rollButton.setOnClickListener{
            var rollResult = Dice(20).roll()
            val resultTextView: TextView = findViewById(R.id.resultView)
            val gandalfImage: ImageView = findViewById(R.id.gandalfImage)

            resultTextView.text = rollResult.toString()

            ImageVisibilityManager().changeVisibilityByText(resultTextView.text.toString(), gandalfImage, "20")

        }
    }
}