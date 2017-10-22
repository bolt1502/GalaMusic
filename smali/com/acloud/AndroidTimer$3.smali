.class Lcom/acloud/AndroidTimer$3;
.super Ljava/util/TimerTask;
.source "AndroidTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/AndroidTimer;->initTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/AndroidTimer;


# direct methods
.method constructor <init>(Lcom/acloud/AndroidTimer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/AndroidTimer$3;->this$0:Lcom/acloud/AndroidTimer;

    .line 102
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/acloud/AndroidTimer$3;->this$0:Lcom/acloud/AndroidTimer;

    # getter for: Lcom/acloud/AndroidTimer;->mIsNeedHandler:Z
    invoke-static {v0}, Lcom/acloud/AndroidTimer;->access$3(Lcom/acloud/AndroidTimer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/acloud/AndroidTimer$3;->this$0:Lcom/acloud/AndroidTimer;

    # invokes: Lcom/acloud/AndroidTimer;->postHandler()V
    invoke-static {v0}, Lcom/acloud/AndroidTimer;->access$4(Lcom/acloud/AndroidTimer;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/acloud/AndroidTimer$3;->this$0:Lcom/acloud/AndroidTimer;

    # getter for: Lcom/acloud/AndroidTimer;->mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;
    invoke-static {v0}, Lcom/acloud/AndroidTimer;->access$2(Lcom/acloud/AndroidTimer;)Lcom/acloud/AndroidTimer$TimerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/acloud/AndroidTimer$3;->this$0:Lcom/acloud/AndroidTimer;

    # getter for: Lcom/acloud/AndroidTimer;->mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;
    invoke-static {v0}, Lcom/acloud/AndroidTimer;->access$2(Lcom/acloud/AndroidTimer;)Lcom/acloud/AndroidTimer$TimerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/AndroidTimer$TimerCallback;->timeout()V

    goto :goto_0
.end method
