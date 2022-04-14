<?php

namespace App\Http\Controllers;
use App\Models\Roku;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class RokuController extends Controller
{
    /**
     * List all the songs stored in our Database
     * 
     * @param Request $request
     * @return \Illuminate\Http\Response
     */
     public function showAllMovie(Request $request)
    {
       
        $rokuSqlQuery = Roku::all();

        $roku = $rokuSqlQuery->load(['languages']);
        if ($request->has('language_id')) {
            // modify our query to filter down to that specific language_id
            $languageId = $request->input('language_id');

         

            $getFeed->whereHas('languages', function ($languageQuery) use ($languageId) {
                $languageQuery->where('id', '=', $languageId);
            });
        }


        if ($request->has('search')) {
           
            $search = $request->input('search');
            $getFeed->where('title', 'LIKE', "%" . $search . "%");
           
        }

       
            
        return response()->json($roku);

        
    }

    /**
     * Show a specific Song
     * 
     * @param int $id 
     * @return \Illuminate\Http\Response 
     */
    public function show(int $id)
    {
        
        $rokumovie = Roku::query()->find($id);
       
        $rokumovie = Roku::find($id);

        return response()->json($rokumovie);
    }

    public function onlysixty()
    { 
        $feed = Roku::where('release_year','<','1970')->get();

        $roku = $feed->load(['languages']);;

        return response()->json($roku);
    }

    public function onlyseventy()
    { 
        $feed = Roku::where('release_year','>=','1970')->where('release_year','<','1980')->get();

        $roku = $feed->load(['languages']);;

        return response()->json($roku);
    }

    public function onlyeighty()
    { 
        $feed = Roku::where('release_year','>=','1980')->where('release_year','<','1990')->get();

        $roku = $feed->load(['languages']);;

        return response()->json($roku);
    }

    public function onlyninty()
    { 
        $feed = Roku::where('release_year','>=','1990')->where('release_year','<','2000')->get();

        $roku = $feed->load(['languages']);;

        return response()->json($roku);
    }
    public function onlytwenty()
    { 
        $feed = Roku::where('release_year','>','1999')->get();

        $roku = $feed->load(['languages']);;

        return response()->json($roku);
    }

    // Show only Roku Kids Video
    public function rokuforkids()
    { 
        $getFeed = Roku::with(['languages']);
        $getFeed->where('age_rating', '<', '17');
      
        $rokuvideos = $getFeed->paginate();

        return response()->json($rokuvideos);
    }

    public function rokuforadults()
    { 
        $getFeed = Roku::with(['languages']);
        $getFeed->where('age_rating', '>', 'adult');
      
        $rokuvideos = $getFeed->paginate();

        return response()->json($rokuvideos);
    }

   
    /**
     * Store a new song in the database
     * 
     * @param \Illuminate\Http\Request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required|min:3',
            'release_year' => 'required',
            'runtime' => 'required',
        ]);

        $userInput = $request->all();

     
        $roku = Roku::create($userInput);


        if ($request->has('language_ids')) {
            $languageIds = $request->input('language_ids', []);

            $roku->languages()->sync($languageIds);
        }

        $roku->load(['languages']);

        return response()->json([
            'message' => 'Successfully created a Music!',
            'data' => $roku
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
            'age_rating' => 'min:1',
        ]);

        $userInput = $request->all();
        $roku = Roku::find($id);

        // actuallly update the given song
        $success = $roku->update($userInput);

        if (! $success) {
            return response()->json([
                'message' => 'Could not update!'
            ]);
        }

        if ($request->has('language_ids')) {
            $languageIds = $request->input('language_ids', []);

            $roku->languages()->sync($languageIds);
        }

        $roku->load(['languages']);

        return response()->json([
            'message' => 'Successfully update the Roku Video!',
            'data' => $roku
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
        $roku = Roku::find($id);
        $roku->delete();

        return response()->json([
            'message' => 'Successfully deleted the Roku Video!'
        ]);
    }
}

  