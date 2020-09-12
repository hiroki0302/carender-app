// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

const x = () => {

  // const plan = document.getElementById("day-plan")
  // console.log(schedule.plan);

  // function () {
  //   plan.textContent = plan ;
  // };
  const selectSchedules = document.querySelectorAll(".select-schedule")

  let locked = false
  num = 1
  

  selectSchedules.forEach(function (elem) {
    let scheduleId = document.getElementById(`schedule-${elem.id}`);

    // カーソルが乗ったら表示
    elem.addEventListener('mouseover', function(){
      if(!locked){
        scheduleId.classList.remove("hide");
      }
    });

    // クリックしたらビューに表示
    elem.addEventListener('click', function(){
      
      console.log(num)
      if(num % 2 !== 0){
        locked = !locked
        scheduleId.classList.remove("hide");
        num += 1
      }else{
        locked = !locked
        scheduleId.classList.add("hide");
        num = 1
      }
      return
      
      // if(locked){
      //   scheduleId.classList.add("hide");
      // }else{
      //   scheduleId.classList.remove("hide");
      // }
      // locked = !locked
      // if(!locked){
      //   scheduleId.classList.add("hide");
      // }else{
      //   scheduleId.classList.remove("hide");
      // }
      // locked = !locked


    });


    // カーソルが離れたら削除
    elem.addEventListener('mouseout', function(){
      if(!locked){
        scheduleId.classList.add("hide");
      }
    });

  });

  
};

window.addEventListener("turbolinks:load", x);

