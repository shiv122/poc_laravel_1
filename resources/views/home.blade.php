<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        .g-y {
            width: max-content;
            display: flex;
        }

        .g-x {
            border: 1px solid #d8d6de;
            /* margin: 1px; */
            box-shadow: 0 4px 24px 0 rgb(34 41 47 / 10%);
        }

        #grid {
            box-shadow: 0 4px 24px 0 rgb(34 41 47 / 10%);
        }

        span.inner-grid {
            width: 50px;
            display: block;
            height: 50px;
            transition: all 0.2s ease-in-out;
            /* background-color: rgb(233, 166, 166); */
            border-radius: 3px;
            /* margin: 3px; */
        }

        span.inner-grid:hover {
            background-color: rgb(189, 224, 65);
        }

        .start {
            background-color: green;
        }

        .path {}

        .end {
            background-color: red;
        }

        .red {
            background-color: #91C483;
        }

        .black {
            background-color: #19282F;
        }

        .wall {
            background-color: rgb(0, 0, 0);
        }

        .start-node {
            animation: glow-start 0.5s infinite;
        }

        .end-node {
            animation: glow-end 0.5s infinite;
        }

        @keyframes glow-start {
            0% {
                background-color: #BAFFB4;
            }

            100% {
                background-color: #000B49;
            }
        }

        @keyframes glow-end {
            0% {
                background-color: #461111;
            }

            100% {
                background-color: #EC255A;
            }
        }

        .have-car {
            background-image: url('image/car.png');
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
            background-color: #DFDFDE !important;
        }

        .main-container {
            width: 100%;
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

    </style>

    <style>
        .card {
            border: none;
            margin-bottom: 2rem;
            box-shadow: 0 4px 24px 0 rgb(34 41 47 / 10%);
            transition: all 0.3s ease-in-out, background 0s, color 0s, border-color 0s;
        }

    </style>
</head>

<body>
    <div class="main-container">

        <div class="row">
            <div id="grid" class="col-12">
                <span class="g-y" v-for="(y, i) in grid">
                    <span class="g-x" v-for="(x, j) in y">
                        <span v-on:click="setVal()" :data-x="x['pos_x']" :data-y="x['pos_y']"
                            :data-pos="x['pos_x']+'-'+x['pos_y']" :data-modal="x['modal']"
                            :data-parked_by="x['parked_by']" :data-parked_at="x['parked_at']"
                            :data-chassis_no="x['chassis_no']"
                            v-bind:class="['inner-grid',(x['for']=='road')?'black ':'red ',(x['is_occupied']==1)?'have-car':'' ]">

                        </span>
                    </span>
                </span>
            </div>
        </div>
    </div>
    <div class="row p-5">
        <div class="col-4 text-center btn-parent">
            <div class="card">
                <div class="card-body mx-1 my-5">
                    <h5 class="card-title">Total Vehicle Parked</h5>
                    <strong> {{ $occupied }}</strong>
                </div>
            </div>
        </div>
        <div class="col-4 text-center btn-parent">
            <div class="card">
                <div class="card-body mx-1 my-5">
                    <h5 class="card-title">Vehicle Detected By Drone</h5>
                    <strong> {{ $occupied }}</strong>
                    <p class="text-success">Record Matched Successfully</p>
                </div>
            </div>
        </div>
        <div class="col-4 text-center btn-parent">
            <div class="card">
                <div class="card-body mx-1 my-5">
                    <h5 class="card-title">Empty Space</h5>
                    <strong> {{ $total - $occupied }}</strong>
                </div>
            </div>
        </div>

        <div class="col-4 text-center btn-parent">
            <div class="card">
                <div class="card-body mx-1 my-5">
                    <h5 class="card-title">Vehicle Available for servicing</h5>
                    <strong> 10</strong>
                </div>
            </div>
        </div>
        <div class="col-4 text-center btn-parent">
            <div class="card">
                <div class="card-body mx-1 my-5">
                    <h5 class="card-title">Vehicle Available for disptching</h5>
                    <strong> 10</strong>
                </div>
            </div>
        </div>
        <div class="col-4 text-center btn-parent">
            <div class="card">
                <div class="card-body mx-1 my-5">
                    <h5 class="card-title">Vehicle Available for trailer onbording</h5>
                    <strong> 10</strong>
                </div>
            </div>
        </div>
        <div class="col-4 text-center btn-parent">
            <div class="card">
                <div class="card-body mx-1 my-5">
                    <h5 class="card-title">Total Security</h5>
                    <strong> 10</strong>
                </div>
            </div>
        </div>
        <div class="col-4 text-center btn-parent">
            <div class="card">
                <div class="card-body mx-1 my-5">
                    <h5 class="card-title">Total Driver</h5>
                    <strong> 10</strong>
                </div>
            </div>
        </div>
        <div class="col-4 text-center btn-parent">
            <div class="card">
                <div class="card-body mx-1 my-5">
                    <h5 class="card-title">Total Inspection Managers</h5>
                    <strong> 10</strong>
                </div>
            </div>
        </div>

    </div>


    <script src="https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.26.1/axios.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        var mode = "start";
        const grid = @json($grid);



        var example2 = new Vue({
            el: "#grid",
            data: {
                parentMessage: "Parent",
                grid: grid
            },
            methods: {
                setVal: function() {
                    // console.log();
                    var modal = event.target.getAttribute('data-modal')
                    var parked_by = event.target.getAttribute('data-parked_by')
                    var parked_at = event.target.getAttribute('data-parked_at')
                    var chassis_no = event.target.getAttribute('data-chassis_no')

                    if (event.target.classList.contains('have-car')) {
                        Swal.fire({
                            title: "Parking Data",
                            showCloseButton: true,
                            html: `Modal : ${modal} <br> Parked By : ${parked_by} <br> Parked At : ${parked_at} <br> Chassis No : ${chassis_no}`
                        });
                    }

                },
            },
        });
        var button = new Vue({
            el: "#buttons",
            methods: {
                setMode: function(type) {},
            },
            mounted() {

            }
        });
    </script>
</body>

</html>
