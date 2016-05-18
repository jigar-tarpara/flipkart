--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: adminpanel_add; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_add (
    id integer NOT NULL,
    prod_id integer NOT NULL
);


ALTER TABLE public.adminpanel_add OWNER TO postgres;

--
-- Name: adminpanel_add_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_add_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_add_id_seq OWNER TO postgres;

--
-- Name: adminpanel_add_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_add_id_seq OWNED BY adminpanel_add.id;


--
-- Name: adminpanel_alphasubcat; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_alphasubcat (
    a_id integer NOT NULL,
    as_name character varying(100),
    as_id_id integer NOT NULL
);


ALTER TABLE public.adminpanel_alphasubcat OWNER TO postgres;

--
-- Name: adminpanel_alphasubcat_a_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_alphasubcat_a_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_alphasubcat_a_id_seq OWNER TO postgres;

--
-- Name: adminpanel_alphasubcat_a_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_alphasubcat_a_id_seq OWNED BY adminpanel_alphasubcat.a_id;


--
-- Name: adminpanel_cart; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_cart (
    cart_id integer NOT NULL,
    op_id_id integer NOT NULL,
    ou_id_id integer NOT NULL,
    qty integer NOT NULL
);


ALTER TABLE public.adminpanel_cart OWNER TO postgres;

--
-- Name: adminpanel_cart_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_cart_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_cart_cart_id_seq OWNER TO postgres;

--
-- Name: adminpanel_cart_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_cart_cart_id_seq OWNED BY adminpanel_cart.cart_id;


--
-- Name: adminpanel_categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_categories (
    c_id integer NOT NULL,
    c_name character varying(100)
);


ALTER TABLE public.adminpanel_categories OWNER TO postgres;

--
-- Name: adminpanel_categories_c_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_categories_c_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_categories_c_id_seq OWNER TO postgres;

--
-- Name: adminpanel_categories_c_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_categories_c_id_seq OWNED BY adminpanel_categories.c_id;


--
-- Name: adminpanel_home_page_slider; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_home_page_slider (
    id integer NOT NULL,
    slider integer NOT NULL,
    photo character varying(100) NOT NULL,
    alpha_id integer NOT NULL,
    cat_id integer NOT NULL,
    sub_id integer NOT NULL
);


ALTER TABLE public.adminpanel_home_page_slider OWNER TO postgres;

--
-- Name: adminpanel_home_page_slider_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_home_page_slider_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_home_page_slider_id_seq OWNER TO postgres;

--
-- Name: adminpanel_home_page_slider_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_home_page_slider_id_seq OWNED BY adminpanel_home_page_slider.id;


--
-- Name: adminpanel_imagee; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_imagee (
    p_id integer NOT NULL,
    photo character varying(100) NOT NULL,
    pp_id_id integer NOT NULL
);


ALTER TABLE public.adminpanel_imagee OWNER TO postgres;

--
-- Name: adminpanel_imagee_p_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_imagee_p_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_imagee_p_id_seq OWNER TO postgres;

--
-- Name: adminpanel_imagee_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_imagee_p_id_seq OWNED BY adminpanel_imagee.p_id;


--
-- Name: adminpanel_metadetails; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_metadetails (
    m_id integer NOT NULL,
    meta_tag character varying(100),
    meta_detail character varying(100),
    mp_id_id integer NOT NULL
);


ALTER TABLE public.adminpanel_metadetails OWNER TO postgres;

--
-- Name: adminpanel_metadetails_m_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_metadetails_m_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_metadetails_m_id_seq OWNER TO postgres;

--
-- Name: adminpanel_metadetails_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_metadetails_m_id_seq OWNED BY adminpanel_metadetails.m_id;


--
-- Name: adminpanel_order; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_order (
    o_id integer NOT NULL,
    op_id_id integer NOT NULL,
    ou_id_id integer NOT NULL,
    qty integer NOT NULL
);


ALTER TABLE public.adminpanel_order OWNER TO postgres;

--
-- Name: adminpanel_order_o_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_order_o_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_order_o_id_seq OWNER TO postgres;

--
-- Name: adminpanel_order_o_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_order_o_id_seq OWNED BY adminpanel_order.o_id;


