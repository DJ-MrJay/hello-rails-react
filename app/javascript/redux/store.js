import { configureStore } from '@reduxjs/toolkit';
import logger from 'redux-logger';
import greetingsReducer from './greetingsSlice';

export default configureStore({
  reducer: {
    greeting: greetingsReducer,
  },
  middleware: [logger],
});
