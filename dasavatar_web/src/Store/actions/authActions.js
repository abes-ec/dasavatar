export const signIn = (credentials) => {
    return (dispatch, getState, {getFirebase}) => {
      const firebase = getFirebase();
      
      firebase.auth().signInWithEmailAndPassword(
        credentials.email,
        credentials.password
      ).then(() => {
        dispatch({ type: 'LOGIN_SUCCESS' });
      }).catch((err) => {
        dispatch({ type: 'LOGIN_ERROR', err });
      });
  
    }
  }
  
  export const signOut = () => {
    return (dispatch, getState, {getFirebase}) => {
      const firebase = getFirebase();
  
      firebase.auth().signOut().then(() => {
        dispatch({ type: 'SIGNOUT_SUCCESS' })
      });
    }
  }
  
  export const signUp = (newUser) => {
    return (dispatch, getState, {getFirebase, getFirestore}) => {
      const firebase = getFirebase();
      const firestore = getFirestore();
      const location= JSON.parse(window.localStorage.getItem('location'));
      firebase.auth().createUserWithEmailAndPassword(
        newUser.email, 
        newUser.password,
      ).then(resp => {
        return firestore.collection('user_details').doc(resp.user.uid).set({
          name: newUser.name ,
          email:newUser.email,
          createdAt:new Date().toDateString(),
          deviceToken:"",
          dob:'',
          imgUrl:'',
          phoneNumber:newUser.phoneNumber,
          uid:resp.user.uid,
          longitude:location.longitude,
          latitude:location.latitude
        });
      }).then(() => {
        dispatch({ type: 'SIGNUP_SUCCESS' });
      }).catch((err) => {
        dispatch({ type: 'SIGNUP_ERROR', err});
      });
    }
  }

  export const profileUpdate = (user) => {
    return (dispatch, getState, {getFirebase, getFirestore}) => {
      const firestore = getFirestore();
        return firestore.collection('user_details').doc(user.uid).set({
          ...user,
      }).then(() => {
        dispatch({ type: 'PROFILE_UPDATE_SUCCESS' });
      }).catch((err) => {
        dispatch({ type: 'PROFILE_UPDATE_ERROR', err});
      });
    }
  }