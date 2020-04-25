function() {
  return {
    getCurrentDate: function(){ return Date() },
    getCurrentMonth: function(){ var TodayDate = new Date(); return TodayDate.getMonth() + 1 }
  }
}