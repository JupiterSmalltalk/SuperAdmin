rendering
renderSearchOn: canvas
  canvas span
    class: 'search';
    with: [ 
          canvas div
            class: 'searchInner';
            with: [ 
                  canvas searchInput
                    class: 'search__text';
                    value: searchText;
                    placeholder: 'Search…';
                    onKeyPress:
                        (JSStream on: 'if(event.which=="13"){event.preventDefault()}');
                    script:
                        (canvas jQuery this autocomplete
                            autoFocus: true;
                            minLength: 2;
                            delay: 500;
                            onSearch:
                                (canvas jQuery ajax
                                    callback: [ :value | searchText := value ]
                                      json: (JSStream on: 'this.value');
                                    script: [ :script | 
                                          self report
                                            rowFilter: [ :row | 
                                              searchText isEmpty
                                                or: [ (row searchString findStringNoCase: searchText startingAt: 1) > 0 ] ].
                                          script
                                            <<
                                              (script jQuery id: self report ajaxId)
                                            html: [ :html | 
                                              html
                                                render:
                                                  (self report
                                                    batchPage: 1;
                                                    yourself) ] ])
                                    , (canvas javascript return: false)).
                  canvas fontAwesome
                    fontAwesomeLight;
                    icon: 'search';
                    class: 'search__helper'.
                  canvas fontAwesome
                    fontAwesomeLight;
                    icon: 'arrow-left';
                    class: 'search__reset';
                    attributeAt: 'data-sa-action' put: 'search-close' ] ]