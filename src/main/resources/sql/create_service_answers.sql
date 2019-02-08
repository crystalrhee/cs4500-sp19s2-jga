create table service_answers (
   id integer not null auto_increment,
   choice_answer integer,
   max_range_answer integer,
   min_range_answer integer,
   true_false_answer bit,
   provider_id integer,
   service_question_id integer,
   primary key (id),
   foreign key (provider_id) references user (id),
   foreign key (service_question_id) references service_questions (id)
) engine=InnoDB