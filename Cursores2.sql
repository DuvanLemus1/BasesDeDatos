
------------------------CURSORES---------------------

DECLARE
    NOMBRE products.product_name%TYPE; --Evita errores de paridad

BEGIN

    SELECT PRODUCT_NAME INTO NOMBRE FROM products WHERE product_id=1; --Cursor implicito, se llaman SQL
    DBMS_OUTPUT.PUT_LINE('El nombre del producto es '|| nombre);
    DBMS_OUTPUT.PUT_LINE('La cantidad de registros es: '||SQL%ROWCOUNT); --Cursis implicito

END;

SET SERVEROUTPUT ON;

-------------------CURSORES EXPLICITOS--------------------------
DECLARE
    NOMBRE_PRODUCTO products.product_name%TYPE;
    CURSOR C_nombre_Producto IS SELECT PRODUCT_NAME FROM products;
BEGIN
    OPEN C_nombre_Producto; --ABRE EL CURSOR
        LOOP
            FETCH C_nombre_Producto INTO nombre_producto; --POSICIONA EL CURSOR EN EL SIGUIENTE REGISTRO PARA RECORRER TODA LA CONSULTA
            EXIT WHEN C_NOMBRE_PRODUCTO%NOTFOUND; --RETORNA FALSO CUANDO LLEGA AL ULTIMO REGISTRO Y DETIENE EL CICLO
            dbms_output.put_line('EL NOMBRE DEL PRODUCTO ES: '||NOMBRE_PRODUCTO);
            dbms_output.put_line('LA CANTIDAD DE REGISTROS ES: '||C_NOMBRE_PRODUCTO%ROWCOUNT); --IMPRIME EL NUMERO DE LINEA EN QUE SE ENCUENTRA
        END LOOP;
    CLOSE C_NOMBRE_PRODUCTO;
    
END;

