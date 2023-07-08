import pymysql as a
connection = a.connect(host="localhost",user="root",password="root@priya12",database="project1",autocommit=True)


def view1(cid):
    current=connection.cursor()
    current.execute("SELECT product_id,product_name,quantity,price from product")
    output1 = current.fetchall()
    for j in output1:
        print(j)
    print('\n')
    print('\n')
    print('\n')
    
    customer_input2 = int(input("Enter the product id : "))
    customer_input3 = int(input("Enter product_no : "))
    print('\n')
    current.execute("INSERT INTO CART VALUES ({},{},{},{})" . format(cid,customer_input2,cid,customer_input3))
    output2 = current.fetchall()
    current.execute("SELECT * from cart")
    output3 = current.fetchall()
    for K in output3:
        print(K)
    print('\n')
    print('CUSTOMER CART')
    current.execute(" SELECT cart.cart_id,product.product_name,product.price FROM cart JOIN product on product.product_id=cart.product_id where cart_id={}".format(cid))
    output4 = current.fetchall()
    for j in output4:
        print(j)




    connection.commit()
    #connection.close()

def view2(cid):
    current=connection.cursor()
    print('\n')
    current.execute("""
SELECT prescription.customer_id,prescription.product_id,product.product_name
FROM prescription
INNER JOIN cart ON cart.customer_id=prescription.customer_id AND cart.product_id=prescription.product_id
JOIN product on cart.product_id=product.product_id
where prescription.customer_id={}""".format(cid))
    output1 = current.fetchall()
    print("Customer Id, Product Id, Product Name")
    for j in output1:
        print(j)
    connection.commit()
    #connection.close()



def view3():
    current=connection.cursor()
    print('\n')
    current.execute("""SELECT SELLER_ID, COUNT(PRODUCT_ID) AS No_of_Products, SUM(PRICE) AS Total_Profit
FROM PRODUCT
GROUP BY SELLER_ID WITH ROLLUP""")
    output = current.fetchall()
    for j in output:
        print(j)
    connection.commit()
  

def view4():
    current=connection.cursor()
    print('\n')
    current.execute("""select doctor_id, count(customer_id) as No_of_Patients
from prescription
group by doctor_id with rollup""")
    output = current.fetchall()
    for j in output:
        print(j)
    connection.commit()
   

def view5():
    current=connection.cursor()
    print('\n')
    current.execute("""select specialization,region, min(consultation_fee)
from doctor1
group by specialization,region  with rollup;""")
    output = current.fetchall()
    for j in output:
        print(j)
    connection.commit()
  

def view6():
    current=connection.cursor()
    print('\n')
    current.execute("""SELECT REG_ID , COUNT(PRODUCT_ID) AS TOTAL_PRODUCTS, sum(price) AS TOTTAL_PROFIT
FROM PRODUCT
GROUP BY REG_ID WITH ROLLUP
limit 5""")
    output = current.fetchall()
    for j in output:
        print(j)
    connection.commit()
   

print("Welcome to the Pharmacy Store !\n")
# print("Press ENTER to continue ")
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
            print("4. Add a medicine to cart")
            print("5. Add a lab test to cart")
            print("6. Book an appointment with a doctor")
            print("7. View the products you have purchased and were prescribed by doctors")
            print("8. Exit")

            n1=int(input("Enter option no. : "))
            # if (n1==1):
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
            if (n1==1):
                view3()
            if (n1==2):
                view4()
            if (n1==3):
                view5()
            if (n1==4):
                view6()
            if (n1==5):
                break
            



    elif (inp==4):
        connection.close()
        break