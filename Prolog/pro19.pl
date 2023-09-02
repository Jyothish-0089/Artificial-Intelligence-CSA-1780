teaches_subject(teacher1, math, code101).
teaches_subject(teacher2, science, code102).
teaches_subject(teacher3, history, code103).
teaches_subject(teacher4, english, code104).

enrolls(student1, code101).
enrolls(student1, code102).
enrolls(student2, code103).
enrolls(student3, code101).
enrolls(student3, code103).
enrolls(student4, code104).

student_subject_code(Student, Subject, Code) :-
    enrolls(Student, Code),
    teaches_subject(_, Subject, Code).

teacher_subject_code(Teacher, Subject, Code) :-
    teaches_subject(Teacher, Subject, Code).

% Example queries
% Find the subjects and codes that student1 is enrolled in
% ?- student_subject_code(student1, Subject, Code).
%
% Find the teachers who teach a specific subject and code
% ?- teacher_subject_code(Teacher, math, Code).
