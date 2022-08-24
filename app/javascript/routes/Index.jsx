
import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "../components/Home";

export default (
  <Router>
    <Routes>
      <Route path="/" exact element={<Home />} />
    </Routes>
  </Router>
);

// <Switch> didn't work => replaced with <Routes>
// <Route component={Home}> didn't work => replaced with <Route element={<Home />}>
