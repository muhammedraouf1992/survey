import React from "react";
import { Navigate, Outlet } from "react-router-dom";
import { useContextProvider } from "../ContextProvider";

const GuestLayout = () => {
    const { token } = useContextProvider();
    if (token) {
        return <Navigate to="/dashboard" />;
    }
    return (
        <div>
            <h1>GuestLayout</h1>
            <Outlet />
        </div>
    );
};

export default GuestLayout;
