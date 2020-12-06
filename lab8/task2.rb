thread_working_time = 2

thread1 = Thread.new {
  puts ("Thread 1 started at #{Time.now}") 
  sleep(thread_working_time)
  puts ("Thread 1 finished at #{Time.now}")
}

thread1.join()
sleep(thread_working_time / 2)

thread2 = Thread.new {
  puts ("Thread 2 started at #{Time.now}") 
  sleep(thread_working_time)
  puts ("Thread 2 finished at #{Time.now}")
}
thread2.join()
