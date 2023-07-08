import pymysql as a
connection = a.connect(host="localhost",user="root",password="root@priya12",database="project1",autocommit=True)


# def view1(cid):
#     current=connection.cursor()
#     current.execute("SELECT product_id,product_name,quantity,price from product")
#     output1 = current.fetchall()
#     for j in output1:
#         print(j)
#     print('\n')
#     print('\n')
#     print('\n')
    
#     customer_input2 = int(input("Enter the product id : "))
#     customer_input3 = int(input("Enter product_no : "))
#     print('\n')
#     current.execute("INSERT INTO CART VALUES ({},{},{},{})" . format(cid,customer_input2,cid,customer_input3))
#     output2 = current.fetchall()
#     current.execute("SELECT * from cart")
#     output3 = current.fetchall()
#     for K in output3:
#         print(K)
#     print('\n')
#     print('CUSTOMER CART')
#     current.execute(" SELECT cart.cart_id,product.product_name,product.price FROM cart JOIN product on product.product_id=cart.product_id where cart_id={}".format(cid))
#     output4 = current.fetchall()
#     for j in output4:
#         print(j)




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
            print("8. Exit")

            n1 = int(input("Enter option no. : "))

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
                            current.execute("INSERT INTO CART VALUES ({},{},{},{})" . format(cid,customer_input2,cid,customer_input3))
                            output2 = current.fetchall()
                           
                        else:
                            break
                else:
                    pass
                

            if (n1 == 2):
                current=connection.cursor()
                current.execute("SELECT test_name,test_price from labtest")
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
                            current.execute("INSERT INTO BOOKS VALUES ({},{})" . format(cid,customer_input2))
                            output2 = current.fetchall()
                           
                        else:
                            break

                else:
                    pass


            if (n1 == 3):
                current=connection.cursor()
                current.execute("SELECT doctor_id, first_name,last_name,specialisation,consultation_fee from doctor")
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
                            current.execute("INSERT INTO prescription(problem,doctor_id,customer_id) VALUES ({},{},{})" . format(customer_input3,customer_input2,cid))
                            output2 = current.fetchall()
                        else:
                            break

                else:
                    pass


            if (n1 == 4):
                #View all prescriptions sql command
                pass


            if (n1 == 5):
                #
                print("\n\n")
                opt = str(input("Do you want to proceed to book a doctor? Y/N \n"))
                if (opt == 'Y'):
                    while (1):
                        print("Add a Lab Test to cart")
                        opt1 = str(input("Y/N\n"))
                        if (opt1 == 'Y'):
                            customer_input2 = int(input("Enter the labtest id : "))
                            print('\n')
                           
                        else:
                            break

                else:
                    pass
        
            
            if (n1 == 6):
                print("--MY ACCOUNT DETAILS--\n\n")
                print("Customer ID : " + cid)
                current=connection.cursor()
                # current.execute("SELECT customer_name from customer where customer_id={}".format(cid)")
                # output1 = current.fetchall()
                # print("Name : "output1)

                # current=connection.cursor()
                # current.execute("SELECT wallet from customer where customer_id={}".format(cid)")
                # output1 = current.fetchall()
                # print("Wallet balance" + output1)
                
                





            
                
        










            # if (n1==2):
            # if (n1==3):
            if (n1==4):
                view1(cid)
            if (n1==7):
                view2(cid)
            if (n1==8):
                break

    elif (inp==3):
        aid=input("Enter ADMIN ID :")
        password=input("Enter password :")
        while(1):
            print('\n')
            print("***** MAIN MENU *****")
            print("1. View products sold by each seller and their total profit")
            print("2. Display patients attended by each doctor")
            print("3. Display Minimum fees of a doctor grouped on the basis of region and specialization")
            print("4. View products sold by each company and their total profit")
            print("5. Exit")
            
            n1=int(input("Enter option no. : "))
            # if (n1==1):
            #     view3()
            # if (n1==2):
            #     view4()
            # if (n1==3):
            #     view5()
            # if (n1==4):
            #     view6()
            if (n1==5):
                break
            



    elif (inp==4):
        # connection.close()
        break