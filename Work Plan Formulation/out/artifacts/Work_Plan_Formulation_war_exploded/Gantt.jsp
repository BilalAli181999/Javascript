<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gantt Chart</title>
    <style>
        body {
            font-family: sans-serif;
            background: #ccc;
        }
        .container {
            width: 80%;
            margin: 0 auto;
        }
        /* custom class */
        .gantt .bar-milestone .bar {
            fill: tomato;
        }
    </style>
    <link rel="stylesheet" href="./frappe-gantt/dist/frappe-gantt.css" />
    <script src="./frappe-gantt/dist/frappe-gantt.js"></script>
</head>
<body>
<div class="container">
    <h2>Work Plan Formulation Gantt Chart</h2>
    <div class="gantt-target"></div>
</div>
<%
    String id="8210";
    String name="Bilal Ali";
    String start="2019-07-09";
    String end="2019-09-09";
    String dependencies="Task 4";

%>
<div>
    <input id="v1" style="visibility: hidden" value=<%=id%>>
    <input id="v2" style="visibility: hidden" value=<%=name%>>
    <input id="v3" style="visibility: hidden" value=<%=start%>>
    <input id="v4" style="visibility: hidden" value=<%=end%>>
    <input id="v5" style="visibility: hidden" value=<%=dependencies%>>
</div>

<script language="JavaScript">
    var tasks = [
        {
            start: '2018-11-03',
            end: '2018-11-06',
            name: 'First Task',
            id:'Task0' ,
            progress: 20
        },
        {
            start: '2018-10-03',
            end: '2018-10-06',
            name: 'Write new content',
            id: "Task 1",
            progress: 5,
            dependencies: 'Task 0'
        },
        {
            start: '2018-10-04',
            end: '2018-10-08',
            name: 'Apply new styles',
            id: "Task 2",
            progress: 10,
            dependencies: 'Task 1'
        },
        {
            start: '2018-10-08',
            end: '2018-10-09',
            name: 'Review',
            id: "Task 3",
            progress: 5,
            dependencies: 'Task 2'
        },
        {
            start: '2018-10-08',
            end: '2018-10-10',
            name: 'Deploy',
            id: "Task 4",
            progress: 0,
            dependencies: 'Task 2'
        },
        {
            start: '2019-10-11',
            end: '2019-10-9',
            name: 'Go Live!',
            id: "Task 5",
            progress: 0,
            dependencies: 'Task 4',
            custom_class: 'bar-milestone'
        },
        {
            start: '2019-01-05',
            end: '2019-10-12',
            name: 'Long term task 1',
            id: "Task 6",
            progress: 0
        },
        {
            start: '2019-07-09',
            end: '2019-10-12',
            name: 'Long Term Task 2',
            id: "Task 7",
            progress: 0,
            dependencies: "Task 4"
        }
    ]

   // var add=task.pop();




     //  add.id = document.getElementById("v1").value;
     //  add.name = document.getElementById("v2").value;
     //  add.start = document.getElementById("v3").value;
      // add.end = document.getElementById("v4").value;
      // add.dependencies = document.getElementById("v5").value;


       //tasks.push(add);


    var gantt_chart = new Gantt(".gantt-target", tasks, {
        on_click: function (task) {
            console.log(task);
        },
        on_date_change: function(task, start, end) {
            console.log(task, start, end);
        },
        on_progress_change: function(task, progress) {
            console.log(task, progress);
        },
        on_view_change: function(mode) {
            console.log(mode);
        },
        view_mode: 'Month',
        language: 'en'
    });
    console.log(gantt_chart);
</script>
</body>
</html>