(function() {
  window.bendable = window.bendable || {}
  const HIDDEN_ATTR = 'hidden'
  const HIDDEN_CLASS = 'hidden'

  class Drawer {

    constructor(drawerSelector) {
      this.drawerSelector = drawerSelector
      this.drawer = $(this.drawerSelector)
      const opts = this.drawer.data()
      this.trigger = $(opts.triggerSelector)
      this.trigger.on('click', this.toggleDrawer.bind(this))
    }

    toggleDrawer() {
      const hidden = this.drawer[0].hasAttribute(HIDDEN_ATTR) || this.drawer.hasClass(HIDDEN_CLASS)
      if (this.timeout) {
        clearTimeout(this.timeout)
      }
      if ( hidden ) {
        this.drawer.removeAttr(HIDDEN_ATTR)
        this.timeout = setTimeout(function() {
          this.drawer.removeClass(HIDDEN_CLASS)
        }.bind(this), 0)
      } else {
        this.drawer.addClass(HIDDEN_CLASS)
        this.timeout = setTimeout(function() {
          this.drawer.attr(HIDDEN_ATTR, HIDDEN_ATTR)
        }.bind(this), 1500);
      }
    }
  }
  window.bendable.Drawer = Drawer
})()
