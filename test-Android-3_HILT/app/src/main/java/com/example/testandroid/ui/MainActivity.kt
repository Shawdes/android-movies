package com.example.testandroid.ui
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import com.example.testandroid.R
import com.example.testandroid.ui.popular.PopularFragment
import com.example.testandroid.ui.top_rated.Top_RatedFragment
import com.example.testandroid.ui.upcoming.UpcomingFragment
import com.google.android.material.bottomnavigation.BottomNavigationView
import dagger.hilt.android.AndroidEntryPoint
@AndroidEntryPoint


class MainActivity : AppCompatActivity() {




    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        var PopularFragment = PopularFragment()
        var Top_RatedFragment = Top_RatedFragment()
        var UpcomingFragment = UpcomingFragment()


        BottomNavigationView.OnNavigationItemSelectedListener{
            when(it.itemId){
                R.id.PopularFragment -> {
                    setCurrentFragment( PopularFragment)
                    true
                }
                R.id.top_RatedFragment -> {
                    setCurrentFragment(Top_RatedFragment)
                    true
                }
                R.id.upcomingFragment -> {
                    setCurrentFragment(UpcomingFragment)
                    true
                }
                else -> {false}
            }
        }


    }
    private fun setCurrentFragment(fragment:Fragment){
        supportFragmentManager.beginTransaction().apply {
            replace(R.id.containerview, fragment)
            commit()
        }
    }


}