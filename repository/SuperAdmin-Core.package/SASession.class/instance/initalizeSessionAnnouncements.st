initialisation
initalizeSessionAnnouncements
  self on: SALogin do: [ :ann | self loginUser: ann user ] for: self.
  self on: SALogout do: [ :ann | self logoutUser: ann user ] for: self.
  self on: SALock do: [ :ann | self lockUser: ann user ] for: self.
  self on: SAUnlock do: [ :ann | self unlockUser: ann user ] for: self