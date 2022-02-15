rendering
renderInputOn: html
  html dateInput5
    class: 'date-picker flatpickr-input';
    value: self string;
    callback: [ :value | self string: value ]