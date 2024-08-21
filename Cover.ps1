﻿param(
    [string]$Job,
    [string]$Company
)

$date = (Get-Date).ToString("dddd, MMMM dd, yyyy")

"$date

Dear $Company,

I am writing to express my interest in the $Job position at $Company. With an Associate of Applied Science in
Software Development and Data Analytics from Kilgore College, along with extensive experience in programming,
scripting, and operations management, I am confident in my ability to contribute effectively to your team.

At Kilgore College, I am responsible for developing, maintaining, and improving the ERP system, creating custom
interfaces, and data integration solutions to streamline our business processes. My proficiency in programming
languages such as PowerShell, Bash, Golang, and Python has been crucial in delivering these custom solutions.

As an Operations Manager at Prestigious Building Services, I ensured operations were conducted in a cost-effective
manner, managed inventory, and improved profitability through financial analysis. My experience as a Treasury
Management ACH Operator at Verabank further developed my skills in relationship management and business
development, where I worked closely with third-party vendors and analyzed detailed Automated Clearing House files.

Additionally, my role as an Office Manager at Upshur Forest Products allowed me to support company operations by
maintaining office systems and supervising staff, ensuring office efficiency through effective planning and
implementation of office procedures.

I am certified as a Microsoft Excel Expert and Microsoft Access Expert, which complements my technical skill set and
enhances my ability to manage data effectively. My comprehensive background in both technical and managerial roles
equips me with a unique perspective and a versatile skill set that I believe will be an asset to $Company.

I am excited about the opportunity to bring my background in software development, data analytics, and operations
management to $Company. I am eager to discuss how my experience and skills align with the goals of your team.

Thank you for considering my application.

Sincerely,
Jorge Cisneros
cisneros.jorge.a@gmail.com
(310) 340-9148" > $HOME\OneDrive\Documents\Resume\cover_letter.txt
