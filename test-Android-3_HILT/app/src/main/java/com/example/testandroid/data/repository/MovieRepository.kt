package com.example.testandroid.data.repository

import com.example.testandroid.data.local.MovieDao
import com.example.testandroid.data.model.MovieType
import com.example.testandroid.data.model.toMovieEntityList
import com.example.testandroid.data.remote.RemoteDataSource
import javax.inject.Inject
import com.example.testandroid.utils.performGetOperation

class MovieRepository @Inject constructor(
    private val localDataSource: MovieDao,
    private val remoteDataSource: RemoteDataSource) {


    fun getPopularMovies() = performGetOperation(
        databaseQuery = { localDataSource.getAllMovies(MovieType.POPULAR.value) },
        networkCall = { remoteDataSource.getPopularMovies() },
        saveCallResult = { localDataSource.insertAll(it.results.toMovieEntityList(MovieType.POPULAR.value)) }
    )

    fun getUpcomingMovies() = performGetOperation(
        databaseQuery = { localDataSource.getAllMovies(MovieType.UPCOMING.value) },
        networkCall = { remoteDataSource.getUpcomingMovies() },
        saveCallResult = { localDataSource.insertAll(it.results.toMovieEntityList(MovieType.UPCOMING.value)) }
    )

    fun getTop_RatedMovies() = performGetOperation(
        databaseQuery = { localDataSource.getAllMovies(MovieType.TOP_RATED.value) },
        networkCall = { remoteDataSource.getTop_RatedMovies() },
        saveCallResult = { localDataSource.insertAll(it.results.toMovieEntityList(MovieType.TOP_RATED.value)) }
    )
}