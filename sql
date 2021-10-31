create table t_user_info
(
    id         bigint auto_increment
        primary key,
    name       varchar(50)       null,
    sex        tinyint default 0 null comment '0-男 1-女 ',
    identityNo varchar(30)       null comment '证件号'
);


create table t_user_account
(
    id           bigint auto_increment
        primary key,
    user_info_id bigint            not null,
    account_no   varchar(50)       null comment '账号',
    password     varchar(100)      null comment '密码',
    state        tinyint default 0 null comment '账号状态:0-正常 1-冻结 99-删除'
);


create table t_product_type
(
    id    bigint auto_increment
        primary key,
    name  varchar(100)      null,
    state tinyint default 0 null
);

create table t_product_info
(
    id    bigint auto_increment
        primary key,
    name  varchar(100) null,
    type  bigint       null comment '类型id',
    state tinyint      null comment '状态 0-正常 1-冻结 99-删除',
    price decimal      null
);

create table t_order
(
    id         bigint auto_increment
        primary key,
    user_id    bigint            null,
    product_id bigint            null,
    state      tinyint default 0 null
);
