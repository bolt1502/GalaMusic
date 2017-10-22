.class public Lcom/acloud/AndroidTimer;
.super Ljava/lang/Object;
.source "AndroidTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/AndroidTimer$TimerCallback;
    }
.end annotation


# static fields
.field private static final TIMER_MESSAGE_HANDLE:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mIsNeedHandler:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;

.field private mTimerHandler:Landroid/os/Handler;

.field private mTimerRunnable:Ljava/lang/Runnable;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lcom/acloud/AndroidTimer$TimerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/acloud/AndroidTimer$TimerCallback;

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/acloud/AndroidTimer;-><init>(Lcom/acloud/AndroidTimer$TimerCallback;Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/acloud/AndroidTimer$TimerCallback;Z)V
    .locals 2
    .param p1, "callback"    # Lcom/acloud/AndroidTimer$TimerCallback;
    .param p2, "isUserHandler"    # Z

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;

    .line 30
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mTimer:Ljava/util/Timer;

    .line 31
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 32
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mHandler:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/AndroidTimer;->mIsNeedHandler:Z

    .line 36
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mTimerRunnable:Ljava/lang/Runnable;

    .line 37
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mTimerHandler:Landroid/os/Handler;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/AndroidTimer;->mIsActive:Z

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/acloud/AndroidTimer;->init(Lcom/acloud/AndroidTimer$TimerCallback;Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/acloud/AndroidTimer$TimerCallback;ZZ)V
    .locals 2
    .param p1, "callback"    # Lcom/acloud/AndroidTimer$TimerCallback;
    .param p2, "isUserHandler"    # Z
    .param p3, "isExecuteOnce"    # Z

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;

    .line 30
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mTimer:Ljava/util/Timer;

    .line 31
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 32
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mHandler:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/AndroidTimer;->mIsNeedHandler:Z

    .line 36
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mTimerRunnable:Ljava/lang/Runnable;

    .line 37
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mTimerHandler:Landroid/os/Handler;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/AndroidTimer;->mIsActive:Z

    .line 51
    if-eqz p3, :cond_0

    .line 52
    iput-object p1, p0, Lcom/acloud/AndroidTimer;->mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;

    .line 55
    new-instance v0, Lcom/acloud/AndroidTimer$1;

    invoke-direct {v0, p0}, Lcom/acloud/AndroidTimer$1;-><init>(Lcom/acloud/AndroidTimer;)V

    iput-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerRunnable:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerHandler:Landroid/os/Handler;

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/acloud/AndroidTimer;->init(Lcom/acloud/AndroidTimer$TimerCallback;Z)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/acloud/AndroidTimer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/AndroidTimer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/acloud/AndroidTimer;)Lcom/acloud/AndroidTimer$TimerCallback;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/acloud/AndroidTimer;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/acloud/AndroidTimer;->mIsNeedHandler:Z

    return v0
.end method

.method static synthetic access$4(Lcom/acloud/AndroidTimer;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/acloud/AndroidTimer;->postHandler()V

    return-void
.end method

.method private init(Lcom/acloud/AndroidTimer$TimerCallback;Z)V
    .locals 1
    .param p1, "callback"    # Lcom/acloud/AndroidTimer$TimerCallback;
    .param p2, "isUserHandler"    # Z

    .prologue
    .line 82
    iput-object p1, p0, Lcom/acloud/AndroidTimer;->mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;

    .line 84
    iput-boolean p2, p0, Lcom/acloud/AndroidTimer;->mIsNeedHandler:Z

    .line 86
    if-eqz p2, :cond_0

    .line 87
    new-instance v0, Lcom/acloud/AndroidTimer$2;

    invoke-direct {v0, p0}, Lcom/acloud/AndroidTimer$2;-><init>(Lcom/acloud/AndroidTimer;)V

    iput-object v0, p0, Lcom/acloud/AndroidTimer;->mHandler:Landroid/os/Handler;

    .line 99
    :cond_0
    return-void
.end method

.method private initTimerTask()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/acloud/AndroidTimer$3;

    invoke-direct {v0, p0}, Lcom/acloud/AndroidTimer$3;-><init>(Lcom/acloud/AndroidTimer;)V

    iput-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 117
    return-void
.end method

.method private postHandler()V
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/acloud/AndroidTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 181
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 182
    iget-object v1, p0, Lcom/acloud/AndroidTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/acloud/AndroidTimer;->mIsActive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start(I)V
    .locals 6
    .param p1, "nMesc"    # I

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/acloud/AndroidTimer;->stop()V

    .line 127
    if-gtz p1, :cond_2

    .line 128
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/acloud/AndroidTimer;->postHandler()V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;

    invoke-interface {v0}, Lcom/acloud/AndroidTimer$TimerCallback;->timeout()V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/AndroidTimer;->mIsActive:Z

    .line 141
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/acloud/AndroidTimer;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/acloud/AndroidTimer;->mTimerRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 144
    :cond_3
    invoke-direct {p0}, Lcom/acloud/AndroidTimer;->initTimerTask()V

    .line 146
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/acloud/AndroidTimer;->mTimer:Ljava/util/Timer;

    .line 147
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/acloud/AndroidTimer;->mTimerTask:Ljava/util/TimerTask;

    int-to-long v2, p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 157
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mTimer:Ljava/util/Timer;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 162
    iput-object v1, p0, Lcom/acloud/AndroidTimer;->mTimerTask:Ljava/util/TimerTask;

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/AndroidTimer;->mIsActive:Z

    .line 167
    iget-object v0, p0, Lcom/acloud/AndroidTimer;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/acloud/AndroidTimer;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    :cond_2
    return-void
.end method
