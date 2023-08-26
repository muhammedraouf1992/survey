import Dashboard from "./views/Dashboard";
import Surveys from "./views/Surveys";
import Signup from "./views/Signup";
import Login from "./views/Login";
import { Navigate, createBrowserRouter } from "react-router-dom";
import GuestLayout from "./components/GuestLayout";
import DefaultLayout from "./components/DefaultLayout";
const router = createBrowserRouter([
    {
        path: "/",
        element: <DefaultLayout />,
        children: [
            {
                path: "/dashboard",
                element: <Navigate to="/" />,
            },
            {
                path: "/",
                element: <Dashboard />,
            },
            {
                path: "/surveys",
                element: <Surveys />,
            },
        ],
    },
    {
        path: "/",
        element: <GuestLayout />,
        children: [
            {
                path: "/signup",
                element: <Signup />,
            },
            {
                path: "/login",
                element: <Login />,
            },
        ],
    },
]);
export default router;
