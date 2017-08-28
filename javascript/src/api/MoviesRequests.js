
export default class MoviesRequests {
    constructor(bridge) {
     this._bridge = bridge;
    }

        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerGetMovieDetailRequestHandler( handler) {
        this._bridge.registerRequestHandler("com.ernmvoie.ern.api.request.getMovieDetail", handler);
    }
        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerGetTopRatedMoviesRequestHandler( handler) {
        this._bridge.registerRequestHandler("com.ernmvoie.ern.api.request.getTopRatedMovies", handler);
    }

    //------------------------------------------------------------------------------------------------------------------------------------


    /**
      * MovieDetails
      * Returns the movie details for the requested movie.
      * @param  status 
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link Object }
      */

     getMovieDetail(status,timeout) {
                return this._bridge.sendRequest("com.ernmvoie.ern.api.request.getMovieDetail", { data:status, timeout });

    }

    /**
      * List&lt;Movie&gt;
      * Returns IMDB top rated movies
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link Array.<module:com.ernmvoie.ern.model/Movie> }
      */

     getTopRatedMovies(timeout) {
            return this._bridge.sendRequest("com.ernmvoie.ern.api.request.getTopRatedMovies", {timeout});

    }
}
