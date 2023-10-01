x= input("3:00 pm : ")
y= input("2:00 : ")
z= input("saturday : ")
def get_days_later(days):
    """ Format the days later into string"""
    if days == 1:
        return "(next day)"
    elif days > 1:
        return f"({days} days later)"
    return ""



def add_time(start_time, end_time, day=False):
    
    WEEK_DAYS = [
        "monday",
        "tuesday",
        "wednesday",
        "thursday",
        "friday",
        "saturday",
        "sunday",
    ]


    hours, mins = start_time.split(":")
    mins, period = mins.split(" ")
    end_time_hrs, end_time_mins = end_time.split(":")
    
    days_later = 0
    hours = int(hours)  # start time  hours
    mins = int(mins)  # start time  minutes
    end_time_hrs = int(end_time_hrs)  # end time hours
    end_time_mins = int(end_time_mins)  # end time minutes
    period = period.strip().lower()  # AM or PM

    # Combine start time and end time hrs and minutes
    total_mins = mins + end_time_mins
    total_hours = hours + end_time_hrs

     # Shift minutes to hour if minutes is over 60
    if total_mins >= 60:
        total_hours += int(total_mins / 60)
        total_mins = int(total_mins % 60)

    if end_time_hrs or end_time_mins:
        # If `PM`, flip period to `AM` if hours over 12
        if period == "pm" and total_hours > 12 :
            # if hours over 24hr then add  days
            if total_hours % 24 >= 1.0:
                days_later += 1
            
            if total_hours >= 12:
                hours_left = total_hours / 24
                days_later += int(hours_left)
                # e.g: 54hr / 24 = 2.25 days <-- append 2 days
                # e.g.: 36hr / 24 = 1.5 days <-- append 1 days
            
            temp_hours = total_hours
            while True:
            # Constantly reverse period until
            # total_hours are less than half a day
                if temp_hours < 12:
                    break
                if period == "am":
                    period = "pm"
                else:
                    period = "am"
                temp_hours -= 12
    
    remaining_hours = int(total_hours % 12) or hours + 1
    remaining_mins = int(total_mins % 60)

     # Format the results
    results = f"{remaining_hours}:{remaining_mins:02} {period.upper()}"
    if day:  # add the day of the week
        day = day.strip().lower()
        selected_day = int((WEEK_DAYS.index(day) + days_later) % 7)
        current_day = WEEK_DAYS[selected_day]
        results += f", {current_day.title()} {get_days_later(days_later)}"

    else:  # add the days later
        results = " ".join((results, get_days_later(days_later)))

    return print("result: " + results.strip())
if __name__=="__main__":
       add_time(x,y,z)




