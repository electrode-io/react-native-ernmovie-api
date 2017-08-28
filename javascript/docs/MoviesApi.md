# react-native-ernmvoie-api.MoviesApi


Method | Type | Description
------------- | ------ | -------------
[**getMovieDetail**](MoviesApi.md#getMovieDetail) | request | MovieDetails
[**getTopRatedMovies**](MoviesApi.md#getTopRatedMovies) | request | List&amp;lt;Movie&amp;gt;

<a name="getMovieDetail"></a>
# **getMovieDetail**
> Object getMovieDetail(status)

MovieDetails

Returns the movie details for the requested movie.

### Example
```javascript
import { MoviesApi } from 'javascript';
    //Make a request
    //assuming async function wrapper
const requests = MoviesApi.requests();

    try {
    const data = await requests.getMovieDetail(status);
  console.log('API called successfully. Returned data: ', data);
   }catch(e){
      console.log('an error',e);
    }

```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**|  | 

### Return type

**Object**

<a name="getTopRatedMovies"></a>
# **getTopRatedMovies**
> [Movie] getTopRatedMovies()

List&lt;Movie&gt;

Returns IMDB top rated movies

### Example
```javascript
import { MoviesApi } from 'javascript';
    //Make a request
    //assuming async function wrapper
const requests = MoviesApi.requests();
    try {
    const data = await requests.getTopRatedMovies();
  console.log('API called successfully. Returned data: ', data);
   }catch(e){
      console.log('an error',e);
    }

```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[Movie]**](Movie.md)

