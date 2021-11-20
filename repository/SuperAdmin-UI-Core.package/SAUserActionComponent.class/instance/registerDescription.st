descriptions
registerDescription
  ^ SAContainer
    withAll:
      self titleDescription , self userNameDescription
        , self verifiedPasswordDescription