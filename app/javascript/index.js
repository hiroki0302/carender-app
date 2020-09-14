// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

// const channels = require.context('.', true, /_channel\.js$/)
// channels.keys().forEach(channels)

const x = () => {

  // const plan = document.getElementById("day-plan")
  // console.log(schedule.plan);

  // function () {
  //   plan.textContent = plan ;
  // };
  const selectSchedules = document.querySelectorAll(".select-schedule")

  
  let num = 0
  

  selectSchedules.forEach(function (elem) {
    let scheduleId = document.getElementById(`schedule-${elem.id}`);

    // カーソルが乗ったら表示
    elem.addEventListener('mouseover', function(){
      if(num == 0){
        scheduleId.classList.remove("hide");
      }
    });

    // クリックしたらビューに表示
    elem.addEventListener('click', function(){

      if(num == 0){
        scheduleId.classList.remove("hide");
        num = elem.id
      }else if(num == elem.id){
        scheduleId.classList.add("hide");
        num = 0
      }else{
        scheduleId.classList.remove("hide");
        document.getElementById(`schedule-${num}`).classList.add("hide");
        num = elem.id
      }
      return
      
    });


    // カーソルが離れたら削除
    elem.addEventListener('mouseout', function(){
      if(num == 0){
        scheduleId.classList.add("hide");
      }
    });

  });

  
};

window.addEventListener("turbolinks:load", x);

