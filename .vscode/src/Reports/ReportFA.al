report 50116 FADelete
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;
    Caption = 'Delete Fixed Asset';


    dataset
    {
        dataitem("Fixed Asset"; "Fixed Asset")
        {
            trigger OnAfterGetRecord()
            var
                FA: Record "Fixed Asset";
            begin
                if FA.Get("Fixed Asset"."No.") then
                    "Fixed Asset".DeleteAll();

            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }



    var
        myInt: Integer;
}