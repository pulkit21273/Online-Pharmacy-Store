import pymysql as a
connection = a.connect(host="localhost",user="root",password="root@priya12",database="project1",autocommit=True)

#     connection.commit()
#     #connection.close()


print("Welcome to the Pharmacy Store !\n")
en=input("Press ENTER to continue \n")
while(1):
    print("Select from the follwoing options : \n")
    print("1. Login as Customer")
    print("2. Signup as Customer")
    print("3. Login as ADMIN")
    print("4. Exit Application")
    inp=int(input("Enter option no. : "))
    if (inp==1):
        cid=int(input("Enter customer id :"))

        password=input("Enter password :")
        while(1):
            print("***** MAIN MENU *****")
            print("1. View all Medicines")
            print("2. View all Lab Tests")
            print("3. View all Doctors")
            print("4. View my Prescriptions")
            print("5. View Cart")
            print("6. My Account")
            print("7. Help and Support")
            print("8. Add amount to wallet")
            print("9. Exit\n")

            n1 = int(input("Enter option no. : \n"))

            if (n1 == 1):
                current=connection.cursor()
                current.execute("SELECT product_id,product_name,quantity,price from product")
                output1 = current.fetchall()
                for j in output1:
                    print(j)
                print("\n\n")
                opt = str(input("Do you want to proceed to purchase? Y/N \n"))
                if (opt == 'Y'):
                    while (1):
                        print("Add a medicine to cart")
                        opt1 = str(input("Y/N\n"))
                        if (opt1 == 'Y'):
                            customer_input2 = int(input("Enter the product id : "))
                            customer_input3 = int(input("Enter product_no : "))
                            print('\n')
                            current.execute("Select quantity from product where product_id={}" .format(customer_input2))
                            output_q=current.fetchone()[0]
                            
                            if(output_q<=0):
                                print("Product Out Of Stock!!\n")
                            else:
                                current.execute("INSERT INTO CART VALUES ({},{},{},{})" . format(cid,customer_input2,cid,customer_input3))
                           
                        else:
                            break
                else:
                    pass
                

            if (n1 == 2):
                current=connection.cursor()
                current.execute("SELECT test_name,price from labtest")
                output1 = current.fetchall()
                for j in output1:
                    print(j)
                print("\n\n")
                opt = str(input("Do you want to proceed to purchase? Y/N \n"))
                if (opt == 'Y'):
                    while (1):
                        print("Book a Lab Test")
                        opt1 = str(input("Y/N\n"))
                        if (opt1 == 'Y'):
                            customer_input2 = str(input("Enter the labtest name : "))
                            print('\n')    
                            
                            current.execute("Select price from labtest where test_name = '{}'" .format(customer_input2))
                            o1 = current.fetchone()[0]

                            current.execute("SELECT wallet FROM customer WHERE customer_id={}".format(cid))
                            o2 = current.fetchone()[0]  # use fetchone instead of fetchall since the query returns a single value
                            if(o2>=o1):
                                current.execute("BEGIN")
                                current.execute("INSERT INTO BOOKS VALUES ({},'{}')" . format(cid,customer_input2))
                                current.execute("COMMIT")
                                current.execute("BEGIN")
                                current.execute("update customer set wallet={} where customer_id={}" .format(o2-o1,cid))
                                current.execute("COMMIT")
                                print("Amount left in Wallet : " +str(o2-o1))
                                
                            else:
                                print("You do not have enough money in wallet!!")
                                print("Add Rs." + str(o1-o2) + " to complete transaction")
                                print('\n')
                           
                        else:
                            break

                else:
                    pass


            if (n1 == 3):
                current=connection.cursor()
                current.execute("SELECT doctor_id, first_name,last_name,specialization,consultation_fee from doctor")
                output1 = current.fetchall()
                for j in output1:
                    print(j)
                print("\n\n")
                opt = str(input("Do you want to proceed to book an appointment with a doctor? Y/N \n"))
                if (opt == 'Y'):
                    while (1):
                        print("Book an Appointment")
                        opt1 = str(input("Y/N\n"))
                        if (opt1 == 'Y'):
                            customer_input2 = int(input("Enter the doctor id : "))
                            customer_input3 = str(input("Enter the problem : "))
                            print('\n')

                            current.execute("Select CONSULTATION_FEE from DOCTOR where DOCTOR_ID = {}" .format(customer_input2))
                            o1 = current.fetchone()[0]

                            current.execute("SELECT wallet FROM customer WHERE customer_id={}".format(cid))
                            o2 = current.fetchone()[0]

                            if(o2>=o1):
                                current.execute("BEGIN")
                                current.execute("INSERT INTO prescription(problem,doctor_id,customer_id) VALUES ('{}',{},{})" . format(customer_input3,customer_input2,cid))
                                current.execute("COMMIT")
                                current.execute("BEGIN")
                                current.execute("update customer set wallet={} where customer_id={}" .format(o2-o1,cid))
                                current.execute("COMMIT")
                                print("Amount left in Wallet : " +str(o2-o1))
                                
                            else:
                                print("You do not have enough money in wallet!!")
                                print("Add Rs." + str(o1-o2) + " to complete transaction")
                                print('\n')

                            
                        else:
                            break

                else:
                    pass


            if (n1 == 4):
                current=connection.cursor()
                current.execute("SELECT * from prescription where customer_id={}".format(cid))
                output1 = current.fetchall()
                for j in output1:
                    print(j)


            if (n1 == 5):
                current=connection.cursor()
                current.execute("SELECT * from cart where customer_id={}".format(cid))
                output1 = current.fetchall()
                for j in output1:
                    print(j)
                
                print("\n\n")
                while(1):
                    print("1. Delete a product :")
                    print("2. Checkout Cart")
                    print("3. Exit to previous menu\n")
                    opt=int(input("Enter option :"))

                    if (opt==1):
                        pid = int(input("Enter the product id :"))
                        current=connection.cursor()
                        current.execute("DELETE FROM cart where product_id = {} AND customer_id = {}".format(pid,cid))
                    
                    if (opt==2):
                        current=connection.cursor()
                        current.execute("""CREATE TABLE temp_table AS SELECT cart.customer_id,cart.cart_id,cart.product_id, product.price FROM cart join product on cart.product_id=product.product_id""")
                                   
                        current.execute("""CREATE TABLE finalcart_value AS SELECT cart_id,SUM(price) AS Total_Price FROM temp_table GROUP BY cart_id""")
                                          
                        current.execute("""CREATE TABLE Checkout_Cart AS SELECT customer.customer_id,customer.membership_details,finalcart_value.cart_id,finalcart_value.total_price, subscription.subscription_type,subscription.discount FROM finalcart_value JOIN customer on customer.customer_id=finalcart_value.cart_id join subscription on customer.membership_details=subscription.subscription_type""")   

                        current.execute("select cart_id,ROUND((total_price-(total_price*discount/100)),2) as discounted_price from checkout_cart where cart_id ={}" .format(cid))
                                        
                        o1=current.fetchall()
                        for j in o1:
                            print(j)
                        print('\n')

                        current.execute("SELECT ROUND((total_price-(total_price*discount/100)),2) FROM checkout_cart WHERE cart_id ={}".format(cid))
                        o2 = current.fetchone()[0]  # use fetchone instead of fetchall since the query returns a single value
                        current.execute("SELECT wallet FROM customer WHERE customer_id={}".format(cid))
                        o3 = current.fetchone()[0]  # use fetchone instead of fetchall since the query returns a single value

                        if(o3>=o2):
                            # current.execute("update customer set wallet={} where customer_id={}" .format(o3-o2,cid))
                            try:
                                current.execute("BEGIN" )
                                current.execute("UPDATE customer SET wallet = {} WHERE customer_id = {}" .format(o3-o2,cid))
                                current.execute("COMMIT")
                                current.execute("UPDATE Product JOIN cart on cart.product_id=product.product_id set product.quantity=product.quantity-1 where cart_id={}" .format(cid))
                                print("Amount left in Wallet : " +str(o3-o2))
                                current.execute("delete from cart where cart_id={}" .format(cid))
                            except Exception as e:
                                connection.rollback()
                                print("Transaction rolled back: ", e)
 
                        else:
                            print("You do not have enough money in wallet!!")
                            print("Add Rs." + str(o2-o3) + " to complete transaction")
                            print('\n')

                        current.execute("drop table temp_table")
                        current.execute("drop table finalcart_value")
                        current.execute("drop table checkout_cart")
                        break
                    
                    if (opt == 3):
                        break

            if (n1 == 6):
                print("--MY ACCOUNT DETAILS--\n\n")
                print("Customer ID : " + str(cid))

                current=connection.cursor()
                current.execute("SELECT first_name from customer where customer_id={}".format(cid))
                output1 = current.fetchone()[0]
                current.execute("SELECT first_name from customer where customer_id={}".format(cid))
                output2 = current.fetchone()[0]
                print("Name : "+ str(output1) +" "+ str(output2))

                current=connection.cursor()
                current.execute("SELECT wallet from customer where customer_id={}".format(cid))
                output3 = current.fetchone()[0]
                print("Wallet balance : " + str(output3))

                current=connection.cursor()
                current.execute("SELECT membership_details from customer where customer_id={}".format(cid))
                output4 = current.fetchone()[0]
                print("Membership Details : " + str(output4))

                current=connection.cursor()
                current.execute("SELECT phone_number from customer where customer_id={}".format(cid))
                output5 = current.fetchone()[0]
                print("Contact details : " + str(output5))


            if (n1==7):
                print("KINDLY REACH OUT TO THE FOLLOWING EMAIL ID's MENTIONED BELOW :")
                print("1. priyayadav21272@iiitd.ac.in") 
                print("2. pulkit21273@iiitd.ac.in")     

            if(n1==8):
                current=connection.cursor()
                c_inp = int(input("Add the amount : \n"))
                # current.execute("UPDATE Customer set wallet=wallet+{} where customer_id={}".format(c_inp,cid))
                try:
                    current.execute("BEGIN" )
                    current.execute("UPDATE customer SET wallet = wallet + {} WHERE customer_id = {}" .format(c_inp,cid))
                    current.execute("COMMIT")
                except Exception as e:
                        connection.rollback()
                        print("Transaction rolled back: ", e)
                
                current.execute("select wallet from customer where customer_id={}" .format(cid))
                o4 = current.fetchone()[0]
                print("Current Amount In Wallet : " + str(o4) +"\n")

            if (n1==9):
                break

    elif (inp==2):
        print("Enter the following details to signup ")
        o1 = int(input("User Id : \n"))
        o2 = str(input("First Name : \n"))
        o3 = str(input("Last Name : \n"))
        o4 = str(input("DOB (yyyy-mm-dd) : \n"))
        o5 = str(input("Gender : \n"))
        o6 = str(input("Address : \n"))
        o7 = str(input("Phone Number : \n"))
        o8 = str(input("Membership Details : \n"))
        o9 = int(input("Age : \n"))
        o10 = int(input("Wallet : \n"))

        current=connection.cursor()
        # current.execute("Insert Into Customer Values({},'{}','{}','{}','{}','{}','{}','{}',{},{})" .format(o1,o2,o3,o4,o5,o6,o7,o8,o9,o10))
        try:
            current.execute("BEGIN" )
            current.execute("Insert Into Customer Values({},'{}','{}','{}','{}','{}','{}','{}',{},{})".format(o1,o2,o3,o4,o5,o6,o7,o8,o9,o10))
            current.execute("COMMIT")
        except Exception as e:
            connection.rollback()
            print("Transaction rolled back: ", e)
        

        #current.execute("Insert Into Cart(cart_id,customer_id,product_no)  Values({},{},0) " .format(o1,o1))


    elif (inp==3):
        aid=input("Enter ADMIN ID :")
        password=input("Enter password :")
        while(1):
            print('\n')
            print("***** MAIN MENU *****")
            print("1. Increase Product Quantity")
            print("2. Decrease Product Quantity")
            print("3. Add Doctors")
            print("4. Add Companies")
            print("5. Add Sellers")
            print("6. Exit")
            
            n1=int(input("Enter option no. : "))
            if (n1==1):
                current=connection.cursor()
                input2=int(input("Enter the Product Id : "))
                input1=int(input("Enter the quantity to be increased : "))
                current.execute("BEGIN" )
                current.execute("UPDATE PRODUCT SET QUANTITY = QUANTITY+{} WHERE PRODUCT_ID = {}" .format(input1,input2))
                current.execute("COMMIT")

            if (n1==2):
                current=connection.cursor()
                input2=int(input("Enter the Product Id : "))
                input1=int(input("Enter the quantity to be decreased : "))
                current.execute("BEGIN" )
                current.execute("UPDATE PRODUCT SET QUANTITY = QUANTITY-{} WHERE PRODUCT_ID = {}" .format(input1,input2))
                current.execute("COMMIT")
                
            if (n1==3):
                current=connection.cursor()
                try:
                    o1 = int(input("Enter doctor ID :"))
                    o2 = str(input("Enter first name :"))
                    o3 = str(input("Enter second name :"))
                    o4 = str(input("Enter specialization :"))
                    o5 = int(input("Enter consultation_fee :"))
                    o6 = str(input("Enter Contact details :"))
                    o7 = str(input("Enter region :"))
                    
                    current.execute("BEGIN" )
                    current.execute("INSERT INTO DOCTOR VALUES({},'{}','{}','{}',{},'{}','{}')".format(o1,o2,o3,o4,o5,o6,o7))
                    current.execute("COMMIT")
                except Exception as e:
                    connection.rollback()
                    print("Transaction rolled back: ", e)

            if(n1==4):
                current=connection.cursor()
                try:
                    o1 = int(input("Enter company ID :"))
                    o2 = str(input("Enter company name :"))
                    o3 = str(input("Enter Total_no :"))
                    
                    
                    current.execute("BEGIN" )
                    current.execute("INSERT INTO COMPANY VALUES({},'{}','{}')".format(o1,o2,o3))
                    current.execute("COMMIT")
                except Exception as e:
                    connection.rollback()
                    print("Transaction rolled back: ", e)
            if (n1==5):
                current=connection.cursor()
                try:
                    o1 = int(input("Enter seller ID :"))
                    o2 = str(input("Enter seller name :"))
                    o3 = str(input("Enter contact details :"))
                    
                    
                    current.execute("BEGIN" )
                    current.execute("INSERT INTO COMPANY VALUES({},'{}','{}')".format(o1,o2,o3))
                    current.execute("COMMIT")
                except Exception as e:
                    connection.rollback()
                    print("Transaction rolled back: ", e)
            



    elif (inp==4):
        connection.close()
        break