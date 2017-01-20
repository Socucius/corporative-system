var projects = new Vue({
  el: '#projects',
  data: {
    projects: []
  },
  ready: function() {
    var that;
    that = this;
    $.ajax({
      url: '/projects.json',
      success: function(res) {
        that.employees = res;
      }
    });
  }
});
