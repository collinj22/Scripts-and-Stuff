<?php
$jsonstreams =  file_get_contents('http://localhost:8181/plexpy/api/v2?apikey=a69199bcac633c847c86b9e8c351105b&cmd=get_activity');
$jsonmovies =  file_get_contents('http://localhost:8181/plexpy/api/v2?apikey=a69199bcac633c847c86b9e8c351105b&cmd=get_libraries');
$streams = json_decode($jsonstreams);
$movies = json_decode($jsonmovies);
echo $streams->response->data->stream_count; // Number of streams
echo $movies->response->data->count; // Number of Movies
?>
