# View the information of CURRENT jobs
squeue --help
squeue -u username -l # ! 
# JOBID      PARTITION     NAME        USER      STATE       TIME   TIME_LIMI    NODES  NODELIST(REASON)
# 53370733_9  panda      scRNA_seq   your_name  RUNNING       6:30   UNLIMITED      1    node212

squeue -u username --states=COMPLETED # !
squeue -u username --states=RUNNING # !
squeue -u username --states=PENDING # !
squeue -u username --states=SUSPENDED
squeue -u username -p=panda

# View the information of PAST jobs
sacct # ! 
#       JobID    JobName  Partition    Account  AllocCPUS      State ExitCode
# ------------ ---------- ---------- ---------- ---------- ---------- --------
# 53370733_100 scRNA_seq   panda       mdhpc         16       COMPLETED      0:0
sacct | tail -n 3
sacct -j 11114265
# JobID    JobName  Partition    Account  AllocCPUS      State ExitCode
sacct -r panda
scontrol show job 53362163
# JobId | JobName | UserId | GroupId | MCS_label | Priority | Nice | Account | QOS | JobState | Reason | Dependency | Requeue 
# Restarts | BatchFlag | Reboot | ExitCode | RunTime | TimeLimit | TimeMin | SubmitTime | EligibleTime | StartTime | EndTime | Deadline
# PreemptTime | SuspendTime | SecsPreSuspend | Partition | AllocNode:Sid | ReqNodeList | ExcNodeList | NodeList | NumNodes | NumCPUs | NumTasks
# CPUs/Task | ReqB:S:C:T | TRES | node | Socks/Node | NtasksPerN:B:S:C | CoreSpec | MinCPUsNode | MinMemoryNode | MinTmpDiskNode | Features
# DelayBoot | Gres | Reservation | OverSubscribe | Contiguous | Licenses | Network | Command | WorkDir | StdErr | StdIn | StdOut | Power

# Cancel/pause/resume jobs
scancel 11114268 # !
scancel 53367475 53367476 
scontrol hold 11114269
scontrol release 11114269
