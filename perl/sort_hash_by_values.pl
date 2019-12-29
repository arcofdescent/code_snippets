
use Data::Dumper;

my $hashref = {
          'TowerData-Residential_Customer_Profile.pdf' => 18,
          'Content_Consultant_User_Guide.pdf' => 1,
          'TowerData_Case_Study-Citrix.pdf' => 1,
          'TowerData-Web_Services.pdf' => 2,
          'TowerData_Case_Study-Strouds.pdf' => 1,
          'database_hygiene-agency.com.pdf' => 2,
          'TowerData_Whitepaper_Growing_Your_List_with_Email_Append.pdf' =>
14,
          'MxCorrect-Examples.pdf' => 8,
          'TowerData_B2B_Email_Append.pdf' => 2,
          'TowerData-Business_Customer_Profile.pdf' => 16,
          'TowerData-Reverse_Email_Append.pdf' => 1,
          'Email_Update-Sample_Report.pdf' => 4,
          'Email_Append-Why_TowerData.pdf' => 1,
          'TowerData-NCOA.pdf' => 6,
          'TowerData_Case_Study-HotIdeas.pdf' => 2,
          'TowerData_Web_Services_Implementation_Guide.pdf' => 1
        };

my @sorted_keys = sort { $hashref->{$b} <=> $hashref->{$a} } keys %{$hashref};
print Dumper \@sorted_keys;

