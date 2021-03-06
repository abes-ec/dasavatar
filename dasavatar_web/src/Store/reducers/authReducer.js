const initState = {
  authError:null
}

const authReducer = (state = initState, action) => {
  switch(action.type){
    case 'LOGIN_ERROR':
      console.log("login failed ");
      return {
        ...state,
        authError:'Login failed'
      }
    case 'LOGIN_SUCCESS':
      console.log("login successful");
      return{
        ...state,
        authError:null,
      }
    case 'SIGNOUT_SUCCESS':
      console.log("sign out success");
      return state;
    case 'SIGNUP_SUCCESS':
      console.log("signup successful");
      return{
        ...state,
        authError:null 
      }
    case 'SIGNUP_ERROR':
      console.log("Signup failed ");
      return{
        ...state,
        authError:action.err.message
      }
      case 'PROFILE_UPDATE_SUCCESS':
      console.log("profile update successful");
      return{
        ...state,
        authError:null 
      }
    case 'PROFILE_UPDATE_ERROR':
      console.log("Profile update failed ");
      return{
        ...state,
        authError:action.err.message
      }
    default:
      return state;
  }
 
};

export default authReducer;