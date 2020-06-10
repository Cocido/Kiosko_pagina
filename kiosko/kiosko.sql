--
-- PostgreSQL database dump
--

-- Dumped from database version 10.13 (Ubuntu 10.13-1.pgdg18.04+1)
-- Dumped by pg_dump version 10.13 (Ubuntu 10.13-1.pgdg18.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO cocido;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO cocido;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO cocido;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO cocido;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO cocido;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO cocido;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO cocido;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO cocido;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO cocido;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO cocido;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO cocido;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO cocido;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO cocido;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO cocido;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO cocido;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO cocido;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO cocido;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO cocido;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO cocido;

--
-- Name: inicio_articulo; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.inicio_articulo (
    id_art integer NOT NULL,
    nombre_art character varying(25) NOT NULL,
    precio_a numeric(3,2) NOT NULL,
    cant_a integer NOT NULL,
    id_rubro_id integer NOT NULL
);


ALTER TABLE public.inicio_articulo OWNER TO cocido;

--
-- Name: inicio_articulos_id_art_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.inicio_articulos_id_art_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inicio_articulos_id_art_seq OWNER TO cocido;

--
-- Name: inicio_articulos_id_art_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.inicio_articulos_id_art_seq OWNED BY public.inicio_articulo.id_art;


--
-- Name: inicio_contacto; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.inicio_contacto (
    id_contacto integer NOT NULL,
    telefono numeric NOT NULL,
    correo_electronico character varying(254) NOT NULL
);


ALTER TABLE public.inicio_contacto OWNER TO cocido;

--
-- Name: inicio_contacto_id_contacto_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.inicio_contacto_id_contacto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inicio_contacto_id_contacto_seq OWNER TO cocido;

--
-- Name: inicio_contacto_id_contacto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.inicio_contacto_id_contacto_seq OWNED BY public.inicio_contacto.id_contacto;


--
-- Name: inicio_datos_personales; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.inicio_datos_personales (
    id_datos_personales integer NOT NULL,
    nombre character varying(40) NOT NULL,
    apellido character varying(40) NOT NULL,
    fecha_nac timestamp with time zone NOT NULL,
    id_contacto_id integer NOT NULL,
    id_domicilio_id integer NOT NULL
);


ALTER TABLE public.inicio_datos_personales OWNER TO cocido;

--
-- Name: inicio_datos_personales_id_datos_personales_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.inicio_datos_personales_id_datos_personales_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inicio_datos_personales_id_datos_personales_seq OWNER TO cocido;

--
-- Name: inicio_datos_personales_id_datos_personales_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.inicio_datos_personales_id_datos_personales_seq OWNED BY public.inicio_datos_personales.id_datos_personales;


--
-- Name: inicio_det_factura; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.inicio_det_factura (
    id_det_factura integer NOT NULL,
    precio_t numeric(3,2) NOT NULL,
    fecha_c timestamp with time zone NOT NULL,
    id_tpo_persona_id integer NOT NULL
);


ALTER TABLE public.inicio_det_factura OWNER TO cocido;

--
-- Name: inicio_det_factura_id_det_factura_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.inicio_det_factura_id_det_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inicio_det_factura_id_det_factura_seq OWNER TO cocido;

--
-- Name: inicio_det_factura_id_det_factura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.inicio_det_factura_id_det_factura_seq OWNED BY public.inicio_det_factura.id_det_factura;


--
-- Name: inicio_detalle_venta; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.inicio_detalle_venta (
    id_detalle_venta integer NOT NULL,
    fecha_venta timestamp with time zone NOT NULL,
    precio numeric(3,3) NOT NULL,
    cantidad_ventas integer NOT NULL
);


ALTER TABLE public.inicio_detalle_venta OWNER TO cocido;

--
-- Name: inicio_detalle_venta_id_detalle_venta_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.inicio_detalle_venta_id_detalle_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inicio_detalle_venta_id_detalle_venta_seq OWNER TO cocido;

--
-- Name: inicio_detalle_venta_id_detalle_venta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.inicio_detalle_venta_id_detalle_venta_seq OWNED BY public.inicio_detalle_venta.id_detalle_venta;


--
-- Name: inicio_domicilio; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.inicio_domicilio (
    id_domicilio integer NOT NULL,
    descripcion character varying(150) NOT NULL
);


ALTER TABLE public.inicio_domicilio OWNER TO cocido;

--
-- Name: inicio_domicilio_id_domicilio_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.inicio_domicilio_id_domicilio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inicio_domicilio_id_domicilio_seq OWNER TO cocido;

--
-- Name: inicio_domicilio_id_domicilio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.inicio_domicilio_id_domicilio_seq OWNED BY public.inicio_domicilio.id_domicilio;


--
-- Name: inicio_factura; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.inicio_factura (
    id_factura integer NOT NULL,
    "Descripcion" character varying(100) NOT NULL,
    id_art_id integer NOT NULL,
    id_det_factura_id integer NOT NULL
);


ALTER TABLE public.inicio_factura OWNER TO cocido;

--
-- Name: inicio_factura_id_factura_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.inicio_factura_id_factura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inicio_factura_id_factura_seq OWNER TO cocido;

--
-- Name: inicio_factura_id_factura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.inicio_factura_id_factura_seq OWNED BY public.inicio_factura.id_factura;


--
-- Name: inicio_legajo_empleado; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.inicio_legajo_empleado (
    id_legajo_empl integer NOT NULL,
    antiguedad character varying(5) NOT NULL,
    salario numeric(10,1) NOT NULL
);


ALTER TABLE public.inicio_legajo_empleado OWNER TO cocido;

--
-- Name: inicio_legajo_empleado_id_legajo_empl_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.inicio_legajo_empleado_id_legajo_empl_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inicio_legajo_empleado_id_legajo_empl_seq OWNER TO cocido;

--
-- Name: inicio_legajo_empleado_id_legajo_empl_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.inicio_legajo_empleado_id_legajo_empl_seq OWNED BY public.inicio_legajo_empleado.id_legajo_empl;


--
-- Name: inicio_persona; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.inicio_persona (
    id_persona integer NOT NULL,
    id_datos_personales_id integer NOT NULL,
    id_legajo_empl_id integer NOT NULL,
    id_tpo_persona_id integer NOT NULL
);


ALTER TABLE public.inicio_persona OWNER TO cocido;

--
-- Name: inicio_persona_id_persona_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.inicio_persona_id_persona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inicio_persona_id_persona_seq OWNER TO cocido;

--
-- Name: inicio_persona_id_persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.inicio_persona_id_persona_seq OWNED BY public.inicio_persona.id_persona;


--
-- Name: inicio_proveedor; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.inicio_proveedor (
    id_proveedor integer NOT NULL,
    descripcion character varying(40) NOT NULL
);


ALTER TABLE public.inicio_proveedor OWNER TO cocido;

--
-- Name: inicio_proveedores_id_proveedor_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.inicio_proveedores_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inicio_proveedores_id_proveedor_seq OWNER TO cocido;

--
-- Name: inicio_proveedores_id_proveedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.inicio_proveedores_id_proveedor_seq OWNED BY public.inicio_proveedor.id_proveedor;


--
-- Name: inicio_rubro; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.inicio_rubro (
    id_rubro integer NOT NULL,
    descrip_r character varying(15) NOT NULL
);


ALTER TABLE public.inicio_rubro OWNER TO cocido;

--
-- Name: inicio_rubros_id_rubro_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.inicio_rubros_id_rubro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inicio_rubros_id_rubro_seq OWNER TO cocido;

--
-- Name: inicio_rubros_id_rubro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.inicio_rubros_id_rubro_seq OWNED BY public.inicio_rubro.id_rubro;


--
-- Name: inicio_tipo_persona; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.inicio_tipo_persona (
    id_tpo_persona integer NOT NULL,
    descripcion_tpo_p character varying(15) NOT NULL
);


ALTER TABLE public.inicio_tipo_persona OWNER TO cocido;

--
-- Name: inicio_tipo_persona_id_tpo_persona_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.inicio_tipo_persona_id_tpo_persona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inicio_tipo_persona_id_tpo_persona_seq OWNER TO cocido;

--
-- Name: inicio_tipo_persona_id_tpo_persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.inicio_tipo_persona_id_tpo_persona_seq OWNED BY public.inicio_tipo_persona.id_tpo_persona;


--
-- Name: inicio_venta; Type: TABLE; Schema: public; Owner: cocido
--

CREATE TABLE public.inicio_venta (
    id_venta integer NOT NULL,
    id_detalle_venta_id integer NOT NULL,
    id_factura_id integer NOT NULL,
    id_persona_id integer NOT NULL
);


ALTER TABLE public.inicio_venta OWNER TO cocido;

--
-- Name: inicio_venta_id_venta_seq; Type: SEQUENCE; Schema: public; Owner: cocido
--

CREATE SEQUENCE public.inicio_venta_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inicio_venta_id_venta_seq OWNER TO cocido;

--
-- Name: inicio_venta_id_venta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cocido
--

ALTER SEQUENCE public.inicio_venta_id_venta_seq OWNED BY public.inicio_venta.id_venta;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: inicio_articulo id_art; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_articulo ALTER COLUMN id_art SET DEFAULT nextval('public.inicio_articulos_id_art_seq'::regclass);


--
-- Name: inicio_contacto id_contacto; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_contacto ALTER COLUMN id_contacto SET DEFAULT nextval('public.inicio_contacto_id_contacto_seq'::regclass);


--
-- Name: inicio_datos_personales id_datos_personales; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_datos_personales ALTER COLUMN id_datos_personales SET DEFAULT nextval('public.inicio_datos_personales_id_datos_personales_seq'::regclass);


--
-- Name: inicio_det_factura id_det_factura; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_det_factura ALTER COLUMN id_det_factura SET DEFAULT nextval('public.inicio_det_factura_id_det_factura_seq'::regclass);


--
-- Name: inicio_detalle_venta id_detalle_venta; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_detalle_venta ALTER COLUMN id_detalle_venta SET DEFAULT nextval('public.inicio_detalle_venta_id_detalle_venta_seq'::regclass);


--
-- Name: inicio_domicilio id_domicilio; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_domicilio ALTER COLUMN id_domicilio SET DEFAULT nextval('public.inicio_domicilio_id_domicilio_seq'::regclass);


--
-- Name: inicio_factura id_factura; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_factura ALTER COLUMN id_factura SET DEFAULT nextval('public.inicio_factura_id_factura_seq'::regclass);


--
-- Name: inicio_legajo_empleado id_legajo_empl; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_legajo_empleado ALTER COLUMN id_legajo_empl SET DEFAULT nextval('public.inicio_legajo_empleado_id_legajo_empl_seq'::regclass);


--
-- Name: inicio_persona id_persona; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_persona ALTER COLUMN id_persona SET DEFAULT nextval('public.inicio_persona_id_persona_seq'::regclass);


--
-- Name: inicio_proveedor id_proveedor; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_proveedor ALTER COLUMN id_proveedor SET DEFAULT nextval('public.inicio_proveedores_id_proveedor_seq'::regclass);


--
-- Name: inicio_rubro id_rubro; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_rubro ALTER COLUMN id_rubro SET DEFAULT nextval('public.inicio_rubros_id_rubro_seq'::regclass);


--
-- Name: inicio_tipo_persona id_tpo_persona; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_tipo_persona ALTER COLUMN id_tpo_persona SET DEFAULT nextval('public.inicio_tipo_persona_id_tpo_persona_seq'::regclass);


--
-- Name: inicio_venta id_venta; Type: DEFAULT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_venta ALTER COLUMN id_venta SET DEFAULT nextval('public.inicio_venta_id_venta_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add tipo_persona	7	add_tipo_persona
26	Can change tipo_persona	7	change_tipo_persona
27	Can delete tipo_persona	7	delete_tipo_persona
28	Can view tipo_persona	7	view_tipo_persona
29	Can add det_factura	8	add_det_factura
30	Can change det_factura	8	change_det_factura
31	Can delete det_factura	8	delete_det_factura
32	Can view det_factura	8	view_det_factura
33	Can add contacto	9	add_contacto
34	Can change contacto	9	change_contacto
35	Can delete contacto	9	delete_contacto
36	Can view contacto	9	view_contacto
37	Can add datos_personales	10	add_datos_personales
38	Can change datos_personales	10	change_datos_personales
39	Can delete datos_personales	10	delete_datos_personales
40	Can view datos_personales	10	view_datos_personales
41	Can add detalle_venta	11	add_detalle_venta
42	Can change detalle_venta	11	change_detalle_venta
43	Can delete detalle_venta	11	delete_detalle_venta
44	Can view detalle_venta	11	view_detalle_venta
45	Can add domicilio	12	add_domicilio
46	Can change domicilio	12	change_domicilio
47	Can delete domicilio	12	delete_domicilio
48	Can view domicilio	12	view_domicilio
49	Can add factura	13	add_factura
50	Can change factura	13	change_factura
51	Can delete factura	13	delete_factura
52	Can view factura	13	view_factura
53	Can add legajo_empleado	14	add_legajo_empleado
54	Can change legajo_empleado	14	change_legajo_empleado
55	Can delete legajo_empleado	14	delete_legajo_empleado
56	Can view legajo_empleado	14	view_legajo_empleado
57	Can add persona	15	add_persona
58	Can change persona	15	change_persona
59	Can delete persona	15	delete_persona
60	Can view persona	15	view_persona
61	Can add venta	16	add_venta
62	Can change venta	16	change_venta
63	Can delete venta	16	delete_venta
64	Can view venta	16	view_venta
65	Can add articulo	17	add_articulo
66	Can change articulo	17	change_articulo
67	Can delete articulo	17	delete_articulo
68	Can view articulo	17	view_articulo
69	Can add proveedor	18	add_proveedor
70	Can change proveedor	18	change_proveedor
71	Can delete proveedor	18	delete_proveedor
72	Can view proveedor	18	view_proveedor
73	Can add rubro	19	add_rubro
74	Can change rubro	19	change_rubro
75	Can delete rubro	19	delete_rubro
76	Can view rubro	19	view_rubro
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	inicio	tipo_persona
8	inicio	det_factura
9	inicio	contacto
10	inicio	datos_personales
11	inicio	detalle_venta
12	inicio	domicilio
13	inicio	factura
14	inicio	legajo_empleado
15	inicio	persona
16	inicio	venta
17	inicio	articulo
18	inicio	proveedor
19	inicio	rubro
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-06-05 20:26:40.722829-03
2	auth	0001_initial	2020-06-05 20:26:41.162251-03
3	admin	0001_initial	2020-06-05 20:26:41.933287-03
4	admin	0002_logentry_remove_auto_add	2020-06-05 20:26:42.092618-03
5	admin	0003_logentry_add_action_flag_choices	2020-06-05 20:26:42.126203-03
6	contenttypes	0002_remove_content_type_name	2020-06-05 20:26:42.182379-03
7	auth	0002_alter_permission_name_max_length	2020-06-05 20:26:42.19842-03
8	auth	0003_alter_user_email_max_length	2020-06-05 20:26:42.214487-03
9	auth	0004_alter_user_username_opts	2020-06-05 20:26:42.235788-03
10	auth	0005_alter_user_last_login_null	2020-06-05 20:26:42.259355-03
11	auth	0006_require_contenttypes_0002	2020-06-05 20:26:42.275251-03
12	auth	0007_alter_validators_add_error_messages	2020-06-05 20:26:42.302337-03
13	auth	0008_alter_user_username_max_length	2020-06-05 20:26:42.386657-03
14	auth	0009_alter_user_last_name_max_length	2020-06-05 20:26:42.427441-03
15	auth	0010_alter_group_name_max_length	2020-06-05 20:26:42.449561-03
16	auth	0011_update_proxy_permissions	2020-06-05 20:26:42.474416-03
17	inicio	0001_initial	2020-06-05 20:26:42.735199-03
18	inicio	0002_auto_20200603_2155	2020-06-05 20:26:43.414951-03
19	inicio	0003_auto_20200604_2221	2020-06-05 20:26:44.035449-03
20	inicio	0004_auto_20200605_2026	2020-06-05 20:26:44.210296-03
21	sessions	0001_initial	2020-06-05 20:26:44.357114-03
22	inicio	0005_auto_20200605_2138	2020-06-05 21:39:27.613438-03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: inicio_articulo; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.inicio_articulo (id_art, nombre_art, precio_a, cant_a, id_rubro_id) FROM stdin;
3	Lavandina	5.00	50	1
\.


--
-- Data for Name: inicio_contacto; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.inicio_contacto (id_contacto, telefono, correo_electronico) FROM stdin;
1	3704510019	devmatiasbritez@gmail.com
\.


--
-- Data for Name: inicio_datos_personales; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.inicio_datos_personales (id_datos_personales, nombre, apellido, fecha_nac, id_contacto_id, id_domicilio_id) FROM stdin;
2	Matias	Britez	2001-08-21 00:00:00-03	1	1
\.


--
-- Data for Name: inicio_det_factura; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.inicio_det_factura (id_det_factura, precio_t, fecha_c, id_tpo_persona_id) FROM stdin;
\.


--
-- Data for Name: inicio_detalle_venta; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.inicio_detalle_venta (id_detalle_venta, fecha_venta, precio, cantidad_ventas) FROM stdin;
\.


--
-- Data for Name: inicio_domicilio; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.inicio_domicilio (id_domicilio, descripcion) FROM stdin;
1	O'higgins 206
\.


--
-- Data for Name: inicio_factura; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.inicio_factura (id_factura, "Descripcion", id_art_id, id_det_factura_id) FROM stdin;
\.


--
-- Data for Name: inicio_legajo_empleado; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.inicio_legajo_empleado (id_legajo_empl, antiguedad, salario) FROM stdin;
1	5años	10000.0
\.


--
-- Data for Name: inicio_persona; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.inicio_persona (id_persona, id_datos_personales_id, id_legajo_empl_id, id_tpo_persona_id) FROM stdin;
3	2	1	1
7	2	1	1
\.


--
-- Data for Name: inicio_proveedor; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.inicio_proveedor (id_proveedor, descripcion) FROM stdin;
1	coca cola
\.


--
-- Data for Name: inicio_rubro; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.inicio_rubro (id_rubro, descrip_r) FROM stdin;
1	Limpieza
2	Comida
\.


--
-- Data for Name: inicio_tipo_persona; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.inicio_tipo_persona (id_tpo_persona, descripcion_tpo_p) FROM stdin;
1	empleado
\.


--
-- Data for Name: inicio_venta; Type: TABLE DATA; Schema: public; Owner: cocido
--

COPY public.inicio_venta (id_venta, id_detalle_venta_id, id_factura_id, id_persona_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- Name: inicio_articulos_id_art_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.inicio_articulos_id_art_seq', 5, true);


--
-- Name: inicio_contacto_id_contacto_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.inicio_contacto_id_contacto_seq', 1, true);


--
-- Name: inicio_datos_personales_id_datos_personales_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.inicio_datos_personales_id_datos_personales_seq', 2, true);


--
-- Name: inicio_det_factura_id_det_factura_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.inicio_det_factura_id_det_factura_seq', 1, false);


--
-- Name: inicio_detalle_venta_id_detalle_venta_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.inicio_detalle_venta_id_detalle_venta_seq', 1, false);


--
-- Name: inicio_domicilio_id_domicilio_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.inicio_domicilio_id_domicilio_seq', 1, true);


--
-- Name: inicio_factura_id_factura_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.inicio_factura_id_factura_seq', 1, false);


--
-- Name: inicio_legajo_empleado_id_legajo_empl_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.inicio_legajo_empleado_id_legajo_empl_seq', 1, true);


--
-- Name: inicio_persona_id_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.inicio_persona_id_persona_seq', 7, true);


--
-- Name: inicio_proveedores_id_proveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.inicio_proveedores_id_proveedor_seq', 1, true);


--
-- Name: inicio_rubros_id_rubro_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.inicio_rubros_id_rubro_seq', 2, true);


--
-- Name: inicio_tipo_persona_id_tpo_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.inicio_tipo_persona_id_tpo_persona_seq', 1, true);


--
-- Name: inicio_venta_id_venta_seq; Type: SEQUENCE SET; Schema: public; Owner: cocido
--

SELECT pg_catalog.setval('public.inicio_venta_id_venta_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: inicio_articulo inicio_articulo_nombre_art_1eef7fc8_uniq; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_articulo
    ADD CONSTRAINT inicio_articulo_nombre_art_1eef7fc8_uniq UNIQUE (nombre_art);


--
-- Name: inicio_articulo inicio_articulos_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_articulo
    ADD CONSTRAINT inicio_articulos_pkey PRIMARY KEY (id_art);


--
-- Name: inicio_contacto inicio_contacto_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_contacto
    ADD CONSTRAINT inicio_contacto_pkey PRIMARY KEY (id_contacto);


--
-- Name: inicio_datos_personales inicio_datos_personales_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_datos_personales
    ADD CONSTRAINT inicio_datos_personales_pkey PRIMARY KEY (id_datos_personales);


--
-- Name: inicio_det_factura inicio_det_factura_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_det_factura
    ADD CONSTRAINT inicio_det_factura_pkey PRIMARY KEY (id_det_factura);


--
-- Name: inicio_detalle_venta inicio_detalle_venta_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_detalle_venta
    ADD CONSTRAINT inicio_detalle_venta_pkey PRIMARY KEY (id_detalle_venta);


--
-- Name: inicio_domicilio inicio_domicilio_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_domicilio
    ADD CONSTRAINT inicio_domicilio_pkey PRIMARY KEY (id_domicilio);


--
-- Name: inicio_factura inicio_factura_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_factura
    ADD CONSTRAINT inicio_factura_pkey PRIMARY KEY (id_factura);


--
-- Name: inicio_legajo_empleado inicio_legajo_empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_legajo_empleado
    ADD CONSTRAINT inicio_legajo_empleado_pkey PRIMARY KEY (id_legajo_empl);


--
-- Name: inicio_persona inicio_persona_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_persona
    ADD CONSTRAINT inicio_persona_pkey PRIMARY KEY (id_persona);


--
-- Name: inicio_proveedor inicio_proveedores_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_proveedor
    ADD CONSTRAINT inicio_proveedores_pkey PRIMARY KEY (id_proveedor);


--
-- Name: inicio_rubro inicio_rubros_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_rubro
    ADD CONSTRAINT inicio_rubros_pkey PRIMARY KEY (id_rubro);


--
-- Name: inicio_tipo_persona inicio_tipo_persona_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_tipo_persona
    ADD CONSTRAINT inicio_tipo_persona_pkey PRIMARY KEY (id_tpo_persona);


--
-- Name: inicio_venta inicio_venta_pkey; Type: CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_venta
    ADD CONSTRAINT inicio_venta_pkey PRIMARY KEY (id_venta);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: inicio_articulo_nombre_art_1eef7fc8_like; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX inicio_articulo_nombre_art_1eef7fc8_like ON public.inicio_articulo USING btree (nombre_art varchar_pattern_ops);


--
-- Name: inicio_articulos_id_rubro_id_a681e21e; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX inicio_articulos_id_rubro_id_a681e21e ON public.inicio_articulo USING btree (id_rubro_id);


--
-- Name: inicio_datos_personales_id_contacto_id_730d87e5; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX inicio_datos_personales_id_contacto_id_730d87e5 ON public.inicio_datos_personales USING btree (id_contacto_id);


--
-- Name: inicio_datos_personales_id_domicilio_id_b2ae2081; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX inicio_datos_personales_id_domicilio_id_b2ae2081 ON public.inicio_datos_personales USING btree (id_domicilio_id);


--
-- Name: inicio_det_factura_id_tpo_persona_id_91e4bfc7; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX inicio_det_factura_id_tpo_persona_id_91e4bfc7 ON public.inicio_det_factura USING btree (id_tpo_persona_id);


--
-- Name: inicio_factura_id_art_id_8095fe2f; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX inicio_factura_id_art_id_8095fe2f ON public.inicio_factura USING btree (id_art_id);


--
-- Name: inicio_factura_id_det_factura_id_8f61f7b1; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX inicio_factura_id_det_factura_id_8f61f7b1 ON public.inicio_factura USING btree (id_det_factura_id);


--
-- Name: inicio_persona_id_datos_personales_id_291d7e36; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX inicio_persona_id_datos_personales_id_291d7e36 ON public.inicio_persona USING btree (id_datos_personales_id);


--
-- Name: inicio_persona_id_legajo_empl_id_326cec55; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX inicio_persona_id_legajo_empl_id_326cec55 ON public.inicio_persona USING btree (id_legajo_empl_id);


--
-- Name: inicio_persona_id_tpo_persona_id_7a65aa11; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX inicio_persona_id_tpo_persona_id_7a65aa11 ON public.inicio_persona USING btree (id_tpo_persona_id);


--
-- Name: inicio_venta_id_detalle_venta_id_bbde2c7e; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX inicio_venta_id_detalle_venta_id_bbde2c7e ON public.inicio_venta USING btree (id_detalle_venta_id);


--
-- Name: inicio_venta_id_factura_id_e59aa26f; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX inicio_venta_id_factura_id_e59aa26f ON public.inicio_venta USING btree (id_factura_id);


--
-- Name: inicio_venta_id_persona_id_064cab14; Type: INDEX; Schema: public; Owner: cocido
--

CREATE INDEX inicio_venta_id_persona_id_064cab14 ON public.inicio_venta USING btree (id_persona_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inicio_articulo inicio_articulo_id_rubro_id_727c7e8e_fk_inicio_rubro_id_rubro; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_articulo
    ADD CONSTRAINT inicio_articulo_id_rubro_id_727c7e8e_fk_inicio_rubro_id_rubro FOREIGN KEY (id_rubro_id) REFERENCES public.inicio_rubro(id_rubro) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inicio_datos_personales inicio_datos_persona_id_contacto_id_730d87e5_fk_inicio_co; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_datos_personales
    ADD CONSTRAINT inicio_datos_persona_id_contacto_id_730d87e5_fk_inicio_co FOREIGN KEY (id_contacto_id) REFERENCES public.inicio_contacto(id_contacto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inicio_datos_personales inicio_datos_persona_id_domicilio_id_b2ae2081_fk_inicio_do; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_datos_personales
    ADD CONSTRAINT inicio_datos_persona_id_domicilio_id_b2ae2081_fk_inicio_do FOREIGN KEY (id_domicilio_id) REFERENCES public.inicio_domicilio(id_domicilio) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inicio_det_factura inicio_det_factura_id_tpo_persona_id_91e4bfc7_fk_inicio_ti; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_det_factura
    ADD CONSTRAINT inicio_det_factura_id_tpo_persona_id_91e4bfc7_fk_inicio_ti FOREIGN KEY (id_tpo_persona_id) REFERENCES public.inicio_tipo_persona(id_tpo_persona) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inicio_factura inicio_factura_id_art_id_8095fe2f_fk_inicio_articulo_id_art; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_factura
    ADD CONSTRAINT inicio_factura_id_art_id_8095fe2f_fk_inicio_articulo_id_art FOREIGN KEY (id_art_id) REFERENCES public.inicio_articulo(id_art) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inicio_factura inicio_factura_id_det_factura_id_8f61f7b1_fk_inicio_de; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_factura
    ADD CONSTRAINT inicio_factura_id_det_factura_id_8f61f7b1_fk_inicio_de FOREIGN KEY (id_det_factura_id) REFERENCES public.inicio_det_factura(id_det_factura) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inicio_persona inicio_persona_id_datos_personales__291d7e36_fk_inicio_da; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_persona
    ADD CONSTRAINT inicio_persona_id_datos_personales__291d7e36_fk_inicio_da FOREIGN KEY (id_datos_personales_id) REFERENCES public.inicio_datos_personales(id_datos_personales) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inicio_persona inicio_persona_id_legajo_empl_id_326cec55_fk_inicio_le; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_persona
    ADD CONSTRAINT inicio_persona_id_legajo_empl_id_326cec55_fk_inicio_le FOREIGN KEY (id_legajo_empl_id) REFERENCES public.inicio_legajo_empleado(id_legajo_empl) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inicio_persona inicio_persona_id_tpo_persona_id_7a65aa11_fk_inicio_ti; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_persona
    ADD CONSTRAINT inicio_persona_id_tpo_persona_id_7a65aa11_fk_inicio_ti FOREIGN KEY (id_tpo_persona_id) REFERENCES public.inicio_tipo_persona(id_tpo_persona) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inicio_venta inicio_venta_id_detalle_venta_id_bbde2c7e_fk_inicio_de; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_venta
    ADD CONSTRAINT inicio_venta_id_detalle_venta_id_bbde2c7e_fk_inicio_de FOREIGN KEY (id_detalle_venta_id) REFERENCES public.inicio_detalle_venta(id_detalle_venta) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inicio_venta inicio_venta_id_factura_id_e59aa26f_fk_inicio_fa; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_venta
    ADD CONSTRAINT inicio_venta_id_factura_id_e59aa26f_fk_inicio_fa FOREIGN KEY (id_factura_id) REFERENCES public.inicio_factura(id_factura) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inicio_venta inicio_venta_id_persona_id_064cab14_fk_inicio_pe; Type: FK CONSTRAINT; Schema: public; Owner: cocido
--

ALTER TABLE ONLY public.inicio_venta
    ADD CONSTRAINT inicio_venta_id_persona_id_064cab14_fk_inicio_pe FOREIGN KEY (id_persona_id) REFERENCES public.inicio_persona(id_persona) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: cocido
--

ALTER DEFAULT PRIVILEGES FOR ROLE cocido GRANT ALL ON TABLES  TO PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE cocido GRANT ALL ON TABLES  TO postgres;


--
-- PostgreSQL database dump complete
--

