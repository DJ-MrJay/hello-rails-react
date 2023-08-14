import { createAsyncThunk, createSlice } from '@reduxjs/toolkit';

const url = 'http://localhost:3000/api/random_greeting';

export const fetchGreeting = createAsyncThunk('fetch_greeting', async () => {
  const res = await fetch(url);
  const data = await res.json();
  return data;
});

const initialState = [];

const greetingsSlice = createSlice({
  name: 'greeting',
  initialState,
  reducers: {},
  extraReducers: (builder) => {
    builder
      .addCase(fetchGreeting.fulfilled, (state, action) => {
        state.push(action.payload.greeting); // Access nested greeting field
      });
  },
});

export default greetingsSlice.reducer;
