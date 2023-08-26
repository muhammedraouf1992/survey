import { createContext, useContext, useState } from "react";

const StateContext = createContext();
export const ContextProvider = ({ children }) => {
    const [user, setUser] = useState({
        name: "Tom Cook",
        email: "tom@example.com",
        imageUrl:
            "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80",
    });
    const [token, setToken] = useState(123);
    return (
        <StateContext.Provider
            value={{
                user,
                token,
                setUser,
                setToken,
            }}
        >
            {children}
        </StateContext.Provider>
    );
};
export const useContextProvider = () => useContext(StateContext);
