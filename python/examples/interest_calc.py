def compound_interest(principal, rate, time):
    """
    Function to calculate compound interest.
    
    Arguments:
    principal -- the initial amount of money
    rate -- the annual interest rate (as a decimal)
    time -- the time the money is invested for (in years)
    
    Returns:
    The total amount after compound interest.
    """
    amount = principal * (1 + rate) ** time
    return amount

def main():
    # Get user input for principal, rate, and time
    principal = float(input("Enter the principal amount: "))
    rate = float(input("Enter the annual interest rate (as a decimal): "))
    time = float(input("Enter the time the money is invested for (in years): "))
    
    # Calculate compound interest
    total_amount = compound_interest(principal, rate, time)
    
    # Print the result
    print("The total amount after compound interest is:", total_amount)

if __name__ == "__main__":
    main()
