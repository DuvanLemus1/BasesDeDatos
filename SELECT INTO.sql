
--SELECT INTO BASICO

DECLARE
    NOMBRE products.product_name%TYPE; --Evita errores de paridad
    

BEGIN

    SELECT PRODUCT_NAME INTO NOMBRE FROM products WHERE product_id=1;
    DBMS_OUTPUT.PUT_LINE('El nombre del producto es '|| nombre);

END;


DESCRIBE PRODUCTS; --Describe la estructura de una tabla, se puede minimizar como DESC

SET SERVEROUTPUT ON;

--SELECT INTO CON FOR--------------------------------------------------------------------------------------

DECLARE
    NOMBRE products.product_name%TYPE; --Evita errores de paridad
    ITERACION NUMBER(10):=1;
    CANTIDAD_PRODUCTOS NUMBER(10);

BEGIN
    SELECT COUNT(PRODUCT_NAME) INTO Cantidad_PRODUCTOS FROM PRODUCTS;
    
    LOOP
        EXIT WHEN ITERACION>cantidad_productos;
        
        SELECT PRODUCT_NAME INTO NOMBRE FROM products WHERE product_id=ITERACION;
        DBMS_OUTPUT.PUT_LINE('El nombre del producto con ID '||iteracion|| ' es '|| nombre);
        iteracion:=iteracion+1;
        
    END LOOP;
END;

--SELECT INTO CON FOR PARA MAS DE UN ATRIBUTO--------------------------------------------------------------------------------------

DECLARE
    NOMBRE products.product_name%TYPE; --%TYPE Evita errores de paridad
    MODELO products.model_year%TYPE;
    PRECIO products.list_price%TYPE;
    ITERACION NUMBER(10):=1;
    CANTIDAD_PRODUCTOS NUMBER(10);

BEGIN
    SELECT COUNT(PRODUCT_NAME) INTO Cantidad_PRODUCTOS FROM PRODUCTS;
    
    LOOP
        EXIT WHEN ITERACION>cantidad_productos;
        
        SELECT PRODUCT_NAME, MODEL_YEAR, LIST_PRICE INTO NOMBRE, MODELO, PRECIO FROM products WHERE product_id=ITERACION;
        DBMS_OUTPUT.PUT_LINE('El nombre del producto con ID '||iteracion|| ' es '|| nombre);
        DBMS_OUTPUT.PUT_LINE('El modelo del producto con ID '||iteracion|| ' es '|| modelo);
        DBMS_OUTPUT.PUT_LINE('El precio del producto con ID '||iteracion|| ' es '|| precio);
        
        iteracion:=iteracion+1;
        
    END LOOP;
END;

