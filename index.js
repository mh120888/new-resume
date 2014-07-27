$( document ).ready(function() {
  General.init();
});


var General = {
  init: function() {
    GeneralFunctions.init();
  }
}

var GeneralFunctions = (function() {

  function bindEvents() {
    $('div#sidebar div.item').on('mouseenter', showHoverState);
    $('div#sidebar div.item').on('mouseleave', hideHoverState);
    $('a#email').on('click', showEmailContent);
    $('a#home').on('click', showHomeContent);
    $('a#resume').on('click', showResumeContent);
    $('a.expand-details').on('click', showDuties);
  }

  function showDuties() {
    $(this).next('ul').slideToggle();
    return false;
  }

  function showHoverState() {
    $(this).addClass('hover');
  }

  function hideHoverState() {
    $(this).removeClass('hover');
  }

  function hideAllContent() {
    $('div.section').each(function() {
      $(this).addClass('hide');
    })
  }

  function showEmailContent() {
    hideAllContent();
    $('div#email-content').removeClass('hide');
  }

  function showHomeContent() {
    hideAllContent();
    $('div#home-content').removeClass('hide');
  }

  function showResumeContent() {
    hideAllContent();
    $('div#resume-content').removeClass('hide');
  }

  function _init() {
    bindEvents();
  }

  return {
    init: _init
  }
}());