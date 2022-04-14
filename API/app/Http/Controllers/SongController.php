<?php

namespace App\Http\Controllers;

use App\Models\Country;
use App\Models\Song;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class SongController extends Controller
{
    /**
     * List all the songs stored in our Database
     * 
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
     
        $songsQuery = Song::with(['genres', 'country']);

     
        if ($request->has('genre_id')) {
           
            $genreId = $request->input('genre_id');

           

            $songsQuery->whereHas('genres', function ($genreQuery) use ($genreId) {
                $genreQuery->where('id', '=', $genreId);
            });
        }

        if ($request->has('country_id')) {
            $songsQuery->where('country_id', '=', $request->input('country_id'));
        }

        if ($request->has('search')) {
        
            $search = $request->input('search');
            $songsQuery->where('title', 'LIKE', "%" . $search . "%");
         
        }

        if ($request->has('country_name')) {
           
            $countryName = $request->input('country_name');
            $songsQuery->whereHas('country', function ($countryQuery) use ($countryName) {
                $countryQuery->where('name', 'LIKE', '%' . $countryName . '%');
            });
        }

        $songs = $songsQuery->paginate();

        return response()->json($songs);
    }

    /**
     * Show a specific Song
     * 
     * @param int $id 
     * @return \Illuminate\Http\Response 
     */
    public function show(int $id)
    {
 
        $song = Song::find($id);
     
        $song->load(['genres', 'country']);
     

        return response()->json($song);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|min:3',
            'duration' => 'required|integer',
            'country_id' => 'required|exists:countries,id',
            'genre_ids' => 'array'
        ]);

        $userInput = $request->all();

        $song = Song::create($userInput);

        if ($request->has('country_id')) {
            $country = Country::findOrFail($request->input('country_id'));

            $song->country()->associate($country);
            $song->save();
        }

        if ($request->has('genre_ids')) {
            $genreIds = $request->input('genre_ids', []);

            $song->genres()->sync($genreIds);
        }

        $song->load(['genres', 'country']);

        return response()->json([
            'message' => 'Successfully created a song!',
            'data' => $song
        ]);
    }

    /**
     * Updates a specific Song with the input the user provides
     * 
     * @param int $id 
     * @param Request $request 
     * @return \Illuminate\Http\Response
     */
    public function update(int $id, Request $request)
    {
        $this->validate($request, [
            'title' => 'min:3',
            'duration' => 'integer',
            'country_id' => 'exists:countries,id',
            'genre_ids' => 'array'
        ]);

        $userInput = $request->all();
        $song = Song::find($id);

        // actuallly update the given song
        $success = $song->update($userInput);

        if (! $success) {
            return response()->json([
                'message' => 'Could not update!'
            ]);
        }

        if ($request->has('country_id')) {
            $country = Country::findOrFail($request->input('country_id'));

            $song->country()->associate($country);
            $song->save();
        }

        if ($request->has('genre_ids')) {
            $genreIds = $request->input('genre_ids', []);

            $song->genres()->sync($genreIds);
        }

        $song->load(['genres', 'country']);

        return response()->json([
            'message' => 'Successfully update the song!',
            'data' => $song
        ]);
    }

    /**
     * Delete a specific song
     * 
     * @param int $id 
     * @return \Illuminate\Http\Response
     */
    public function destroy(int $id)
    {
        $song = Song::find($id);
        $song->delete();

        return response()->json([
            'message' => 'Successfully deleted the song!'
        ]);
    }

    public function onlysixty()
    { 
        $feed = Song::where('release_year','<','1970')->get();

        $song = $feed;

        return response()->json($song);
    }

    public function onlyseventy()
    { 
        $feed = Song::where('release_year','>=','1970')->where('release_year','<','1980')->get();

        $song = $feed;

        return response()->json($song);
    }

    public function onlyeighty()
    { 
        $feed = Song::where('release_year','>=','1980')->where('release_year','<','1990')->get();

        $song = $feed;

        return response()->json($song);
    }

    public function onlyninty()
    { 
        $feed = Song::where('release_year','>=','1990')->where('release_year','<','2000')->get();

        $song = $feed;

        return response()->json($song);
    }
    public function onlytwenty()
    { 
        $feed = Song::where('release_year','>','1999')->get();

        $song = $feed;

        return response()->json($song);
    }
}
