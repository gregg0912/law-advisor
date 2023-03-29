<?php

namespace App\Http\Controllers;

use App\Http\Resources\TasksResource;
use App\Http\Requests\StoreTaskRequest;
use App\Http\Requests\ReorderTaskRequest;
use App\Models\Task;
use App\Models\User;
use App\Traits\HttpResponses;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TasksController extends Controller
{
    use HttpResponses;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return TasksResource::collection(
            Task::where('user_id', Auth::user()->id)->get()
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreTaskRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreTaskRequest $request)
    {
        $request->validated($request->all());

        $task = Task::create([
            'user_id' => Auth::user()->id,
            'name' => $request->name,
            'description' => $request->description,
            'priority' => $request->priority,
            'status' => $request->status,
            'position' => 0
        ]);

        $task_id = $task->id;
        Task::where('id', $task_id)
            ->update(['position' => $task_id]);

        $task = Task::find($task_id);

        return new TasksResource($task);
    }

    /**
     * Display the specified resource.
     *
     * @param  Task $task
     * @return \Illuminate\Http\Response
     */
    public function show(Task $task)
    {
        return new TasksResource($task);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Task $task)
    {
        if (Auth::user()->id !== $task->user_id)
        {
            return $this->error('', 'You are not authorized to make this request', 403);
        }

        $task->update($request->all());

        return new TasksResource($task);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  Task $task
     * @return \Illuminate\Http\Response
     */
    public function destroy(Task $task)
    {
        return $this->isNotAuthorized($task) ? $this->isNotAuthorized($task) : response(null, 204);
    }

    /**
     * Reorder the specified task
     *
     * @param Task $task
     */
    public function reorder(ReorderTaskRequest $request, Task $task)
    {
        if (Auth::user()->id !== $task->user_id)
        {
            return $this->error('', 'You are not authorized to make this request', 403);
        }

        $current_position = $task->position;
        $task->update([
            'position' => $request->position,
            'status' => $request->status,
            'priority' => $request->priority
        ]);

        Task::where('position', '>=', $request->position)
            ->where('id', '!=', $task->id)
            ->increment('position');

        return new TasksResource($task);
    }

    private function isNotAuthorized(Task $task)
    {
        if (Auth::user()->id !== $task->user_id)
        {
            return $this->error('', 'You are not authorized to make this request', 403);
        }
    }
}
