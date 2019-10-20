import schedule
import time
from jobs.reqs import Github

def job():
    print("I'm working...")
    ghr = Github()
    ghr.retrieve_updates()
    schedule.every().hour.at("00:01").do(job)
    schedule.every().minute.at("00:01").do(job)

while True:
    schedule.run_pending()
    time.sleep(1)