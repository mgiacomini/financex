import datetime
import time
import financial

def compute(loan_value, installments):
    today = datetime.date.fromtimestamp(time.time())
    initial_cashflow = [loan_value * -1, 0, 0, 0]
    cashflows = []

    for i in range(0, len(initial_cashflow)):
        cashflows.append((today + datetime.timedelta(days=(30*i)), initial_cashflow[i]))

    for i in range(0, len(installments)):
        offset = len(initial_cashflow)
        cashflows.append((today + datetime.timedelta(days=(30 * (i + offset))), installments[i]))

    return financial.xirr(cashflows)
