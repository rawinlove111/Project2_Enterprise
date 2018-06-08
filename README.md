School Admission EAD Project*


A school admission web application for the term project Enterprise App Development.


How to Test: MySql database script is included. To test, you'll have to put some student information (either by registration or manually putting it there).

Access staff web - /StaffAdmin or login with  username "admin"  passeword"admin"

Access advisor web - /AdvisorAdmin login with  username "advisor"  password"advisor"


Dependencies included in project: 
    1.mysql-connector
    2.sqljdbc4-2.0

Goals:

    student registeration
    
    login and logout session
    
    user profile
    
    student - staff - advisor interactions. Student registers and wait for staff to process, check their information, etc.. Staff can reject or accept the student and include a remark such as "Missing document", or further instruction to the applying students. If accepted, the student is automatically assigned to an advisor. They will be emailed the contact info neccessary to reach their advisors.
    
    
    Simple Back-end consoles for Advisors and Staff
    
**Remarks
    core functionallities work fine however, there are no login-logout, or registeration interface for staff and advisor. Admin and advisor information must be mannually put inside the database, but they haven't been properly utilized anyways, and some part are hard-codded, but the important features are there like viewing details, accepting/rejecting, etc...Also, some there may be some missing features here and there, for example, deletion of students or profile modification, but there is a utility component that supports all kinds of database interactions, including deletion and modificiations.
    
    
    