--
-- Name: adminpanel_order_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_order_user (
    o_user_id integer NOT NULL,
    total integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.adminpanel_order_user OWNER TO postgres;

--
-- Name: adminpanel_order_user_o_order_id; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_order_user_o_order_id (
    id integer NOT NULL,
    order_user_id integer NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.adminpanel_order_user_o_order_id OWNER TO postgres;

--
-- Name: adminpanel_order_user_o_order_id_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_order_user_o_order_id_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_order_user_o_order_id_id_seq OWNER TO postgres;

--
-- Name: adminpanel_order_user_o_order_id_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_order_user_o_order_id_id_seq OWNED BY adminpanel_order_user_o_order_id.id;


--
-- Name: adminpanel_order_user_o_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_order_user_o_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_order_user_o_user_id_seq OWNER TO postgres;

--
-- Name: adminpanel_order_user_o_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_order_user_o_user_id_seq OWNED BY adminpanel_order_user.o_user_id;


--
-- Name: adminpanel_pro_display; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_pro_display (
    id integer NOT NULL,
    prod_id integer NOT NULL,
    subcat_id integer NOT NULL,
    photo character varying(100) NOT NULL
);


ALTER TABLE public.adminpanel_pro_display OWNER TO postgres;

--
-- Name: adminpanel_pro_display_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_pro_display_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_pro_display_id_seq OWNER TO postgres;

--
-- Name: adminpanel_pro_display_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_pro_display_id_seq OWNED BY adminpanel_pro_display.id;


--
-- Name: adminpanel_product; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_product (
    p_id integer NOT NULL,
    p_name character varying(100),
    price integer NOT NULL,
    ps_id_id integer NOT NULL,
    photo character varying(100) NOT NULL,
    p_discription character varying(400),
    photo2 character varying(100) NOT NULL
);


ALTER TABLE public.adminpanel_product OWNER TO postgres;

--
-- Name: adminpanel_product_p_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_product_p_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_product_p_id_seq OWNER TO postgres;

--
-- Name: adminpanel_product_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_product_p_id_seq OWNED BY adminpanel_product.p_id;


--
-- Name: adminpanel_subcategories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_subcategories (
    s_id integer NOT NULL,
    s_name character varying(100),
    sc_id_id integer NOT NULL
);


ALTER TABLE public.adminpanel_subcategories OWNER TO postgres;

--
-- Name: adminpanel_subcategories_s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_subcategories_s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_subcategories_s_id_seq OWNER TO postgres;

--
-- Name: adminpanel_subcategories_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_subcategories_s_id_seq OWNED BY adminpanel_subcategories.s_id;


--
-- Name: adminpanel_user_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_user_log (
    log_id integer NOT NULL,
    count smallint NOT NULL,
    produ_id integer NOT NULL,
    CONSTRAINT adminpanel_user_log_count_check CHECK ((count >= 0))
);


ALTER TABLE public.adminpanel_user_log OWNER TO postgres;

--
-- Name: adminpanel_user_log_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_user_log_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_user_log_log_id_seq OWNER TO postgres;

--
-- Name: adminpanel_user_log_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_user_log_log_id_seq OWNED BY adminpanel_user_log.log_id;


--
-- Name: adminpanel_user_log_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_user_log_user (
    id integer NOT NULL,
    user_log_id integer NOT NULL,
    userac_id integer NOT NULL
);


ALTER TABLE public.adminpanel_user_log_user OWNER TO postgres;

--
-- Name: adminpanel_user_log_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_user_log_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_user_log_user_id_seq OWNER TO postgres;

--
-- Name: adminpanel_user_log_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_user_log_user_id_seq OWNED BY adminpanel_user_log_user.id;


--
-- Name: adminpanel_userac; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_userac (
    u_id integer NOT NULL,
    user_name character varying(100) NOT NULL,
    user_password character varying(100),
    user_email character varying(100) NOT NULL,
    user_surname character varying(100) NOT NULL,
    user_b_address character varying(500),
    user_s_address character varying(500),
    user_m_number integer
);


ALTER TABLE public.adminpanel_userac OWNER TO postgres;

--
-- Name: adminpanel_userac_u_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_userac_u_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_userac_u_id_seq OWNER TO postgres;

--
-- Name: adminpanel_userac_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_userac_u_id_seq OWNED BY adminpanel_userac.u_id;


--
-- Name: adminpanel_wishlist; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE adminpanel_wishlist (
    wish_id integer NOT NULL,
    qty integer NOT NULL,
    op_id_id integer NOT NULL,
    ou_id_id integer NOT NULL
);


ALTER TABLE public.adminpanel_wishlist OWNER TO postgres;

--
-- Name: adminpanel_wishlist_wish_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adminpanel_wishlist_wish_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adminpanel_wishlist_wish_id_seq OWNER TO postgres;

--
-- Name: adminpanel_wishlist_wish_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adminpanel_wishlist_wish_id_seq OWNED BY adminpanel_wishlist.wish_id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_add ALTER COLUMN id SET DEFAULT nextval('adminpanel_add_id_seq'::regclass);


--
-- Name: a_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_alphasubcat ALTER COLUMN a_id SET DEFAULT nextval('adminpanel_alphasubcat_a_id_seq'::regclass);


--
-- Name: cart_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_cart ALTER COLUMN cart_id SET DEFAULT nextval('adminpanel_cart_cart_id_seq'::regclass);


--
-- Name: c_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_categories ALTER COLUMN c_id SET DEFAULT nextval('adminpanel_categories_c_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_home_page_slider ALTER COLUMN id SET DEFAULT nextval('adminpanel_home_page_slider_id_seq'::regclass);


--
-- Name: p_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_imagee ALTER COLUMN p_id SET DEFAULT nextval('adminpanel_imagee_p_id_seq'::regclass);


--
-- Name: m_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_metadetails ALTER COLUMN m_id SET DEFAULT nextval('adminpanel_metadetails_m_id_seq'::regclass);


--
-- Name: o_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_order ALTER COLUMN o_id SET DEFAULT nextval('adminpanel_order_o_id_seq'::regclass);


--
-- Name: o_user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_order_user ALTER COLUMN o_user_id SET DEFAULT nextval('adminpanel_order_user_o_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_order_user_o_order_id ALTER COLUMN id SET DEFAULT nextval('adminpanel_order_user_o_order_id_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_pro_display ALTER COLUMN id SET DEFAULT nextval('adminpanel_pro_display_id_seq'::regclass);


--
-- Name: p_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_product ALTER COLUMN p_id SET DEFAULT nextval('adminpanel_product_p_id_seq'::regclass);


--
-- Name: s_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_subcategories ALTER COLUMN s_id SET DEFAULT nextval('adminpanel_subcategories_s_id_seq'::regclass);


--
-- Name: log_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_user_log ALTER COLUMN log_id SET DEFAULT nextval('adminpanel_user_log_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_user_log_user ALTER COLUMN id SET DEFAULT nextval('adminpanel_user_log_user_id_seq'::regclass);


--
-- Name: u_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_userac ALTER COLUMN u_id SET DEFAULT nextval('adminpanel_userac_u_id_seq'::regclass);


--
-- Name: wish_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_wishlist ALTER COLUMN wish_id SET DEFAULT nextval('adminpanel_wishlist_wish_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: adminpanel_add; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_add VALUES (1, 5);
INSERT INTO adminpanel_add VALUES (2, 2);
INSERT INTO adminpanel_add VALUES (3, 9);
INSERT INTO adminpanel_add VALUES (4, 2);


--
-- Name: adminpanel_add_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_add_id_seq', 4, true);


--
-- Data for Name: adminpanel_alphasubcat; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_alphasubcat VALUES (5, 'New Realeases', 30);
INSERT INTO adminpanel_alphasubcat VALUES (6, 'Entrance Exam', 30);
INSERT INTO adminpanel_alphasubcat VALUES (7, 'BestSellers', 30);
INSERT INTO adminpanel_alphasubcat VALUES (11, 'Hollywood', 31);
INSERT INTO adminpanel_alphasubcat VALUES (12, 'Bollywood', 31);
INSERT INTO adminpanel_alphasubcat VALUES (13, 'Kids and Educational', 31);
INSERT INTO adminpanel_alphasubcat VALUES (14, 'International', 32);
INSERT INTO adminpanel_alphasubcat VALUES (15, 'Bollywood', 32);
INSERT INTO adminpanel_alphasubcat VALUES (16, 'New Realese', 32);
INSERT INTO adminpanel_alphasubcat VALUES (17, 'Pre Order', 32);
INSERT INTO adminpanel_alphasubcat VALUES (18, 'PC', 34);
INSERT INTO adminpanel_alphasubcat VALUES (19, 'PSP3', 34);
INSERT INTO adminpanel_alphasubcat VALUES (20, 'PSP4', 34);
INSERT INTO adminpanel_alphasubcat VALUES (21, 'XBox 360', 34);
INSERT INTO adminpanel_alphasubcat VALUES (22, 'Gamining Console', 34);
INSERT INTO adminpanel_alphasubcat VALUES (23, 'Pens', 35);
INSERT INTO adminpanel_alphasubcat VALUES (25, 'Key Chains', 35);
INSERT INTO adminpanel_alphasubcat VALUES (26, 'Calculator', 35);
INSERT INTO adminpanel_alphasubcat VALUES (27, 'Exam', 36);
INSERT INTO adminpanel_alphasubcat VALUES (29, 'Wall Lamps', 29);
INSERT INTO adminpanel_alphasubcat VALUES (30, 'Table Lamps', 29);
INSERT INTO adminpanel_alphasubcat VALUES (31, 'Paintings', 28);
INSERT INTO adminpanel_alphasubcat VALUES (32, 'Wall Decals', 28);
INSERT INTO adminpanel_alphasubcat VALUES (33, 'Wall Sheleves', 28);
INSERT INTO adminpanel_alphasubcat VALUES (34, 'Clocks', 28);
INSERT INTO adminpanel_alphasubcat VALUES (36, 'Beds', 27);
INSERT INTO adminpanel_alphasubcat VALUES (37, 'Dining tables', 27);
INSERT INTO adminpanel_alphasubcat VALUES (38, 'TV cabinets', 27);
INSERT INTO adminpanel_alphasubcat VALUES (39, 'Shoe Racks', 27);
INSERT INTO adminpanel_alphasubcat VALUES (40, 'Spring Summer Collection', 26);
INSERT INTO adminpanel_alphasubcat VALUES (41, 'Cookware', 25);
INSERT INTO adminpanel_alphasubcat VALUES (43, 'Storage', 25);
INSERT INTO adminpanel_alphasubcat VALUES (44, 'Story Book', 24);
INSERT INTO adminpanel_alphasubcat VALUES (45, 'Boys Footwear', 23);
INSERT INTO adminpanel_alphasubcat VALUES (46, 'Girls Footwear', 16);
INSERT INTO adminpanel_alphasubcat VALUES (47, 'Baby Footwear', 23);
INSERT INTO adminpanel_alphasubcat VALUES (48, 'School Bags', 22);
INSERT INTO adminpanel_alphasubcat VALUES (49, 'Water Bottles', 22);
INSERT INTO adminpanel_alphasubcat VALUES (50, 'Luch Boxes', 22);
INSERT INTO adminpanel_alphasubcat VALUES (51, 'Pencil Boxes', 22);
INSERT INTO adminpanel_alphasubcat VALUES (52, 'School Shoes', 22);
INSERT INTO adminpanel_alphasubcat VALUES (53, 'Boy Clothing', 21);
INSERT INTO adminpanel_alphasubcat VALUES (54, 'Girl Clothing', 21);
INSERT INTO adminpanel_alphasubcat VALUES (55, 'Baby Boy Clothing', 21);
INSERT INTO adminpanel_alphasubcat VALUES (56, 'Baby Girl Clothing', 21);
INSERT INTO adminpanel_alphasubcat VALUES (57, 'Boys', 20);
INSERT INTO adminpanel_alphasubcat VALUES (58, 'Girls', 20);
INSERT INTO adminpanel_alphasubcat VALUES (59, 'Perfumes', 19);
INSERT INTO adminpanel_alphasubcat VALUES (60, 'Over-sized', 18);
INSERT INTO adminpanel_alphasubcat VALUES (61, 'Wayfarer', 18);
INSERT INTO adminpanel_alphasubcat VALUES (62, 'Fasttrack', 17);
INSERT INTO adminpanel_alphasubcat VALUES (63, 'Titan', 17);
INSERT INTO adminpanel_alphasubcat VALUES (64, 'Casino', 17);
INSERT INTO adminpanel_alphasubcat VALUES (65, 'Maxima', 17);
INSERT INTO adminpanel_alphasubcat VALUES (66, 'Casual Shoes', 16);
INSERT INTO adminpanel_alphasubcat VALUES (67, 'Sports Shoes', 16);
INSERT INTO adminpanel_alphasubcat VALUES (68, 'Flats', 16);
INSERT INTO adminpanel_alphasubcat VALUES (69, 'Heels', 16);
INSERT INTO adminpanel_alphasubcat VALUES (71, 'Dresses', 15);
INSERT INTO adminpanel_alphasubcat VALUES (72, 'Jeans', 15);
INSERT INTO adminpanel_alphasubcat VALUES (73, 'Backpacks', 14);
INSERT INTO adminpanel_alphasubcat VALUES (74, 'LaptopBags', 14);
INSERT INTO adminpanel_alphasubcat VALUES (75, 'Perfume', 13);
INSERT INTO adminpanel_alphasubcat VALUES (76, 'Wayfarer', 12);
INSERT INTO adminpanel_alphasubcat VALUES (77, 'Aviators', 12);
INSERT INTO adminpanel_alphasubcat VALUES (78, 'Casio', 11);
INSERT INTO adminpanel_alphasubcat VALUES (79, 'Sonata', 11);
INSERT INTO adminpanel_alphasubcat VALUES (80, 'Titans', 11);
INSERT INTO adminpanel_alphasubcat VALUES (81, 'TomTom', 11);
INSERT INTO adminpanel_alphasubcat VALUES (82, 'T-shirt', 10);
INSERT INTO adminpanel_alphasubcat VALUES (83, 'Shirt', 10);
INSERT INTO adminpanel_alphasubcat VALUES (84, 'Jeans', 10);
INSERT INTO adminpanel_alphasubcat VALUES (85, 'Sports Wear', 10);
INSERT INTO adminpanel_alphasubcat VALUES (86, 'Casual Shoes', 9);
INSERT INTO adminpanel_alphasubcat VALUES (87, 'Sports Shoes', 9);
INSERT INTO adminpanel_alphasubcat VALUES (88, 'Formal Shoes', 9);
INSERT INTO adminpanel_alphasubcat VALUES (89, 'Sneakers', 9);
INSERT INTO adminpanel_alphasubcat VALUES (90, 'Printer and Ink', 8);
INSERT INTO adminpanel_alphasubcat VALUES (91, 'Monitor', 8);
INSERT INTO adminpanel_alphasubcat VALUES (92, 'Smart Watches', 6);
INSERT INTO adminpanel_alphasubcat VALUES (93, 'Smart Bands', 6);
INSERT INTO adminpanel_alphasubcat VALUES (94, 'Monitoring System', 7);
INSERT INTO adminpanel_alphasubcat VALUES (95, 'Smart Lock', 7);
INSERT INTO adminpanel_alphasubcat VALUES (96, 'Smart Sensor', 7);
INSERT INTO adminpanel_alphasubcat VALUES (97, 'Smart Lighting', 7);
INSERT INTO adminpanel_alphasubcat VALUES (98, 'HP', 5);
INSERT INTO adminpanel_alphasubcat VALUES (99, 'Lenovo', 5);
INSERT INTO adminpanel_alphasubcat VALUES (100, 'ASUS', 5);
INSERT INTO adminpanel_alphasubcat VALUES (101, 'Dell', 5);
INSERT INTO adminpanel_alphasubcat VALUES (102, 'Samsung', 4);
INSERT INTO adminpanel_alphasubcat VALUES (103, 'Lenovo', 4);
INSERT INTO adminpanel_alphasubcat VALUES (104, 'Motorola', 4);
INSERT INTO adminpanel_alphasubcat VALUES (105, 'Apple', 4);
INSERT INTO adminpanel_alphasubcat VALUES (106, 'Asus', 4);
INSERT INTO adminpanel_alphasubcat VALUES (70, 'Shirts and Tops', 15);
INSERT INTO adminpanel_alphasubcat VALUES (42, 'Dining and Serving', 25);
INSERT INTO adminpanel_alphasubcat VALUES (35, 'Sofas and Sectionals', 27);
INSERT INTO adminpanel_alphasubcat VALUES (28, 'LED and CFL Bulbs', 29);
INSERT INTO adminpanel_alphasubcat VALUES (24, 'Diaries and Notebook', 35);
INSERT INTO adminpanel_alphasubcat VALUES (10, 'Comic and Graphic Novels', 30);
INSERT INTO adminpanel_alphasubcat VALUES (9, 'Business and Management', 30);
INSERT INTO adminpanel_alphasubcat VALUES (8, 'Academic and Professional', 30);


--
-- Name: adminpanel_alphasubcat_a_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_alphasubcat_a_id_seq', 106, true);


--
-- Data for Name: adminpanel_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_cart VALUES (64, 3, 1, 1);
INSERT INTO adminpanel_cart VALUES (65, 2, 1, 1);


--
-- Name: adminpanel_cart_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_cart_cart_id_seq', 65, true);


--
-- Data for Name: adminpanel_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_categories VALUES (4, 'Electronics');
INSERT INTO adminpanel_categories VALUES (5, 'Men');
INSERT INTO adminpanel_categories VALUES (6, 'Women');
INSERT INTO adminpanel_categories VALUES (7, 'Baby & Kids');
INSERT INTO adminpanel_categories VALUES (9, 'Books & Media');
INSERT INTO adminpanel_categories VALUES (8, 'Home & Furniture');


--
-- Name: adminpanel_categories_c_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_categories_c_id_seq', 10, true);


--
-- Data for Name: adminpanel_home_page_slider; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_home_page_slider VALUES (1, 1, 'productimage/123.jpg', 102, 4, 4);
INSERT INTO adminpanel_home_page_slider VALUES (2, 1, 'productimage/IMG_0648.jpg', 102, 4, 4);
INSERT INTO adminpanel_home_page_slider VALUES (3, 1, 'productimage/samsung-galaxy-a8-2.jpg', 102, 4, 4);
INSERT INTO adminpanel_home_page_slider VALUES (4, 2, 'productimage/hello768.jpg', 105, 4, 4);
INSERT INTO adminpanel_home_page_slider VALUES (5, 2, 'productimage/rsz_iphone-6s-34.jpg', 105, 4, 4);
INSERT INTO adminpanel_home_page_slider VALUES (6, 2, 'productimage/apple.jpg', 105, 4, 4);
INSERT INTO adminpanel_home_page_slider VALUES (8, 3, 'productimage/rsz_new-2016-autumn-winter-shoes-for-men-casual-shoes-canvas-fashion-high-t_GNFTgXd.jpg', 86, 5, 23);
INSERT INTO adminpanel_home_page_slider VALUES (7, 3, 'productimage/fashion1.jpg', 92, 4, 6);
INSERT INTO adminpanel_home_page_slider VALUES (9, 3, 'productimage/fashion2.jpg', 83, 5, 10);
INSERT INTO adminpanel_home_page_slider VALUES (10, 3, 'productimage/fashion3.jpg', 83, 5, 10);
INSERT INTO adminpanel_home_page_slider VALUES (11, 3, 'productimage/fashion4.jpg', 83, 5, 15);
INSERT INTO adminpanel_home_page_slider VALUES (12, 3, 'productimage/fashion5.jpg', 72, 6, 10);
INSERT INTO adminpanel_home_page_slider VALUES (13, 3, 'productimage/fashion6.jpg', 70, 6, 15);
INSERT INTO adminpanel_home_page_slider VALUES (14, 3, 'productimage/rsz_fashion-shoes-for-men-2015.jpg', 86, 5, 9);
INSERT INTO adminpanel_home_page_slider VALUES (15, 3, 'productimage/fdg.jpg', 63, 6, 17);


--
-- Name: adminpanel_home_page_slider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_home_page_slider_id_seq', 15, true);


--
-- Data for Name: adminpanel_imagee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_imagee VALUES (3, 'productimage/samsung-galaxy-on5-sm-g550fzkdins-sm-g550fzddins-400x400-imaefthsfwgd7xbh.jpeg', 2);
INSERT INTO adminpanel_imagee VALUES (4, 'productimage/samsung-galaxy-on5-sm-g550fzddins-400x400-imaecjy9jkpzuxvn.jpeg', 2);
INSERT INTO adminpanel_imagee VALUES (5, 'productimage/samsung-galaxy-on7-sm-g600f-400x400-imaecqkgzeuz9ebn_EaJyUKz.jpeg', 2);
INSERT INTO adminpanel_imagee VALUES (6, 'productimage/apple-iphone-6s-na-400x400-imaebym6vefusezb.jpeg', 3);
INSERT INTO adminpanel_imagee VALUES (7, 'productimage/apple-iphone-6s-na-400x400-imaebym6vqhggczq.jpeg', 3);
INSERT INTO adminpanel_imagee VALUES (8, 'productimage/apple-iphone-6s-na-400x400-imaebymah3fhzppu.jpeg', 4);
INSERT INTO adminpanel_imagee VALUES (9, 'productimage/apple-iphone-5s-400x400-imadpppcuyydkjy7.jpeg', 5);
INSERT INTO adminpanel_imagee VALUES (10, 'productimage/apple-iphone-5s-400x400-imadpppc7nyf47pc.jpeg', 5);
INSERT INTO adminpanel_imagee VALUES (11, 'productimage/2401bm01-titan-400x400-imaee3k9vxzr5pza.jpeg', 6);
INSERT INTO adminpanel_imagee VALUES (12, 'productimage/2401bm01-titan-400x400-imaee3kasuzqkppd.jpeg', 6);
INSERT INTO adminpanel_imagee VALUES (13, 'productimage/1-1-dss8042c-cottinfab-m-400x400-imae6ughgpvuczgh.jpeg', 8);
INSERT INTO adminpanel_imagee VALUES (14, 'productimage/1-1-dss8042c-cottinfab-m-400x400-imae6ughmzp6tyvf.jpeg', 8);
INSERT INTO adminpanel_imagee VALUES (15, 'productimage/cot2194ya-cottinfab-s-400x400-imadwkhupgk5aebx.jpeg', 9);


--
-- Name: adminpanel_imagee_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_imagee_p_id_seq', 15, true);


--
-- Data for Name: adminpanel_metadetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_metadetails VALUES (1, 'color', 'White,Silver,Gold', 3);
INSERT INTO adminpanel_metadetails VALUES (2, 'Form', 'Bar', 3);
INSERT INTO adminpanel_metadetails VALUES (3, 'SIM Size', 'Nano SIM', 3);
INSERT INTO adminpanel_metadetails VALUES (4, 'Touch Screen', 'Yes', 3);


--
-- Name: adminpanel_metadetails_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_metadetails_m_id_seq', 4, true);


--
-- Data for Name: adminpanel_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_order VALUES (1, 2, 1, 1);
INSERT INTO adminpanel_order VALUES (2, 6, 2, 1);
INSERT INTO adminpanel_order VALUES (3, 2, 1, 1);
INSERT INTO adminpanel_order VALUES (4, 6, 1, 1);
INSERT INTO adminpanel_order VALUES (5, 2, 1, 1);
INSERT INTO adminpanel_order VALUES (6, 4, 1, 1);
INSERT INTO adminpanel_order VALUES (7, 3, 1, 1);
INSERT INTO adminpanel_order VALUES (8, 10, 1, 1);
INSERT INTO adminpanel_order VALUES (9, 2, 1, 1);
INSERT INTO adminpanel_order VALUES (10, 2, 3, 1);


--
-- Name: adminpanel_order_o_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_order_o_id_seq', 10, true);


--
-- Data for Name: adminpanel_order_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_order_user VALUES (2, 60, 2);
INSERT INTO adminpanel_order_user VALUES (1, 2492, 1);
INSERT INTO adminpanel_order_user VALUES (3, 126, 3);


--
-- Data for Name: adminpanel_order_user_o_order_id; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_order_user_o_order_id VALUES (1, 1, 1);
INSERT INTO adminpanel_order_user_o_order_id VALUES (2, 2, 2);
INSERT INTO adminpanel_order_user_o_order_id VALUES (3, 1, 3);
INSERT INTO adminpanel_order_user_o_order_id VALUES (4, 1, 4);
INSERT INTO adminpanel_order_user_o_order_id VALUES (5, 1, 5);
INSERT INTO adminpanel_order_user_o_order_id VALUES (6, 1, 6);
INSERT INTO adminpanel_order_user_o_order_id VALUES (7, 1, 7);
INSERT INTO adminpanel_order_user_o_order_id VALUES (8, 1, 8);
INSERT INTO adminpanel_order_user_o_order_id VALUES (9, 1, 9);
INSERT INTO adminpanel_order_user_o_order_id VALUES (10, 3, 10);


--
-- Name: adminpanel_order_user_o_order_id_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_order_user_o_order_id_id_seq', 10, true);


--
-- Name: adminpanel_order_user_o_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_order_user_o_user_id_seq', 3, true);


--
-- Data for Name: adminpanel_pro_display; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_pro_display VALUES (2, 5, 105, 'productimage/apple-iphone-6s-na-400x400-imaebymah3fhzppu_s7A6HcX.jpeg');
INSERT INTO adminpanel_pro_display VALUES (3, 4, 105, 'productimage/apple-iphone-5s-400x400-imadpppc9k3gzdjz_3FsagMi.jpeg');
INSERT INTO adminpanel_pro_display VALUES (4, 3, 105, 'productimage/apple-iphone-6s-na-400x400-imaebymaz5exfapw_8huNTQV.jpeg');
INSERT INTO adminpanel_pro_display VALUES (6, 9, 71, 'productimage/cot2194ya-cottinfab-s-400x400-imadwkhushuqsfre_Lm8qijQ.jpeg');
INSERT INTO adminpanel_pro_display VALUES (7, 5, 71, 'productimage/9975sm01-titan-400x400-imady87pg6pt8ztf.jpe');
INSERT INTO adminpanel_pro_display VALUES (5, 6, 105, 'productimage/apple-iphone-5s-400x400-imadpppc9k3gzdjz_629wLhG.jpeg');
INSERT INTO adminpanel_pro_display VALUES (12, 6, 88, 'productimage/11.jpg');
INSERT INTO adminpanel_pro_display VALUES (9, 6, 88, 'productimage/1.jpg');
INSERT INTO adminpanel_pro_display VALUES (8, 6, 88, 'productimage/2.jpg');
INSERT INTO adminpanel_pro_display VALUES (10, 6, 88, 'productimage/7.jpg');
INSERT INTO adminpanel_pro_display VALUES (13, 2, 71, 'productimage/10.jpg');


--
-- Name: adminpanel_pro_display_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_pro_display_id_seq', 13, true);


--
-- Data for Name: adminpanel_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_product VALUES (6, 'Titan 2401BM01 Analog Watch - For Women', 30, 63, 'productimage/2401bm01-titan-400x400-imaee3k9zdga2cmk.jpeg', 'Key Features of Titan 2401BM01 Analog Watch - For Women      Dial Color: White     Dial Shape: Round     Strap Color: Silve', 'productimage/2401bm01-titan-400x400-imaee3k9vxzr5pza_haOLCE8.jpeg');
INSERT INTO adminpanel_product VALUES (5, 'Apple iPhone 5S(Gold, 64 GB)', 769, 105, 'productimage/apple-iphone-5s-400x400-imadpppc9k3gzdjz.jpeg', 'Key Features of Apple iPhone 5S iOS 9 New Features such as AirDrop, AirPlay, AirPrint, Control Centre, Notiﬁcation Centre, Siri, Spotlight Search, Facebook Integration, Twitter Integration, iCloud, iCloud Keychain, Multitasking, Wallet Ultra-fast Wireless A7-chip High Performance 64-bit Architecture and M7 Motion Co-processor 8 MP iSight Camera with 15% Large Images Sensor and Aperture of f/2.2 1.', 'productimage/apple-iphone-5s-400x400-imadpppcuyydkjy7_yL34MLq.jpeg');
INSERT INTO adminpanel_product VALUES (4, 'Apple iPhone 6S(Space Grey, 64 GB)', 949, 105, 'productimage/apple-iphone-6s-na-400x400-imaebymaz5exfapw.jpeg', 'Key Features of Apple iPhone 6S 4.7 inch Touchscreen Bluetooth Support iOS 9 5 MP Secondary Camera Wi-Fi Enabled 12 MP Primary Camera 3D Touch & Live Photos', 'productimage/apple-iphone-6s-na-400x400-imaebymah3fhzppu_n0QZzFj.jpeg');
INSERT INTO adminpanel_product VALUES (3, 'Apple iPhone 6S(Rose Gold, 64 GB)', 949, 105, 'productimage/apple-iphone-6s-na-400x400-imaeby6rmzxdpvbj.jpeg', 'Key Features of Apple iPhone 6S 4.7 inch Touchscreen Bluetooth Support iOS 9 5 MP Secondary Camera Wi-Fi Enabled 12 MP Primary Camera 3D Touch & Live Photos', 'productimage/apple-iphone-6s-na-400x400-imaebym6vqhggczq_aGrv6ll.jpeg');
INSERT INTO adminpanel_product VALUES (2, 'Samsung Galaxy On5(Gold, 8 GB)', 126, 102, 'productimage/samsung-galaxy-on7-sm-g600f-400x400-imaecqkgzeuz9ebn.jpeg', 'Key Features of Samsung Galaxy On5 Android v5.1 (Lollipop) OS 8 MP Primary Camera 5 MP Secondary Camera Dual Sim (LTE + LTE) 5 inch Capacitive Touchscreen 1.3 GHz Exynos 3475 Quad Core Processor Wi-Fi Enabled Expandable Storage Capacity of 128 GB', 'productimage/samsung-galaxy-on5-sm-g550fzddins-400x400-imaecjy9jkpzuxvn_z3lQOVf.jpeg');
INSERT INTO adminpanel_product VALUES (8, 'Cottinfab Women''s Gathered Dress', 50, 71, 'productimage/1-1-dss8042c-cottinfab-m-400x400-imae6ugheecfxgp6.jpeg', 'Round Neck With Red Net Use On The Border Of The Bottom And Centre Back Zip Fly Closure And Attach Net, Sleeveless, Knee Length Short Dress', 'productimage/1-1-dss8042c-cottinfab-m-400x400-imae6ughrqhbsq3a.jpeg');
INSERT INTO adminpanel_product VALUES (9, 'Cottinfab Women''s Sheath Dress', 60, 71, 'productimage/cot2194ya-cottinfab-s-400x400-imadwkhushuqsfre.jpeg', 'Black     Sheath', 'productimage/cot2194ya-cottinfab-s-400x400-imadwkhukzvhkqz3.jpeg');
INSERT INTO adminpanel_product VALUES (10, 'Chimpaaanzee Party Kimono Sleeve Solid Women''s Top', 60, 70, 'productimage/1-1-t0011-chimpaaanzee-m-400x400-imae9xmcus2p2ehh.jpeg', 'Maroon', 'productimage/1-1-t0011-chimpaaanzee-m-400x400-imae9xnnhc8d8fmg.jpeg');


--
-- Name: adminpanel_product_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_product_p_id_seq', 10, true);


--
-- Data for Name: adminpanel_subcategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_subcategories VALUES (4, 'Mobile', 4);
INSERT INTO adminpanel_subcategories VALUES (5, 'Laptop', 4);
INSERT INTO adminpanel_subcategories VALUES (6, 'Wearable Smart Devices', 4);
INSERT INTO adminpanel_subcategories VALUES (7, 'Smart Home Automation', 4);
INSERT INTO adminpanel_subcategories VALUES (8, 'Computer Periperals', 4);
INSERT INTO adminpanel_subcategories VALUES (9, 'Footwear', 5);
INSERT INTO adminpanel_subcategories VALUES (10, 'Clothing', 5);
INSERT INTO adminpanel_subcategories VALUES (11, 'Watches', 5);
INSERT INTO adminpanel_subcategories VALUES (12, 'SunGlasses', 5);
INSERT INTO adminpanel_subcategories VALUES (13, 'Fragrances', 5);
INSERT INTO adminpanel_subcategories VALUES (14, 'Bag', 5);
INSERT INTO adminpanel_subcategories VALUES (15, 'Clothing', 6);
INSERT INTO adminpanel_subcategories VALUES (16, 'Footwear', 6);
INSERT INTO adminpanel_subcategories VALUES (17, 'Watches', 6);
INSERT INTO adminpanel_subcategories VALUES (18, 'SunGlasses', 6);
INSERT INTO adminpanel_subcategories VALUES (19, 'Fragrances', 6);
INSERT INTO adminpanel_subcategories VALUES (20, 'Toys', 7);
INSERT INTO adminpanel_subcategories VALUES (21, 'Kids Clothing', 7);
INSERT INTO adminpanel_subcategories VALUES (22, 'School Supllies', 7);
INSERT INTO adminpanel_subcategories VALUES (23, 'FootWear', 7);
INSERT INTO adminpanel_subcategories VALUES (24, 'Children Book', 7);
INSERT INTO adminpanel_subcategories VALUES (25, 'Kitchen & Dining', 8);
INSERT INTO adminpanel_subcategories VALUES (26, 'Home Furnishing', 8);
INSERT INTO adminpanel_subcategories VALUES (27, 'Furniture', 8);
INSERT INTO adminpanel_subcategories VALUES (28, 'Home Decor', 8);
INSERT INTO adminpanel_subcategories VALUES (29, 'Lighting', 8);
INSERT INTO adminpanel_subcategories VALUES (30, 'Books', 9);
INSERT INTO adminpanel_subcategories VALUES (31, 'Movies & TV Shows', 9);
INSERT INTO adminpanel_subcategories VALUES (32, 'Music', 9);
INSERT INTO adminpanel_subcategories VALUES (34, 'Gaming', 9);
INSERT INTO adminpanel_subcategories VALUES (35, 'Stationery', 9);
INSERT INTO adminpanel_subcategories VALUES (36, 'Exam Supplies', 9);


--
-- Name: adminpanel_subcategories_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_subcategories_s_id_seq', 36, true);


--
-- Data for Name: adminpanel_user_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_user_log VALUES (14, 14, 5);
INSERT INTO adminpanel_user_log VALUES (17, 6, 4);
INSERT INTO adminpanel_user_log VALUES (13, 7, 9);
INSERT INTO adminpanel_user_log VALUES (15, 16, 6);
INSERT INTO adminpanel_user_log VALUES (10, 13, 3);
INSERT INTO adminpanel_user_log VALUES (11, 15, 2);
INSERT INTO adminpanel_user_log VALUES (16, 3, 10);
INSERT INTO adminpanel_user_log VALUES (12, 6, 8);


--
-- Name: adminpanel_user_log_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_user_log_log_id_seq', 17, true);


--
-- Data for Name: adminpanel_user_log_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_user_log_user VALUES (17, 10, 1);
INSERT INTO adminpanel_user_log_user VALUES (18, 11, 1);
INSERT INTO adminpanel_user_log_user VALUES (19, 12, 1);
INSERT INTO adminpanel_user_log_user VALUES (20, 13, 1);
INSERT INTO adminpanel_user_log_user VALUES (21, 14, 1);
INSERT INTO adminpanel_user_log_user VALUES (22, 16, 1);
INSERT INTO adminpanel_user_log_user VALUES (23, 15, 1);
INSERT INTO adminpanel_user_log_user VALUES (24, 17, 1);


--
-- Name: adminpanel_user_log_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_user_log_user_id_seq', 24, true);


--
-- Data for Name: adminpanel_userac; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO adminpanel_userac VALUES (2, 'ABC', 'helloworld', 'lanetteam.jinal@gmail.com', 'Desai', 'abc', 'abc', 123);
INSERT INTO adminpanel_userac VALUES (1, 'jigar', 'jigartarpara', 'lanetteam.jigar@gmail.com', 'tarpara', 'Dhanmora', 'Dhanmora ', 5343);
INSERT INTO adminpanel_userac VALUES (3, 'milan', NULL, 'lanetteam.milan@gmail.com', 'kyada', 'j', 'j', 8);


--
-- Name: adminpanel_userac_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_userac_u_id_seq', 3, true);


--
-- Data for Name: adminpanel_wishlist; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: adminpanel_wishlist_wish_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adminpanel_wishlist_wish_id_seq', 1, false);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO auth_permission VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO auth_permission VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO auth_permission VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO auth_permission VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO auth_permission VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO auth_permission VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO auth_permission VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO auth_permission VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO auth_permission VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO auth_permission VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO auth_permission VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO auth_permission VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO auth_permission VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO auth_permission VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO auth_permission VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO auth_permission VALUES (19, 'Can add categories', 7, 'add_categories');
INSERT INTO auth_permission VALUES (20, 'Can change categories', 7, 'change_categories');
INSERT INTO auth_permission VALUES (21, 'Can delete categories', 7, 'delete_categories');
INSERT INTO auth_permission VALUES (22, 'Can add subcategories', 8, 'add_subcategories');
INSERT INTO auth_permission VALUES (23, 'Can change subcategories', 8, 'change_subcategories');
INSERT INTO auth_permission VALUES (24, 'Can delete subcategories', 8, 'delete_subcategories');
INSERT INTO auth_permission VALUES (25, 'Can add alphasubcat', 9, 'add_alphasubcat');
INSERT INTO auth_permission VALUES (26, 'Can change alphasubcat', 9, 'change_alphasubcat');
INSERT INTO auth_permission VALUES (27, 'Can delete alphasubcat', 9, 'delete_alphasubcat');
INSERT INTO auth_permission VALUES (28, 'Can add product', 10, 'add_product');
INSERT INTO auth_permission VALUES (29, 'Can change product', 10, 'change_product');
INSERT INTO auth_permission VALUES (30, 'Can delete product', 10, 'delete_product');
INSERT INTO auth_permission VALUES (31, 'Can add imagee', 11, 'add_imagee');
INSERT INTO auth_permission VALUES (32, 'Can change imagee', 11, 'change_imagee');
INSERT INTO auth_permission VALUES (33, 'Can delete imagee', 11, 'delete_imagee');
INSERT INTO auth_permission VALUES (34, 'Can add metadetails', 12, 'add_metadetails');
INSERT INTO auth_permission VALUES (35, 'Can change metadetails', 12, 'change_metadetails');
INSERT INTO auth_permission VALUES (36, 'Can delete metadetails', 12, 'delete_metadetails');
INSERT INTO auth_permission VALUES (37, 'Can add userac', 13, 'add_userac');
INSERT INTO auth_permission VALUES (38, 'Can change userac', 13, 'change_userac');
INSERT INTO auth_permission VALUES (39, 'Can delete userac', 13, 'delete_userac');
INSERT INTO auth_permission VALUES (40, 'Can add order', 14, 'add_order');
INSERT INTO auth_permission VALUES (41, 'Can change order', 14, 'change_order');
INSERT INTO auth_permission VALUES (42, 'Can delete order', 14, 'delete_order');
INSERT INTO auth_permission VALUES (43, 'Can add order_user', 15, 'add_order_user');
INSERT INTO auth_permission VALUES (44, 'Can change order_user', 15, 'change_order_user');
INSERT INTO auth_permission VALUES (45, 'Can delete order_user', 15, 'delete_order_user');
INSERT INTO auth_permission VALUES (46, 'Can add cart', 16, 'add_cart');
INSERT INTO auth_permission VALUES (47, 'Can change cart', 16, 'change_cart');
INSERT INTO auth_permission VALUES (48, 'Can delete cart', 16, 'delete_cart');
INSERT INTO auth_permission VALUES (49, 'Can add wishlist', 17, 'add_wishlist');
INSERT INTO auth_permission VALUES (50, 'Can change wishlist', 17, 'change_wishlist');
INSERT INTO auth_permission VALUES (51, 'Can delete wishlist', 17, 'delete_wishlist');
INSERT INTO auth_permission VALUES (52, 'Can add user_log', 18, 'add_user_log');
INSERT INTO auth_permission VALUES (53, 'Can change user_log', 18, 'change_user_log');
INSERT INTO auth_permission VALUES (54, 'Can delete user_log', 18, 'delete_user_log');
INSERT INTO auth_permission VALUES (55, 'Can add home_page_slider', 19, 'add_home_page_slider');
INSERT INTO auth_permission VALUES (56, 'Can change home_page_slider', 19, 'change_home_page_slider');
INSERT INTO auth_permission VALUES (57, 'Can delete home_page_slider', 19, 'delete_home_page_slider');
INSERT INTO auth_permission VALUES (58, 'Can add add', 20, 'add_add');
INSERT INTO auth_permission VALUES (59, 'Can change add', 20, 'change_add');
INSERT INTO auth_permission VALUES (60, 'Can delete add', 20, 'delete_add');
INSERT INTO auth_permission VALUES (61, 'Can add pro_display', 21, 'add_pro_display');
INSERT INTO auth_permission VALUES (62, 'Can change pro_display', 21, 'change_pro_display');
INSERT INTO auth_permission VALUES (63, 'Can delete pro_display', 21, 'delete_pro_display');


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 63, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO auth_user VALUES (1, 'pbkdf2_sha256$24000$VDAQ9TVeXOSC$RSXUQoIG3G84ehURvb1y/7cHIYgoeMAeSTijN/QlMDA=', '2016-04-05 09:45:21.880321+05:30', true, 'root', '', '', 'jigartarpara68@gmail.com', true, true, '2016-04-04 16:17:09.580881+05:30');
INSERT INTO auth_user VALUES (2, 'pbkdf2_sha256$24000$BWJAgs2l9B45$tyVZfXXbswaLKKFCbE6QDXkEkWQw+BAe4wjRq/6wF2w=', '2016-04-12 12:15:09.127702+05:30', true, 'lcom52', '', '', 'lanetteam.jigar@gmail.com', true, true, '2016-04-06 15:59:10.520117+05:30');


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO django_admin_log VALUES (1, '2016-04-04 16:18:48.802531+05:30', '1', 'Home & Furniture', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (2, '2016-04-04 16:54:47.795815+05:30', '2', 'hello', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (3, '2016-04-04 17:01:46.316636+05:30', '3', 'Hello34', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (4, '2016-04-05 09:45:40.55761+05:30', '3', 'Hello34', 3, '', 7, 1);
INSERT INTO django_admin_log VALUES (5, '2016-04-05 09:45:40.650889+05:30', '2', 'hello', 3, '', 7, 1);
INSERT INTO django_admin_log VALUES (6, '2016-04-05 09:45:40.664108+05:30', '1', 'Project', 3, '', 7, 1);
INSERT INTO django_admin_log VALUES (7, '2016-04-05 09:47:07.358383+05:30', '4', 'Electronics', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (8, '2016-04-05 09:47:11.823498+05:30', '5', 'Men', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (9, '2016-04-05 09:47:17.495592+05:30', '6', 'Women', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (10, '2016-04-05 09:47:25.443428+05:30', '7', 'Baby & Kids', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (11, '2016-04-05 09:49:14.377772+05:30', '8', 'Home & Furniture', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (12, '2016-04-05 09:49:27.063173+05:30', '9', 'Books & Media', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (13, '2016-04-05 09:49:37.757447+05:30', '10', 'Auto & Sports', 1, 'Added.', 7, 1);
INSERT INTO django_admin_log VALUES (14, '2016-04-05 09:50:08.889907+05:30', '10', 'Auto & Sports', 3, '', 7, 1);
INSERT INTO django_admin_log VALUES (15, '2016-04-06 15:59:54.501614+05:30', '1', 'sad', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (16, '2016-04-06 15:59:59.795299+05:30', '2', 'fgdgdf', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (17, '2016-04-06 16:00:03.835268+05:30', '3', 'dfg', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (18, '2016-04-06 16:00:11.652113+05:30', '1', 'dfgdfg', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (19, '2016-04-06 16:00:14.962761+05:30', '2', 'dfgd', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (20, '2016-04-06 16:00:18.134839+05:30', '3', 'dfgd', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (21, '2016-04-06 16:00:21.302308+05:30', '4', 'dfg', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (22, '2016-04-06 16:01:25.506623+05:30', '1', 'fhfdh', 1, 'Added.', 10, 2);
INSERT INTO django_admin_log VALUES (23, '2016-04-06 16:02:22.261371+05:30', '1', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (24, '2016-04-06 16:02:30.273724+05:30', '2', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (25, '2016-04-07 10:43:13.87625+05:30', '3', 'dfg', 3, '', 8, 2);
INSERT INTO django_admin_log VALUES (26, '2016-04-07 10:43:13.918307+05:30', '2', 'fgdgdf', 3, '', 8, 2);
INSERT INTO django_admin_log VALUES (27, '2016-04-07 10:43:13.930016+05:30', '1', 'sad', 3, '', 8, 2);
INSERT INTO django_admin_log VALUES (28, '2016-04-07 10:44:21.242808+05:30', '4', 'Mobile', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (29, '2016-04-07 10:44:26.745016+05:30', '5', 'Laptop', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (30, '2016-04-07 10:44:51.123649+05:30', '6', 'Wearable Smart Devices', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (31, '2016-04-07 10:45:27.356262+05:30', '7', 'Smart Home Automation', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (32, '2016-04-07 10:46:10.362199+05:30', '8', 'Computer Periperals', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (33, '2016-04-07 10:47:11.332491+05:30', '9', 'Footwear', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (34, '2016-04-07 10:47:30.592737+05:30', '10', 'Clothing', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (35, '2016-04-07 10:47:38.58937+05:30', '11', 'Watches', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (36, '2016-04-07 10:47:58.195118+05:30', '12', 'SunGlasses', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (37, '2016-04-07 10:48:46.13262+05:30', '13', 'Fragrances', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (38, '2016-04-07 10:48:54.033349+05:30', '14', 'Bag', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (39, '2016-04-07 10:49:13.031015+05:30', '15', 'Clothing', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (40, '2016-04-07 10:49:20.724165+05:30', '16', 'Footwear', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (41, '2016-04-07 10:50:01.161599+05:30', '17', 'Watches', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (42, '2016-04-07 10:50:46.650439+05:30', '18', 'SunGlasses', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (43, '2016-04-07 10:50:55.824144+05:30', '19', 'Fragrances', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (44, '2016-04-07 10:51:42.221314+05:30', '20', 'Toys', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (45, '2016-04-07 10:51:57.567981+05:30', '21', 'Kids Clothing', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (46, '2016-04-07 10:52:17.388536+05:30', '22', 'School Supllies', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (47, '2016-04-07 10:53:21.045671+05:30', '23', 'FootWear', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (48, '2016-04-07 10:54:07.579008+05:30', '24', 'Children Book', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (49, '2016-04-07 10:54:34.738386+05:30', '25', 'Kitchen & Dining', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (50, '2016-04-07 10:55:04.654563+05:30', '26', 'Home Furnishing', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (51, '2016-04-07 10:55:37.782047+05:30', '27', 'Furniture', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (52, '2016-04-07 10:55:56.772783+05:30', '28', 'Home Decor', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (53, '2016-04-07 10:56:07.493646+05:30', '29', 'Lighting', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (54, '2016-04-07 10:56:21.372128+05:30', '30', 'Books', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (55, '2016-04-07 10:56:34.409081+05:30', '31', 'Movies & TV Shows', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (56, '2016-04-07 10:56:41.213232+05:30', '32', 'Music', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (57, '2016-04-07 10:56:59.144975+05:30', '33', 'Music', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (58, '2016-04-07 10:57:05.704474+05:30', '33', 'Music', 3, '', 8, 2);
INSERT INTO django_admin_log VALUES (59, '2016-04-07 10:57:23.897093+05:30', '34', 'Gaming', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (60, '2016-04-07 10:57:44.463573+05:30', '35', 'Stationery', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (61, '2016-04-07 10:57:59.340645+05:30', '36', 'Exam Supplies', 1, 'Added.', 8, 2);
INSERT INTO django_admin_log VALUES (62, '2016-04-07 10:58:52.310471+05:30', '5', 'New Realeases', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (63, '2016-04-07 10:59:09.170705+05:30', '6', 'Entrance Exam', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (64, '2016-04-07 10:59:29.783281+05:30', '7', 'BestSellers', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (65, '2016-04-07 10:59:55.678199+05:30', '8', 'Academic & Professional', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (66, '2016-04-07 11:01:36.079854+05:30', '9', 'Business & Management', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (67, '2016-04-07 11:02:07.957603+05:30', '10', 'Comic & Graphic Novels', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (68, '2016-04-07 11:06:25.782299+05:30', '11', 'Hollywood', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (69, '2016-04-07 11:06:48.003472+05:30', '12', 'Bollywood', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (70, '2016-04-07 11:07:20.746886+05:30', '13', 'Kids and Educational', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (71, '2016-04-07 11:07:48.014294+05:30', '14', 'International', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (72, '2016-04-07 11:07:57.089828+05:30', '15', 'Bollywood', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (73, '2016-04-07 11:08:52.760371+05:30', '16', 'New Realese', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (74, '2016-04-07 11:09:10.34467+05:30', '17', 'Pre Order', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (75, '2016-04-07 11:09:29.183102+05:30', '18', 'PC', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (76, '2016-04-07 11:09:38.561587+05:30', '19', 'PSP3', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (77, '2016-04-07 11:09:46.044722+05:30', '20', 'PSP4', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (78, '2016-04-07 11:10:08.818767+05:30', '21', 'XBox 360', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (79, '2016-04-07 11:10:42.813489+05:30', '22', 'Gamining Console', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (80, '2016-04-07 11:11:15.527328+05:30', '23', 'Pens', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (81, '2016-04-07 11:11:56.329087+05:30', '24', 'Diaries & Notebook', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (82, '2016-04-07 11:12:12.399742+05:30', '25', 'Key Chains', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (83, '2016-04-07 11:12:33.453568+05:30', '26', 'Calculator', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (84, '2016-04-07 11:13:05.531438+05:30', '27', 'Exam', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (85, '2016-04-07 11:15:01.065597+05:30', '28', 'LED & CFL Bulbs', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (86, '2016-04-07 11:15:24.821898+05:30', '29', 'Wall Lamps', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (87, '2016-04-07 11:15:33.584325+05:30', '30', 'Table Lamps', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (88, '2016-04-07 11:16:04.9639+05:30', '31', 'Paintings', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (89, '2016-04-07 11:16:24.304362+05:30', '32', 'Wall Decals', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (90, '2016-04-07 11:17:24.890252+05:30', '33', 'Wall Sheleves', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (91, '2016-04-07 11:17:53.203636+05:30', '34', 'Clocks', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (92, '2016-04-07 11:18:24.781888+05:30', '35', 'Sofas & Sectionals', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (93, '2016-04-07 11:18:39.18334+05:30', '36', 'Beds', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (94, '2016-04-07 11:18:54.612922+05:30', '37', 'Dining tables', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (95, '2016-04-07 11:19:08.052441+05:30', '38', 'TV cabinets', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (96, '2016-04-07 11:19:54.022519+05:30', '39', 'Shoe Racks', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (97, '2016-04-07 11:20:13.888905+05:30', '40', 'Spring Summer Collection', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (98, '2016-04-07 11:20:52.036275+05:30', '41', 'Cookware', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (99, '2016-04-07 11:21:32.64969+05:30', '42', 'Dining & Serving', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (100, '2016-04-07 11:21:57.917006+05:30', '43', 'Storage', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (101, '2016-04-07 11:22:28.532037+05:30', '44', 'Story Book', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (102, '2016-04-07 11:22:56.884678+05:30', '45', 'Boys Footwear', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (103, '2016-04-07 11:23:07.780758+05:30', '46', 'Girls Footwear', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (104, '2016-04-07 11:24:38.135154+05:30', '47', 'Baby Footwear', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (105, '2016-04-07 11:26:20.726067+05:30', '48', 'School Bags', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (106, '2016-04-07 11:26:38.488009+05:30', '49', 'Water Bottles', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (107, '2016-04-07 11:26:52.699681+05:30', '50', 'Luch Boxes', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (108, '2016-04-07 11:27:41.395848+05:30', '51', 'Pencil Boxes', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (109, '2016-04-07 11:27:56.133622+05:30', '52', 'School Shoes', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (110, '2016-04-07 11:28:28.231395+05:30', '53', 'Boy Clothing', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (111, '2016-04-07 11:28:39.066096+05:30', '54', 'Girl Clothing', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (112, '2016-04-07 11:28:50.456112+05:30', '55', 'Baby Boy Clothing', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (113, '2016-04-07 11:29:06.687467+05:30', '56', 'Baby Girl Clothing', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (114, '2016-04-07 11:30:03.97919+05:30', '57', 'Boys', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (115, '2016-04-07 11:30:13.348874+05:30', '58', 'Girls', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (116, '2016-04-07 11:36:13.744344+05:30', '59', 'Perfumes', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (117, '2016-04-07 11:37:03.217181+05:30', '60', 'Over-sized', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (118, '2016-04-07 11:37:38.874455+05:30', '61', 'Wayfarer', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (119, '2016-04-07 11:38:37.467704+05:30', '62', 'Fasttrack', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (120, '2016-04-07 11:39:21.426017+05:30', '63', 'Titan', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (121, '2016-04-07 11:39:31.130298+05:30', '64', 'Casino', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (122, '2016-04-07 11:39:40.43612+05:30', '65', 'Maxima', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (123, '2016-04-07 11:42:17.023077+05:30', '66', 'Casual Shoes', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (124, '2016-04-07 11:42:44.739172+05:30', '67', 'Sports Shoes', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (125, '2016-04-07 11:43:03.248164+05:30', '68', 'Flats', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (126, '2016-04-07 11:43:17.305278+05:30', '69', 'Heels', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (127, '2016-04-07 11:44:44.712978+05:30', '70', 'Shirts & Tops', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (128, '2016-04-07 11:45:01.532267+05:30', '71', 'Dresses', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (129, '2016-04-07 11:45:13.61361+05:30', '72', 'Jeans', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (130, '2016-04-07 11:45:54.663665+05:30', '73', 'Backpacks', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (131, '2016-04-07 11:46:09.557837+05:30', '74', 'LaptopBags', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (132, '2016-04-07 11:47:07.661905+05:30', '75', 'Perfume', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (133, '2016-04-07 11:48:02.515734+05:30', '76', 'Wayfarer', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (134, '2016-04-07 11:48:13.80264+05:30', '77', 'Aviators', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (135, '2016-04-07 11:49:16.874898+05:30', '78', 'Rectangular', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (136, '2016-04-07 11:50:03.146572+05:30', '78', 'Casio', 2, 'Changed as_name.', 9, 2);
INSERT INTO django_admin_log VALUES (137, '2016-04-07 11:50:14.557207+05:30', '79', 'Sonata', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (138, '2016-04-07 11:50:47.964392+05:30', '80', 'Titans', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (139, '2016-04-07 11:51:18.060879+05:30', '81', 'TomTom', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (140, '2016-04-07 11:51:38.463612+05:30', '82', 'T-shirt', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (141, '2016-04-07 11:51:47.432277+05:30', '83', 'Shirt', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (142, '2016-04-07 11:52:12.794314+05:30', '84', 'Jeans', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (143, '2016-04-07 11:52:26.420517+05:30', '85', 'Sports Wear', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (144, '2016-04-07 11:52:47.547628+05:30', '86', 'Casual Shoes', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (145, '2016-04-07 11:53:21.997182+05:30', '87', 'Sports Shoes', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (146, '2016-04-07 11:53:42.178765+05:30', '88', 'Formal Shoes', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (147, '2016-04-07 11:54:00.738776+05:30', '89', 'Sneakers', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (148, '2016-04-07 11:54:21.253242+05:30', '90', 'Printer and Ink', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (149, '2016-04-07 11:56:19.247824+05:30', '91', 'Monitor', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (150, '2016-04-07 11:56:59.919866+05:30', '92', 'Smart Watches', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (151, '2016-04-07 11:57:06.661621+05:30', '93', 'Smart Bands', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (152, '2016-04-07 11:57:29.455845+05:30', '94', 'Monitoring System', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (153, '2016-04-07 11:57:38.413452+05:30', '95', 'Smart Lock', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (154, '2016-04-07 11:57:48.815994+05:30', '96', 'Smart Sensor', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (155, '2016-04-07 11:58:16.453593+05:30', '97', 'Smart Lighting', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (156, '2016-04-07 11:59:10.103034+05:30', '98', 'HP', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (157, '2016-04-07 11:59:17.212063+05:30', '99', 'Lenovo', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (158, '2016-04-07 11:59:22.546745+05:30', '100', 'ASUS', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (159, '2016-04-07 11:59:42.157956+05:30', '101', 'Dell', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (160, '2016-04-07 12:00:04.171639+05:30', '102', 'Samsung', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (161, '2016-04-07 12:00:11.190916+05:30', '103', 'Lenovo', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (162, '2016-04-07 12:00:18.831736+05:30', '104', 'Motorola', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (163, '2016-04-07 12:00:31.5691+05:30', '105', 'Apple', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (164, '2016-04-07 12:00:38.690589+05:30', '106', 'Asus', 1, 'Added.', 9, 2);
INSERT INTO django_admin_log VALUES (165, '2016-04-07 12:04:52.384189+05:30', '2', 'Samsung Galaxy On5(Gold, 8 GB)', 1, 'Added.', 10, 2);
INSERT INTO django_admin_log VALUES (166, '2016-04-07 12:08:09.653567+05:30', '3', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (167, '2016-04-07 12:23:14.01252+05:30', '4', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (168, '2016-04-07 12:24:51.25319+05:30', '5', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (169, '2016-04-07 12:26:07.038149+05:30', '5', 'imagee object', 2, 'Changed photo.', 11, 2);
INSERT INTO django_admin_log VALUES (170, '2016-04-07 12:26:44.167138+05:30', '5', 'imagee object', 2, 'Changed photo.', 11, 2);
INSERT INTO django_admin_log VALUES (171, '2016-04-07 12:27:42.635217+05:30', '2', 'Samsung Galaxy On5(Gold, 8 GB)', 2, 'No fields changed.', 10, 2);
INSERT INTO django_admin_log VALUES (172, '2016-04-07 12:29:29.78095+05:30', '3', 'Apple iPhone 6S(Rose Gold, 64 GB)', 1, 'Added.', 10, 2);
INSERT INTO django_admin_log VALUES (173, '2016-04-07 12:31:06.266671+05:30', '6', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (174, '2016-04-07 12:31:23.818372+05:30', '7', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (175, '2016-04-07 12:34:24.940341+05:30', '4', 'Apple iPhone 6S(Space Grey, 64 GB)', 1, 'Added.', 10, 2);
INSERT INTO django_admin_log VALUES (176, '2016-04-07 12:35:09.503931+05:30', '8', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (177, '2016-04-07 12:38:15.776669+05:30', '5', 'Apple iPhone 5S(Gold, 64 GB)', 1, 'Added.', 10, 2);
INSERT INTO django_admin_log VALUES (178, '2016-04-07 12:41:04.699696+05:30', '9', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (179, '2016-04-07 12:41:39.124078+05:30', '10', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (180, '2016-04-07 14:55:25.713491+05:30', '1', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (181, '2016-04-07 14:56:04.569641+05:30', '1', 'home_page_slider object', 2, 'Changed alpha.', 19, 2);
INSERT INTO django_admin_log VALUES (182, '2016-04-07 14:56:42.878893+05:30', '2', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (183, '2016-04-07 14:57:17.565494+05:30', '3', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (184, '2016-04-07 14:58:07.097015+05:30', '2', 'home_page_slider object', 2, 'Changed photo.', 19, 2);
INSERT INTO django_admin_log VALUES (185, '2016-04-07 14:58:41.494719+05:30', '3', 'home_page_slider object', 2, 'Changed photo.', 19, 2);
INSERT INTO django_admin_log VALUES (186, '2016-04-07 14:59:52.377773+05:30', '4', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (187, '2016-04-07 15:00:58.02514+05:30', '5', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (188, '2016-04-07 15:02:22.689253+05:30', '6', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (189, '2016-04-07 15:03:49.246453+05:30', '7', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (190, '2016-04-07 15:10:17.840204+05:30', '8', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (191, '2016-04-07 15:13:12.056419+05:30', '7', 'home_page_slider object', 2, 'Changed alpha.', 19, 2);
INSERT INTO django_admin_log VALUES (192, '2016-04-07 15:15:01.228404+05:30', '9', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (193, '2016-04-07 15:19:52.965133+05:30', '10', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (194, '2016-04-07 15:21:47.243202+05:30', '11', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (195, '2016-04-07 16:30:30.602607+05:30', '12', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (196, '2016-04-07 16:31:55.437768+05:30', '13', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (197, '2016-04-07 17:41:02.198913+05:30', '2', 'Jinal', 1, 'Added.', 13, 2);
INSERT INTO django_admin_log VALUES (198, '2016-04-08 09:59:17.028879+05:30', '14', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (199, '2016-04-08 09:59:59.490132+05:30', '14', 'home_page_slider object', 2, 'Changed sub.', 19, 2);
INSERT INTO django_admin_log VALUES (200, '2016-04-08 10:01:19.502268+05:30', '14', 'home_page_slider object', 2, 'Changed sub and alpha.', 19, 2);
INSERT INTO django_admin_log VALUES (201, '2016-04-08 10:04:47.551937+05:30', '15', 'home_page_slider object', 1, 'Added.', 19, 2);
INSERT INTO django_admin_log VALUES (202, '2016-04-08 10:05:15.159628+05:30', '15', 'home_page_slider object', 2, 'Changed alpha.', 19, 2);
INSERT INTO django_admin_log VALUES (203, '2016-04-08 10:06:39.028925+05:30', '15', 'home_page_slider object', 2, 'Changed alpha.', 19, 2);
INSERT INTO django_admin_log VALUES (204, '2016-04-08 10:11:48.768875+05:30', '1', 'Color', 1, 'Added.', 12, 2);
INSERT INTO django_admin_log VALUES (205, '2016-04-08 10:12:13.495631+05:30', '1', 'color', 2, 'Changed meta_tag.', 12, 2);
INSERT INTO django_admin_log VALUES (206, '2016-04-08 10:21:56.994969+05:30', '6', 'Titan 2401BM01 Analog Watch - For Women', 1, 'Added.', 10, 2);
INSERT INTO django_admin_log VALUES (207, '2016-04-08 10:22:45.366142+05:30', '11', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (208, '2016-04-08 10:22:59.843654+05:30', '12', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (209, '2016-04-08 10:23:16.083572+05:30', '6', 'Titan 2401BM01 Analog Watch - For Women', 2, 'Changed photo.', 10, 2);
INSERT INTO django_admin_log VALUES (210, '2016-04-08 10:55:39.237657+05:30', '7', 'ghfh', 1, 'Added.', 10, 2);
INSERT INTO django_admin_log VALUES (211, '2016-04-08 10:55:52.318713+05:30', '7', 'ghfh', 3, '', 10, 2);
INSERT INTO django_admin_log VALUES (212, '2016-04-08 11:11:11.266246+05:30', '6', 'Titan 2401BM01 Analog Watch - For Women', 2, 'Changed photo2.', 10, 2);
INSERT INTO django_admin_log VALUES (213, '2016-04-08 11:27:06.585382+05:30', '5', 'Apple iPhone 5S(Gold, 64 GB)', 2, 'Changed photo2.', 10, 2);
INSERT INTO django_admin_log VALUES (214, '2016-04-08 11:28:13.408971+05:30', '4', 'Apple iPhone 6S(Space Grey, 64 GB)', 2, 'Changed photo2.', 10, 2);
INSERT INTO django_admin_log VALUES (215, '2016-04-08 11:29:32.271652+05:30', '4', 'Apple iPhone 6S(Space Grey, 64 GB)', 2, 'Changed photo2.', 10, 2);
INSERT INTO django_admin_log VALUES (216, '2016-04-08 11:30:39.696267+05:30', '3', 'Apple iPhone 6S(Rose Gold, 64 GB)', 2, 'Changed photo2.', 10, 2);
INSERT INTO django_admin_log VALUES (217, '2016-04-08 14:03:12.406577+05:30', '2', 'Samsung Galaxy On5(Gold, 8 GB)', 2, 'Changed photo2.', 10, 2);
INSERT INTO django_admin_log VALUES (218, '2016-04-08 14:07:02.008819+05:30', '70', 'Shirts and Tops', 2, 'Changed as_name.', 9, 2);
INSERT INTO django_admin_log VALUES (219, '2016-04-08 14:08:26.385242+05:30', '42', 'Dining and Serving', 2, 'Changed as_name.', 9, 2);
INSERT INTO django_admin_log VALUES (220, '2016-04-08 14:08:42.899446+05:30', '35', 'Sofas and Sectionals', 2, 'Changed as_name.', 9, 2);
INSERT INTO django_admin_log VALUES (221, '2016-04-08 14:08:59.455774+05:30', '28', 'LED & CFL Bulbs', 2, 'No fields changed.', 9, 2);
INSERT INTO django_admin_log VALUES (222, '2016-04-08 14:09:15.456243+05:30', '28', 'LED and CFL Bulbs', 2, 'Changed as_name.', 9, 2);
INSERT INTO django_admin_log VALUES (223, '2016-04-08 14:09:27.924148+05:30', '24', 'Diaries and Notebook', 2, 'Changed as_name.', 9, 2);
INSERT INTO django_admin_log VALUES (224, '2016-04-08 14:10:17.127174+05:30', '10', 'Comic and Graphic Novels', 2, 'Changed as_name.', 9, 2);
INSERT INTO django_admin_log VALUES (225, '2016-04-08 14:10:32.043252+05:30', '9', 'Business and Management', 2, 'Changed as_name.', 9, 2);
INSERT INTO django_admin_log VALUES (226, '2016-04-08 14:10:49.780137+05:30', '8', 'Academic and Professional', 2, 'Changed as_name.', 9, 2);
INSERT INTO django_admin_log VALUES (227, '2016-04-08 14:11:37.804407+05:30', '9', 'Books and Media', 2, 'Changed c_name.', 7, 2);
INSERT INTO django_admin_log VALUES (228, '2016-04-08 14:11:53.004648+05:30', '8', 'Home and Furniture', 2, 'Changed c_name.', 7, 2);
INSERT INTO django_admin_log VALUES (229, '2016-04-08 14:12:03.703164+05:30', '7', 'Baby and Kids', 2, 'Changed c_name.', 7, 2);
INSERT INTO django_admin_log VALUES (230, '2016-04-08 14:13:11.687157+05:30', '9', 'Books and Media', 2, 'No fields changed.', 7, 2);
INSERT INTO django_admin_log VALUES (231, '2016-04-08 14:16:10.411574+05:30', '7', 'Baby & Kids', 2, 'Changed c_name.', 7, 2);
INSERT INTO django_admin_log VALUES (232, '2016-04-08 14:18:25.1087+05:30', '9', 'Books & Media', 2, 'Changed c_name.', 7, 2);
INSERT INTO django_admin_log VALUES (233, '2016-04-08 14:19:07.028533+05:30', '8', 'Home & Furniture', 2, 'Changed c_name.', 7, 2);
INSERT INTO django_admin_log VALUES (234, '2016-04-08 15:04:04.886283+05:30', '2', 'Form', 1, 'Added.', 12, 2);
INSERT INTO django_admin_log VALUES (235, '2016-04-08 15:05:13.988668+05:30', '3', 'SIM Size', 1, 'Added.', 12, 2);
INSERT INTO django_admin_log VALUES (236, '2016-04-08 15:06:13.845705+05:30', '4', 'Touch Screen', 1, 'Added.', 12, 2);
INSERT INTO django_admin_log VALUES (237, '2016-04-08 15:14:41.206073+05:30', '2', 'ABC', 2, 'Changed user_name.', 13, 2);
INSERT INTO django_admin_log VALUES (238, '2016-04-08 17:02:41.680341+05:30', '8', 'Cottinfab Women''s Gathered Dress', 1, 'Added.', 10, 2);
INSERT INTO django_admin_log VALUES (239, '2016-04-08 17:03:19.656107+05:30', '13', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (240, '2016-04-08 17:03:29.19766+05:30', '14', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (241, '2016-04-08 17:15:49.737014+05:30', '9', 'Cottinfab Women''s Sheath Dress', 1, 'Added.', 10, 2);
INSERT INTO django_admin_log VALUES (242, '2016-04-08 17:16:20.994702+05:30', '15', 'imagee object', 1, 'Added.', 11, 2);
INSERT INTO django_admin_log VALUES (243, '2016-04-08 17:35:34.330824+05:30', '10', 'Chimpaaanzee Party Kimono Sleeve Solid Women''s Top', 1, 'Added.', 10, 2);
INSERT INTO django_admin_log VALUES (244, '2016-04-09 11:52:23.677751+05:30', '9', 'user_log object', 3, '', 18, 2);
INSERT INTO django_admin_log VALUES (245, '2016-04-09 11:52:23.725071+05:30', '8', 'user_log object', 3, '', 18, 2);
INSERT INTO django_admin_log VALUES (246, '2016-04-09 11:52:23.7384+05:30', '7', 'user_log object', 3, '', 18, 2);
INSERT INTO django_admin_log VALUES (247, '2016-04-09 11:52:23.750323+05:30', '6', 'user_log object', 3, '', 18, 2);
INSERT INTO django_admin_log VALUES (248, '2016-04-09 11:52:23.763626+05:30', '5', 'user_log object', 3, '', 18, 2);
INSERT INTO django_admin_log VALUES (249, '2016-04-09 11:52:23.775689+05:30', '4', 'user_log object', 3, '', 18, 2);
INSERT INTO django_admin_log VALUES (250, '2016-04-09 11:52:23.787801+05:30', '3', 'user_log object', 3, '', 18, 2);
INSERT INTO django_admin_log VALUES (251, '2016-04-09 11:52:23.801034+05:30', '2', 'user_log object', 3, '', 18, 2);
INSERT INTO django_admin_log VALUES (252, '2016-04-09 17:11:17.994662+05:30', '13', 'user_log object', 2, 'Changed count.', 18, 2);
INSERT INTO django_admin_log VALUES (253, '2016-04-09 17:12:53.03583+05:30', '16', 'user_log object', 2, 'Changed user and count.', 18, 2);
INSERT INTO django_admin_log VALUES (254, '2016-04-09 17:26:55.609583+05:30', '1', 'Apple iPhone 5S(Gold, 64 GB)', 1, 'Added.', 20, 2);
INSERT INTO django_admin_log VALUES (255, '2016-04-09 17:27:02.165941+05:30', '2', 'Samsung Galaxy On5(Gold, 8 GB)', 1, 'Added.', 20, 2);
INSERT INTO django_admin_log VALUES (256, '2016-04-09 17:30:40.356978+05:30', '3', 'Cottinfab Women''s Sheath Dress', 1, 'Added.', 20, 2);
INSERT INTO django_admin_log VALUES (257, '2016-04-11 10:02:12.31158+05:30', '4', 'Samsung Galaxy On5(Gold, 8 GB)', 1, 'Added.', 20, 2);
INSERT INTO django_admin_log VALUES (258, '2016-04-11 16:04:33.284314+05:30', '2', 'Apple', 1, 'Added.', 21, 2);
INSERT INTO django_admin_log VALUES (259, '2016-04-11 16:04:53.087207+05:30', '2', 'Apple', 2, 'No fields changed.', 21, 2);
INSERT INTO django_admin_log VALUES (260, '2016-04-11 16:05:07.86697+05:30', '3', 'Apple', 1, 'Added.', 21, 2);
INSERT INTO django_admin_log VALUES (261, '2016-04-11 16:05:30.768033+05:30', '4', 'Apple', 1, 'Added.', 21, 2);
INSERT INTO django_admin_log VALUES (262, '2016-04-11 16:17:35.427567+05:30', '5', 'Apple', 1, 'Added.', 21, 2);
INSERT INTO django_admin_log VALUES (263, '2016-04-11 16:19:26.550673+05:30', '6', 'Shirts and Tops', 1, 'Added.', 21, 2);
INSERT INTO django_admin_log VALUES (264, '2016-04-11 16:21:47.540858+05:30', '6', 'Dresses', 2, 'Changed subcat and prod.', 21, 2);
INSERT INTO django_admin_log VALUES (265, '2016-04-11 16:21:59.452597+05:30', '7', 'Dresses', 1, 'Added.', 21, 2);
INSERT INTO django_admin_log VALUES (266, '2016-04-11 16:27:00.404495+05:30', '2', 'Apple', 2, 'Changed photo.', 21, 2);
INSERT INTO django_admin_log VALUES (267, '2016-04-11 16:27:17.383625+05:30', '3', 'Apple', 2, 'Changed photo.', 21, 2);
INSERT INTO django_admin_log VALUES (268, '2016-04-11 16:27:38.944853+05:30', '4', 'Apple', 2, 'Changed photo.', 21, 2);
INSERT INTO django_admin_log VALUES (269, '2016-04-11 16:27:59.399669+05:30', '5', 'Apple', 2, 'Changed photo.', 21, 2);
INSERT INTO django_admin_log VALUES (270, '2016-04-11 16:28:29.529301+05:30', '6', 'Dresses', 2, 'Changed photo.', 21, 2);
INSERT INTO django_admin_log VALUES (271, '2016-04-11 16:28:59.835288+05:30', '7', 'Dresses', 2, 'Changed photo.', 21, 2);
INSERT INTO django_admin_log VALUES (272, '2016-04-11 16:31:45.199159+05:30', '7', 'Dresses', 2, 'Changed photo.', 21, 2);
INSERT INTO django_admin_log VALUES (273, '2016-04-11 16:37:56.720225+05:30', '8', 'Formal Shoes', 1, 'Added.', 21, 2);
INSERT INTO django_admin_log VALUES (274, '2016-04-11 16:39:26.048019+05:30', '9', 'Formal Shoes', 1, 'Added.', 21, 2);
INSERT INTO django_admin_log VALUES (275, '2016-04-11 16:39:55.389422+05:30', '10', 'Formal Shoes', 1, 'Added.', 21, 2);
INSERT INTO django_admin_log VALUES (276, '2016-04-11 16:40:46.55854+05:30', '11', 'Dresses', 1, 'Added.', 21, 2);
INSERT INTO django_admin_log VALUES (277, '2016-04-11 16:41:14.68508+05:30', '11', 'Dresses', 3, '', 21, 2);
INSERT INTO django_admin_log VALUES (278, '2016-04-11 16:41:38.991622+05:30', '12', 'Formal Shoes', 1, 'Added.', 21, 2);
INSERT INTO django_admin_log VALUES (279, '2016-04-12 11:26:05.755539+05:30', '7', 'Dresses', 2, 'Changed prod.', 21, 2);
INSERT INTO django_admin_log VALUES (280, '2016-04-12 11:26:26.570901+05:30', '7', 'Dresses', 2, 'Changed prod.', 21, 2);
INSERT INTO django_admin_log VALUES (281, '2016-04-12 11:26:38.901999+05:30', '6', 'Dresses', 2, 'Changed prod.', 21, 2);
INSERT INTO django_admin_log VALUES (282, '2016-04-12 11:27:16.137368+05:30', '7', 'Dresses', 2, 'Changed prod.', 21, 2);
INSERT INTO django_admin_log VALUES (283, '2016-04-12 11:28:55.682537+05:30', '5', 'Apple', 2, 'Changed prod.', 21, 2);
INSERT INTO django_admin_log VALUES (284, '2016-04-12 11:30:59.279877+05:30', '9', 'Formal Shoes', 2, 'Changed prod.', 21, 2);
INSERT INTO django_admin_log VALUES (285, '2016-04-12 11:31:06.475892+05:30', '12', 'Formal Shoes', 2, 'Changed prod.', 21, 2);
INSERT INTO django_admin_log VALUES (286, '2016-04-12 11:31:13.601933+05:30', '9', 'Formal Shoes', 2, 'No fields changed.', 21, 2);
INSERT INTO django_admin_log VALUES (287, '2016-04-12 11:31:19.482152+05:30', '8', 'Formal Shoes', 2, 'No fields changed.', 21, 2);
INSERT INTO django_admin_log VALUES (288, '2016-04-12 11:31:51.498358+05:30', '10', 'Formal Shoes', 2, 'Changed prod.', 21, 2);
INSERT INTO django_admin_log VALUES (289, '2016-04-12 11:50:41.654857+05:30', '13', 'Dresses', 1, 'Added.', 21, 2);
INSERT INTO django_admin_log VALUES (290, '2016-04-12 14:21:46.579457+05:30', '57', 'cart object', 3, '', 16, 2);
INSERT INTO django_admin_log VALUES (291, '2016-04-12 14:21:46.592708+05:30', '56', 'cart object', 3, '', 16, 2);
INSERT INTO django_admin_log VALUES (292, '2016-04-12 14:21:46.604447+05:30', '55', 'cart object', 3, '', 16, 2);
INSERT INTO django_admin_log VALUES (293, '2016-04-12 14:21:46.616168+05:30', '54', 'cart object', 3, '', 16, 2);
INSERT INTO django_admin_log VALUES (294, '2016-04-12 14:21:46.629309+05:30', '53', 'cart object', 3, '', 16, 2);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 294, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type VALUES (3, 'auth', 'group');
INSERT INTO django_content_type VALUES (4, 'auth', 'user');
INSERT INTO django_content_type VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type VALUES (7, 'adminpanel', 'categories');
INSERT INTO django_content_type VALUES (8, 'adminpanel', 'subcategories');
INSERT INTO django_content_type VALUES (9, 'adminpanel', 'alphasubcat');
INSERT INTO django_content_type VALUES (10, 'adminpanel', 'product');
INSERT INTO django_content_type VALUES (11, 'adminpanel', 'imagee');
INSERT INTO django_content_type VALUES (12, 'adminpanel', 'metadetails');
INSERT INTO django_content_type VALUES (13, 'adminpanel', 'userac');
INSERT INTO django_content_type VALUES (14, 'adminpanel', 'order');
INSERT INTO django_content_type VALUES (15, 'adminpanel', 'order_user');
INSERT INTO django_content_type VALUES (16, 'adminpanel', 'cart');
INSERT INTO django_content_type VALUES (17, 'adminpanel', 'wishlist');
INSERT INTO django_content_type VALUES (18, 'adminpanel', 'user_log');
INSERT INTO django_content_type VALUES (19, 'adminpanel', 'home_page_slider');
INSERT INTO django_content_type VALUES (20, 'adminpanel', 'add');
INSERT INTO django_content_type VALUES (21, 'adminpanel', 'pro_display');


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 21, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO django_migrations VALUES (1, 'contenttypes', '0001_initial', '2016-04-04 16:15:46.542879+05:30');
INSERT INTO django_migrations VALUES (2, 'auth', '0001_initial', '2016-04-04 16:15:47.219507+05:30');
INSERT INTO django_migrations VALUES (3, 'admin', '0001_initial', '2016-04-04 16:15:47.388703+05:30');
INSERT INTO django_migrations VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2016-04-04 16:15:47.421772+05:30');
INSERT INTO django_migrations VALUES (5, 'adminpanel', '0001_initial', '2016-04-04 16:15:48.036137+05:30');
INSERT INTO django_migrations VALUES (6, 'adminpanel', '0002_alphasubcat', '2016-04-04 16:15:48.134272+05:30');
INSERT INTO django_migrations VALUES (7, 'adminpanel', '0003_product_photo', '2016-04-04 16:15:48.284075+05:30');
INSERT INTO django_migrations VALUES (8, 'adminpanel', '0004_auto_20160310_0500', '2016-04-04 16:15:48.340335+05:30');
INSERT INTO django_migrations VALUES (9, 'adminpanel', '0005_auto_20160310_0646', '2016-04-04 16:15:48.367123+05:30');
INSERT INTO django_migrations VALUES (10, 'adminpanel', '0006_auto_20160310_0649', '2016-04-04 16:15:48.392164+05:30');
INSERT INTO django_migrations VALUES (11, 'adminpanel', '0007_auto_20160310_0655', '2016-04-04 16:15:48.413065+05:30');
INSERT INTO django_migrations VALUES (12, 'adminpanel', '0008_auto_20160310_0701', '2016-04-04 16:15:48.435302+05:30');
INSERT INTO django_migrations VALUES (13, 'adminpanel', '0009_product_p_discription', '2016-04-04 16:15:48.50616+05:30');
INSERT INTO django_migrations VALUES (14, 'adminpanel', '0010_userac_user_email', '2016-04-04 16:15:48.674795+05:30');
INSERT INTO django_migrations VALUES (15, 'adminpanel', '0011_userac_user_surname', '2016-04-04 16:15:48.867407+05:30');
INSERT INTO django_migrations VALUES (16, 'adminpanel', '0012_cart_qty', '2016-04-04 16:15:49.006693+05:30');
INSERT INTO django_migrations VALUES (17, 'adminpanel', '0013_auto_20160314_1138', '2016-04-04 16:15:49.083939+05:30');
INSERT INTO django_migrations VALUES (18, 'adminpanel', '0014_userac_user_m_number', '2016-04-04 16:15:49.127343+05:30');
INSERT INTO django_migrations VALUES (19, 'adminpanel', '0015_order_user', '2016-04-04 16:15:49.328585+05:30');
INSERT INTO django_migrations VALUES (20, 'adminpanel', '0016_order_qty', '2016-04-04 16:15:49.469687+05:30');
INSERT INTO django_migrations VALUES (21, 'adminpanel', '0017_wishlist', '2016-04-04 16:15:49.592314+05:30');
INSERT INTO django_migrations VALUES (22, 'adminpanel', '0018_imagee', '2016-04-04 16:15:49.690345+05:30');
INSERT INTO django_migrations VALUES (23, 'adminpanel', '0019_imagee_ps_id', '2016-04-04 16:15:49.764968+05:30');
INSERT INTO django_migrations VALUES (24, 'adminpanel', '0020_remove_imagee_ps_id', '2016-04-04 16:15:49.81496+05:30');
INSERT INTO django_migrations VALUES (25, 'adminpanel', '0021_home_page_slider', '2016-04-04 16:15:49.970775+05:30');
INSERT INTO django_migrations VALUES (26, 'adminpanel', '0022_user_log', '2016-04-04 16:15:50.196977+05:30');
INSERT INTO django_migrations VALUES (27, 'adminpanel', '0023_auto_20160331_0409', '2016-04-04 16:15:50.25468+05:30');
INSERT INTO django_migrations VALUES (28, 'contenttypes', '0002_remove_content_type_name', '2016-04-04 16:15:50.31289+05:30');
INSERT INTO django_migrations VALUES (29, 'auth', '0002_alter_permission_name_max_length', '2016-04-04 16:15:50.35479+05:30');
INSERT INTO django_migrations VALUES (30, 'auth', '0003_alter_user_email_max_length', '2016-04-04 16:15:50.386453+05:30');
INSERT INTO django_migrations VALUES (31, 'auth', '0004_alter_user_username_opts', '2016-04-04 16:15:50.411926+05:30');
INSERT INTO django_migrations VALUES (32, 'auth', '0005_alter_user_last_login_null', '2016-04-04 16:15:50.457693+05:30');
INSERT INTO django_migrations VALUES (33, 'auth', '0006_require_contenttypes_0002', '2016-04-04 16:15:50.469392+05:30');
INSERT INTO django_migrations VALUES (34, 'auth', '0007_alter_validators_add_error_messages', '2016-04-04 16:15:50.494728+05:30');
INSERT INTO django_migrations VALUES (35, 'sessions', '0001_initial', '2016-04-04 16:15:50.630183+05:30');
INSERT INTO django_migrations VALUES (36, 'adminpanel', '0024_product_photo2', '2016-04-08 11:10:37.116932+05:30');
INSERT INTO django_migrations VALUES (37, 'adminpanel', '0025_add', '2016-04-09 17:26:33.802874+05:30');
INSERT INTO django_migrations VALUES (38, 'adminpanel', '0026_pro_display', '2016-04-11 15:58:45.146838+05:30');
INSERT INTO django_migrations VALUES (39, 'adminpanel', '0027_pro_display_photo', '2016-04-11 16:25:06.25337+05:30');


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 39, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO django_session VALUES ('bqcu18pzn1mylxvik2qcmmb0v25ku3tp', 'OThlYWZlMWE3NzcyNmFkNjY5ZTJkYzUwOWYzOWZkNzEzM2YyMWQwZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWI5NWU4ZTRlYjUyZjUzOWU4ZTZjMWZlOGFlN2JiNjU1ZTZmM2YyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwidV9zdXJuYW1lIjoiU2Vzc2lvbiIsInVfbmFtZSI6Ikd1ZXN0In0=', '2016-04-18 17:03:33.508998+05:30');
INSERT INTO django_session VALUES ('4zopyrjs3dnc2dvr6g5kclai6cecijw5', 'NjBkOGZjM2RhNGRkNTQxNTUzODJiYjMyMTY1Zjg1ZWY3Njk2NTE2ODp7InVfc3VybmFtZSI6InRhcnBhcmEiLCJfYXV0aF91c2VyX2lkIjoiMiIsInVfbmFtZSI6ImppZ2FyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJ1X2lkIjoxLCJfYXV0aF91c2VyX2hhc2giOiI3ODQ1OGEyYzJiODk0M2RiMzlmYTI0NDNmOGIyYzUxZmU4ZGEwY2Q1In0=', '2016-04-23 16:33:53.256263+05:30');
INSERT INTO django_session VALUES ('hse1rvekj0jwkuvxqeshvao28ahakc1r', 'NjlhNTc4ZWU2OGNhNDczM2E4NzFhNjYzMmZlZGRkNWFkYjU5ZTdhMTp7InVfc3VybmFtZSI6IlNlc3Npb24iLCJ1X25hbWUiOiJHdWVzdCJ9', '2016-04-26 10:42:12.774104+05:30');
INSERT INTO django_session VALUES ('1kd9caatwjd7qhk2yj08i8l5je4egqx5', 'NjlhNTc4ZWU2OGNhNDczM2E4NzFhNjYzMmZlZGRkNWFkYjU5ZTdhMTp7InVfc3VybmFtZSI6IlNlc3Npb24iLCJ1X25hbWUiOiJHdWVzdCJ9', '2016-04-26 10:47:04.924536+05:30');
INSERT INTO django_session VALUES ('zbmzry1a0bzid7zy98tfm23ephltnl7d', 'NGYxMmY2ODY0YWU0NWIyYzI4MGU5ZDVhYzI5Y2UyOWNlNzMwMTE5Njp7InVfbmFtZSI6Ikd1ZXN0IiwidV9zdXJuYW1lIjoiU2Vzc2lvbiJ9', '2016-04-20 15:32:54.54775+05:30');
INSERT INTO django_session VALUES ('yo79tlklk0wj3gay8c78anhd1b7r2j3p', 'ZGI3YTE4OTVkOGRhMTJlOWM0MGQ3NmMzODA1ZjY0MjMwYjE1NjE1OTp7InVfbmFtZSI6Ikd1ZXN0IiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJ1X3N1cm5hbWUiOiJTZXNzaW9uIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzg0NThhMmMyYjg5NDNkYjM5ZmEyNDQzZjhiMmM1MWZlOGRhMGNkNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-04-20 16:00:29.43425+05:30');
INSERT INTO django_session VALUES ('tucblry5t0q0ptiayzl8tjmwmnady43h', 'NjlhNTc4ZWU2OGNhNDczM2E4NzFhNjYzMmZlZGRkNWFkYjU5ZTdhMTp7InVfc3VybmFtZSI6IlNlc3Npb24iLCJ1X25hbWUiOiJHdWVzdCJ9', '2016-04-26 10:49:43.906738+05:30');
INSERT INTO django_session VALUES ('47kxpjuw9osdc41i64qa3dsdcou9mzc2', 'YmIzMmU1OGEzNDg5ZDhjYWM2OTA4YTMxMTZmZGYxMDIxZjFmMWFhNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzg0NThhMmMyYjg5NDNkYjM5ZmEyNDQzZjhiMmM1MWZlOGRhMGNkNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2016-04-20 16:02:03.015989+05:30');
INSERT INTO django_session VALUES ('4k6km8qhs8cjtpswnv8h4pmdhi16ry33', 'NjlhNTc4ZWU2OGNhNDczM2E4NzFhNjYzMmZlZGRkNWFkYjU5ZTdhMTp7InVfc3VybmFtZSI6IlNlc3Npb24iLCJ1X25hbWUiOiJHdWVzdCJ9', '2016-04-21 09:48:42.265249+05:30');
INSERT INTO django_session VALUES ('rqg10vj8oyrzligjn6sejykzxj6xx1uk', 'NjlhNTc4ZWU2OGNhNDczM2E4NzFhNjYzMmZlZGRkNWFkYjU5ZTdhMTp7InVfc3VybmFtZSI6IlNlc3Npb24iLCJ1X25hbWUiOiJHdWVzdCJ9', '2016-04-23 17:14:25.577472+05:30');
INSERT INTO django_session VALUES ('jqewyao2oa7er7qrljlwe10t99ajitqi', 'NjlhNTc4ZWU2OGNhNDczM2E4NzFhNjYzMmZlZGRkNWFkYjU5ZTdhMTp7InVfc3VybmFtZSI6IlNlc3Npb24iLCJ1X25hbWUiOiJHdWVzdCJ9', '2016-04-26 10:50:55.8772+05:30');
INSERT INTO django_session VALUES ('pddv1iz15bcz85y7j948h2m4szvu4r9g', 'NmZhMDZmZDQzYjY5MmY2YmY5NGQ2ZDJhNmMxZmFiYjJhYzc2MjdlNzp7InVfaWQiOjEsInVfbmFtZSI6ImppZ2FyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzg0NThhMmMyYjg5NDNkYjM5ZmEyNDQzZjhiMmM1MWZlOGRhMGNkNSIsInVfc3VybmFtZSI6InRhcnBhcmEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2016-04-26 11:25:50.579636+05:30');
INSERT INTO django_session VALUES ('5r9kp06c49g1ibwnqo9o346bmcmjknk4', 'Y2RiZGRiMjI0NjRjN2QzZDVhNTQwNDcxZWIyZGExYTA1MDRjN2Y5Yzp7InVfc3VybmFtZSI6IlNlc3Npb24iLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIiwidV9uYW1lIjoiR3Vlc3QiLCJfYXV0aF91c2VyX2hhc2giOiI3ODQ1OGEyYzJiODk0M2RiMzlmYTI0NDNmOGIyYzUxZmU4ZGEwY2Q1In0=', '2016-04-21 12:50:01.720352+05:30');
INSERT INTO django_session VALUES ('ixiwojw4lz4sjv1bjlbbst8k1h36z6ik', 'NjlhNTc4ZWU2OGNhNDczM2E4NzFhNjYzMmZlZGRkNWFkYjU5ZTdhMTp7InVfc3VybmFtZSI6IlNlc3Npb24iLCJ1X25hbWUiOiJHdWVzdCJ9', '2016-04-26 12:32:57.960301+05:30');
INSERT INTO django_session VALUES ('vcfwtfeh4ckrfili8qrlsifbkl0ya02a', 'NGYxMmY2ODY0YWU0NWIyYzI4MGU5ZDVhYzI5Y2UyOWNlNzMwMTE5Njp7InVfbmFtZSI6Ikd1ZXN0IiwidV9zdXJuYW1lIjoiU2Vzc2lvbiJ9', '2016-04-26 17:37:28.144446+05:30');
INSERT INTO django_session VALUES ('jh3rwdiriajoli97vl9txzzrwyrve4g1', 'NDhlMTRhNmVkODI3Zjk4MzBhNjQwNmM4ZGE3NWY3NDNkOGIwNGZkMTp7InVfc3VybmFtZSI6IkRlc2FpIiwidV9pZCI6MiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMiIsInVfbmFtZSI6IkppbmFsIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzg0NThhMmMyYjg5NDNkYjM5ZmEyNDQzZjhiMmM1MWZlOGRhMGNkNSJ9', '2016-04-21 17:42:14.188562+05:30');
INSERT INTO django_session VALUES ('lwiko1le675ajmuwzk6invqky34ug47u', 'OGVlNDZkMDIzODAzYjdhN2JkMTM2MDc5Y2QzNTQwOGM1MzAyMWIzMTp7InVfbmFtZSI6ImppZ2FyIiwidV9zdXJuYW1lIjoidGFycGFyYSIsInVfaWQiOjF9', '2016-04-23 14:02:29.52727+05:30');
INSERT INTO django_session VALUES ('7qm674xran1kqdcw8cyxpr0bhgclacvr', 'YjFjMmJjMWNhOTJiMzM3OTFhM2FmZTI2MzY4Mzg5MGYzNGE4NDIyNTp7InRvdGFsIjoiMTA3NSJ9', '2016-04-26 17:41:00.631009+05:30');
INSERT INTO django_session VALUES ('a3zxxqyvyp89qc2bxdq7xoksaeexh1qu', 'NGYxMmY2ODY0YWU0NWIyYzI4MGU5ZDVhYzI5Y2UyOWNlNzMwMTE5Njp7InVfbmFtZSI6Ikd1ZXN0IiwidV9zdXJuYW1lIjoiU2Vzc2lvbiJ9', '2016-04-26 17:41:09.862428+05:30');


--
-- Name: adminpanel_add_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_add
    ADD CONSTRAINT adminpanel_add_pkey PRIMARY KEY (id);


--
-- Name: adminpanel_alphasubcat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_alphasubcat
    ADD CONSTRAINT adminpanel_alphasubcat_pkey PRIMARY KEY (a_id);


--
-- Name: adminpanel_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_cart
    ADD CONSTRAINT adminpanel_cart_pkey PRIMARY KEY (cart_id);


--
-- Name: adminpanel_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_categories
    ADD CONSTRAINT adminpanel_categories_pkey PRIMARY KEY (c_id);


--
-- Name: adminpanel_home_page_slider_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_home_page_slider
    ADD CONSTRAINT adminpanel_home_page_slider_pkey PRIMARY KEY (id);


--
-- Name: adminpanel_imagee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_imagee
    ADD CONSTRAINT adminpanel_imagee_pkey PRIMARY KEY (p_id);


--
-- Name: adminpanel_metadetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_metadetails
    ADD CONSTRAINT adminpanel_metadetails_pkey PRIMARY KEY (m_id);


--
-- Name: adminpanel_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_order
    ADD CONSTRAINT adminpanel_order_pkey PRIMARY KEY (o_id);


--
-- Name: adminpanel_order_user_o_order_id_order_user_id_c5c1ce47_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_order_user_o_order_id
    ADD CONSTRAINT adminpanel_order_user_o_order_id_order_user_id_c5c1ce47_uniq UNIQUE (order_user_id, order_id);


--
-- Name: adminpanel_order_user_o_order_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_order_user_o_order_id
    ADD CONSTRAINT adminpanel_order_user_o_order_id_pkey PRIMARY KEY (id);


--
-- Name: adminpanel_order_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_order_user
    ADD CONSTRAINT adminpanel_order_user_pkey PRIMARY KEY (o_user_id);


--
-- Name: adminpanel_pro_display_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_pro_display
    ADD CONSTRAINT adminpanel_pro_display_pkey PRIMARY KEY (id);


--
-- Name: adminpanel_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_product
    ADD CONSTRAINT adminpanel_product_pkey PRIMARY KEY (p_id);


--
-- Name: adminpanel_subcategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_subcategories
    ADD CONSTRAINT adminpanel_subcategories_pkey PRIMARY KEY (s_id);


--
-- Name: adminpanel_user_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_user_log
    ADD CONSTRAINT adminpanel_user_log_pkey PRIMARY KEY (log_id);


--
-- Name: adminpanel_user_log_produ_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_user_log
    ADD CONSTRAINT adminpanel_user_log_produ_id_key UNIQUE (produ_id);


--
-- Name: adminpanel_user_log_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_user_log_user
    ADD CONSTRAINT adminpanel_user_log_user_pkey PRIMARY KEY (id);


--
-- Name: adminpanel_user_log_user_user_log_id_fc811b43_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_user_log_user
    ADD CONSTRAINT adminpanel_user_log_user_user_log_id_fc811b43_uniq UNIQUE (user_log_id, userac_id);


--
-- Name: adminpanel_userac_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_userac
    ADD CONSTRAINT adminpanel_userac_pkey PRIMARY KEY (u_id);


--
-- Name: adminpanel_userac_user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_userac
    ADD CONSTRAINT adminpanel_userac_user_email_key UNIQUE (user_email);


--
-- Name: adminpanel_userac_user_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_userac
    ADD CONSTRAINT adminpanel_userac_user_name_key UNIQUE (user_name);


--
-- Name: adminpanel_userac_user_surname_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_userac
    ADD CONSTRAINT adminpanel_userac_user_surname_key UNIQUE (user_surname);


--
-- Name: adminpanel_wishlist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY adminpanel_wishlist
    ADD CONSTRAINT adminpanel_wishlist_pkey PRIMARY KEY (wish_id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: adminpanel_add_516e6b9b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_add_516e6b9b ON adminpanel_add USING btree (prod_id);


--
-- Name: adminpanel_alphasubcat_6ad62fed; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_alphasubcat_6ad62fed ON adminpanel_alphasubcat USING btree (as_id_id);


--
-- Name: adminpanel_cart_48940b22; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_cart_48940b22 ON adminpanel_cart USING btree (op_id_id);


--
-- Name: adminpanel_cart_b73afd7c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_cart_b73afd7c ON adminpanel_cart USING btree (ou_id_id);


--
-- Name: adminpanel_home_page_slider_05e7bb57; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_home_page_slider_05e7bb57 ON adminpanel_home_page_slider USING btree (cat_id);


--
-- Name: adminpanel_home_page_slider_229aeae9; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_home_page_slider_229aeae9 ON adminpanel_home_page_slider USING btree (sub_id);


--
-- Name: adminpanel_home_page_slider_25821175; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_home_page_slider_25821175 ON adminpanel_home_page_slider USING btree (alpha_id);


--
-- Name: adminpanel_imagee_46c1b263; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_imagee_46c1b263 ON adminpanel_imagee USING btree (pp_id_id);


--
-- Name: adminpanel_metadetails_42ff8acb; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_metadetails_42ff8acb ON adminpanel_metadetails USING btree (mp_id_id);


--
-- Name: adminpanel_order_48940b22; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_order_48940b22 ON adminpanel_order USING btree (op_id_id);


--
-- Name: adminpanel_order_b73afd7c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_order_b73afd7c ON adminpanel_order USING btree (ou_id_id);


--
-- Name: adminpanel_order_user_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_order_user_e8701ad4 ON adminpanel_order_user USING btree (user_id);


--
-- Name: adminpanel_order_user_o_order_id_69dfcb07; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_order_user_o_order_id_69dfcb07 ON adminpanel_order_user_o_order_id USING btree (order_id);


--
-- Name: adminpanel_order_user_o_order_id_a05b867a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_order_user_o_order_id_a05b867a ON adminpanel_order_user_o_order_id USING btree (order_user_id);


--
-- Name: adminpanel_pro_display_516e6b9b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_pro_display_516e6b9b ON adminpanel_pro_display USING btree (prod_id);


--
-- Name: adminpanel_pro_display_dc1599bf; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_pro_display_dc1599bf ON adminpanel_pro_display USING btree (subcat_id);


--
-- Name: adminpanel_product_1b5bdfe8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_product_1b5bdfe8 ON adminpanel_product USING btree (ps_id_id);


--
-- Name: adminpanel_subcategories_16f93b43; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_subcategories_16f93b43 ON adminpanel_subcategories USING btree (sc_id_id);


--
-- Name: adminpanel_user_log_user_2733ddf3; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_user_log_user_2733ddf3 ON adminpanel_user_log_user USING btree (user_log_id);


--
-- Name: adminpanel_user_log_user_de39222a; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_user_log_user_de39222a ON adminpanel_user_log_user USING btree (userac_id);


--
-- Name: adminpanel_userac_user_name_49aa65a3_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_userac_user_name_49aa65a3_like ON adminpanel_userac USING btree (user_name varchar_pattern_ops);


--
-- Name: adminpanel_wishlist_48940b22; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_wishlist_48940b22 ON adminpanel_wishlist USING btree (op_id_id);


--
-- Name: adminpanel_wishlist_b73afd7c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX adminpanel_wishlist_b73afd7c ON adminpanel_wishlist USING btree (ou_id_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: admin_order_user_id_61d66101_fk_adminpanel_order_user_o_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_order_user_o_order_id
    ADD CONSTRAINT admin_order_user_id_61d66101_fk_adminpanel_order_user_o_user_id FOREIGN KEY (order_user_id) REFERENCES adminpanel_order_user(o_user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_a_as_id_id_91733506_fk_adminpanel_subcategories_s_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_alphasubcat
    ADD CONSTRAINT adminpanel_a_as_id_id_91733506_fk_adminpanel_subcategories_s_id FOREIGN KEY (as_id_id) REFERENCES adminpanel_subcategories(s_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_add_prod_id_c678f03c_fk_adminpanel_product_p_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_add
    ADD CONSTRAINT adminpanel_add_prod_id_c678f03c_fk_adminpanel_product_p_id FOREIGN KEY (prod_id) REFERENCES adminpanel_product(p_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_cart_op_id_id_b8840dad_fk_adminpanel_product_p_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_cart
    ADD CONSTRAINT adminpanel_cart_op_id_id_b8840dad_fk_adminpanel_product_p_id FOREIGN KEY (op_id_id) REFERENCES adminpanel_product(p_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_cart_ou_id_id_25aa950f_fk_adminpanel_userac_u_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_cart
    ADD CONSTRAINT adminpanel_cart_ou_id_id_25aa950f_fk_adminpanel_userac_u_id FOREIGN KEY (ou_id_id) REFERENCES adminpanel_userac(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_hom_alpha_id_d1942c76_fk_adminpanel_alphasubcat_a_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_home_page_slider
    ADD CONSTRAINT adminpanel_hom_alpha_id_d1942c76_fk_adminpanel_alphasubcat_a_id FOREIGN KEY (alpha_id) REFERENCES adminpanel_alphasubcat(a_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_hom_sub_id_fb20148e_fk_adminpanel_subcategories_s_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_home_page_slider
    ADD CONSTRAINT adminpanel_hom_sub_id_fb20148e_fk_adminpanel_subcategories_s_id FOREIGN KEY (sub_id) REFERENCES adminpanel_subcategories(s_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_home_p_cat_id_e32143ce_fk_adminpanel_categories_c_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_home_page_slider
    ADD CONSTRAINT adminpanel_home_p_cat_id_e32143ce_fk_adminpanel_categories_c_id FOREIGN KEY (cat_id) REFERENCES adminpanel_categories(c_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_imagee_pp_id_id_2c61a84f_fk_adminpanel_product_p_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_imagee
    ADD CONSTRAINT adminpanel_imagee_pp_id_id_2c61a84f_fk_adminpanel_product_p_id FOREIGN KEY (pp_id_id) REFERENCES adminpanel_product(p_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_metadet_mp_id_id_17916c9c_fk_adminpanel_product_p_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_metadetails
    ADD CONSTRAINT adminpanel_metadet_mp_id_id_17916c9c_fk_adminpanel_product_p_id FOREIGN KEY (mp_id_id) REFERENCES adminpanel_product(p_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_order_op_id_id_617e42d0_fk_adminpanel_product_p_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_order
    ADD CONSTRAINT adminpanel_order_op_id_id_617e42d0_fk_adminpanel_product_p_id FOREIGN KEY (op_id_id) REFERENCES adminpanel_product(p_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_order_ou_id_id_aaef94cb_fk_adminpanel_userac_u_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_order
    ADD CONSTRAINT adminpanel_order_ou_id_id_aaef94cb_fk_adminpanel_userac_u_id FOREIGN KEY (ou_id_id) REFERENCES adminpanel_userac(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_order_use_order_id_c89f1d62_fk_adminpanel_order_o_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_order_user_o_order_id
    ADD CONSTRAINT adminpanel_order_use_order_id_c89f1d62_fk_adminpanel_order_o_id FOREIGN KEY (order_id) REFERENCES adminpanel_order(o_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_order_use_user_id_f5d68676_fk_adminpanel_userac_u_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_order_user
    ADD CONSTRAINT adminpanel_order_use_user_id_f5d68676_fk_adminpanel_userac_u_id FOREIGN KEY (user_id) REFERENCES adminpanel_userac(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_pr_subcat_id_60802111_fk_adminpanel_alphasubcat_a_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_pro_display
    ADD CONSTRAINT adminpanel_pr_subcat_id_60802111_fk_adminpanel_alphasubcat_a_id FOREIGN KEY (subcat_id) REFERENCES adminpanel_alphasubcat(a_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_pro_disp_prod_id_baba4cc4_fk_adminpanel_product_p_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_pro_display
    ADD CONSTRAINT adminpanel_pro_disp_prod_id_baba4cc4_fk_adminpanel_product_p_id FOREIGN KEY (prod_id) REFERENCES adminpanel_product(p_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_pro_ps_id_id_88e5b7d0_fk_adminpanel_alphasubcat_a_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_product
    ADD CONSTRAINT adminpanel_pro_ps_id_id_88e5b7d0_fk_adminpanel_alphasubcat_a_id FOREIGN KEY (ps_id_id) REFERENCES adminpanel_alphasubcat(a_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_subc_sc_id_id_f5552637_fk_adminpanel_categories_c_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_subcategories
    ADD CONSTRAINT adminpanel_subc_sc_id_id_f5552637_fk_adminpanel_categories_c_id FOREIGN KEY (sc_id_id) REFERENCES adminpanel_categories(c_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_u_user_log_id_57f13533_fk_adminpanel_user_log_log_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_user_log_user
    ADD CONSTRAINT adminpanel_u_user_log_id_57f13533_fk_adminpanel_user_log_log_id FOREIGN KEY (user_log_id) REFERENCES adminpanel_user_log(log_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_user_lo_produ_id_40628761_fk_adminpanel_product_p_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_user_log
    ADD CONSTRAINT adminpanel_user_lo_produ_id_40628761_fk_adminpanel_product_p_id FOREIGN KEY (produ_id) REFERENCES adminpanel_product(p_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_user_lo_userac_id_374cca38_fk_adminpanel_userac_u_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_user_log_user
    ADD CONSTRAINT adminpanel_user_lo_userac_id_374cca38_fk_adminpanel_userac_u_id FOREIGN KEY (userac_id) REFERENCES adminpanel_userac(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_wishlis_op_id_id_fa373db0_fk_adminpanel_product_p_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_wishlist
    ADD CONSTRAINT adminpanel_wishlis_op_id_id_fa373db0_fk_adminpanel_product_p_id FOREIGN KEY (op_id_id) REFERENCES adminpanel_product(p_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: adminpanel_wishlist_ou_id_id_5af92222_fk_adminpanel_userac_u_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY adminpanel_wishlist
    ADD CONSTRAINT adminpanel_wishlist_ou_id_id_5af92222_fk_adminpanel_userac_u_id FOREIGN KEY (ou_id_id) REFERENCES adminpanel_userac(u_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

