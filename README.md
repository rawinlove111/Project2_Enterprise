Bangkok Hospital Project*

How to Test: MySql database script is included. To test, you'll have to put some patient information (either by registration or manually putting it there).

Access staff web - /StaffAdmin or login with  username "admin"  passeword"admin"

Access doctor web - /AdvisorAdmin login with  username "advisor"  password"advisor"


Dependencies included in project: 
    1.mysql-connector
    2.sqljdbc4-2.0

Goals:

    patient registeration
    
    login and logout session
    
    patient profile
    
    paitent - staff - advisor interactions. Patient registers and wait for staff to process, check their information, etc.. Staff can reject or accept the patient and include a remark such as "Missing document", or further instruction to the applying patient. If accepted, the patient is automatically assigned to an doctor. They will be emailed the contact info neccessary to reach their doctors.
    
    
    Simple Back-end consoles for Doctor and Staff
    
**Remarks
    core functionallities work fine however, there are no login-logout, or registeration interface for staff and doctor. Admin and doctor information must be mannually put inside the database, but they haven't been properly utilized anyways, and some part are hard-codded, but the important features are there like viewing details, accepting/rejecting, etc...Also, some there may be some missing features here and there, for example, deletion of patient or profile modification, but there is a utility component that supports all kinds of database interactions, including deletion and modificiations.
    
    
    


