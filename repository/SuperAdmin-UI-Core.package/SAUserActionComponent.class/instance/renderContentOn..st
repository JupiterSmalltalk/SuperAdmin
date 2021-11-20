rendering
renderContentOn: canvas
  | selector |
  self calculateAction.
  selector := ('render' , action capitalized , 'On:') asSymbol.
  canvas div
    class: 'login';
    with: [ 
          canvas div
            class: 'login__block';
            class: 'active';
            id: 'l-' , action;
            with: [ self perform: selector withArguments: {canvas} ] ]