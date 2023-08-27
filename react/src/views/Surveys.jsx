import React from "react";
import PageComponent from "../components/PageComponent";
import { useContextProvider } from "../ContextProvider";
import SurveyListItem from "../components/SurveyListItem";
import Tbutton from "../components/core/Tbutton";
import { PlusCircleIcon } from "@heroicons/react/24/outline";

const Surveys = () => {
    const { surveys } = useContextProvider();

    return (
        <PageComponent
            title={"Surveys"}
            button={
                <Tbutton color="green" to="/surveys/create">
                    <PlusCircleIcon className="h-6 w-6 mr-2" />
                    Create New
                </Tbutton>
            }
        >
            <div className="grid grid-cols-1 md:grid-cols-3 sm:grid-cols-2 gap-5">
                {surveys.map((survey) => (
                    <SurveyListItem survey={survey} key={survey.id} />
                ))}
            </div>
        </PageComponent>
    );
};

export default Surveys;
