import React from "react";
import {
    ArrowTopRightOnSquareIcon,
    PencilIcon,
    TrashIcon,
} from "@heroicons/react/24/outline";

import Tbutton from "./core/Tbutton";

const SurveyListItem = ({ survey }) => {
    const onDeleteClick = (ev) => {
        console.log("delete");
    };
    return (
        <div className="flex flex-col py-4 px-6 shadow-md bg-white hover:bg-gray-50 h-[470px]">
            <img
                src={survey.image_url}
                alt={survey.title}
                className="w-full h-48 object-cover"
            />
            <h4 className="mt-4 text-lg font-bold">{survey.title}</h4>
            <div
                dangerouslySetInnerHTML={{ __html: survey.description }}
                className="overflow-hidden flex-1"
            ></div>

            <div className="flex justify-between items-center mt-3">
                <Tbutton to={`/surveys/${survey.id}`}>
                    <PencilIcon className="w-5 h-5 mr-2 " />
                    Edit
                </Tbutton>
                <div className="flex items-center">
                    <Tbutton href={`/view/survey/${survey.slug}`} circle link>
                        <ArrowTopRightOnSquareIcon className="w-5 h-5" />
                    </Tbutton>

                    {survey.id && (
                        <Tbutton
                            onClick={(ev) => onDeleteClick(survey.id)}
                            circle
                            link
                            color="red"
                        >
                            <TrashIcon className="w-5 h-5" />
                        </Tbutton>
                    )}
                </div>
            </div>
        </div>
    );
};

export default SurveyListItem;
