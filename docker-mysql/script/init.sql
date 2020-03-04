
create database spring_cloud_demo;

use spring_cloud_demo;


create table gateway_client(
                               client_id varchar(12) primary key,
                               client_secret varchar(255) not null,
                               auth_pattern_str varchar(255),
                               gmt_create timestamp not null default now(),
                               gmt_modify timestamp not null default now(),
                               status tinyint not null default 0 comment '0正常，1禁用',
                               `describe` varchar(255)
                           );

insert into gateway_client(client_id, client_secret, auth_pattern_str, `describe`) values(
                                                                                          'ryan',
                                                                                          '$2a$10$906ku6EMkcuWae40Yg5OzeajCO/0HsfjYZsiXFQaYtV7qhhaalO3e',
                                                                                          '/actuator/health,/USER-SERVICE/**',
                                                                                          'test'
                                                                                         );

insert into gateway_client(client_id, client_secret, auth_pattern_str, `describe`) values(
                                                                                             'test',
                                                                                             '$2a$10$906ku6EMkcuWae40Yg5OzeajCO/0HsfjYZsiXFQaYtV7qhhaalO3e',
                                                                                             '/actuator/health,/USER-SERVICE/**',
                                                                                             'test'
                                                                                         );


