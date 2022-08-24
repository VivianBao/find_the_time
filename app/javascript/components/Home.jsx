import React from "react";
import { Link } from "react-router-dom";

export default function Home() {
  return(
    <div>
      <h1>This is Home.jsx</h1>
      <Link
        to="/huddles"
        className="btn btn-lg custom-button"
        role="button"
      >
        Huddles
      </Link>
      <Link
        to="/schedules"
        className="btn btn-lg custom-button"
        role="button"
      >
        Schedule
      </Link>
      <Link
        to="/friends"
        className="btn btn-lg custom-button"
        role="button"
      >
        Friends
      </Link>
    </div>
  )
};
