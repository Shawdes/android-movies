package com.example.testandroid.ui.top_rated

import androidx.lifecycle.LiveData
import androidx.lifecycle.ViewModel
import com.example.testandroid.data.entities.MovieEntity
import com.example.testandroid.data.repository.MovieRepository
import com.example.testandroid.utils.Resource
import dagger.hilt.android.lifecycle.HiltViewModel
import javax.inject.Inject


@HiltViewModel
class Top_RatedViewModel @Inject constructor (private val repository: MovieRepository) : ViewModel() {

    val fetchTop_RatedMovies: LiveData<Resource<List<MovieEntity>>> = repository.getTop_RatedMovies()
}



