.class Lcom/acloud/AndroidTimer$1;
.super Ljava/lang/Object;
.source "AndroidTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/AndroidTimer;-><init>(Lcom/acloud/AndroidTimer$TimerCallback;ZZ)V
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
    iput-object p1, p0, Lcom/acloud/AndroidTimer$1;->this$0:Lcom/acloud/AndroidTimer;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/acloud/AndroidTimer$1;->this$0:Lcom/acloud/AndroidTimer;

    # getter for: Lcom/acloud/AndroidTimer;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/acloud/AndroidTimer;->access$0(Lcom/acloud/AndroidTimer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/acloud/AndroidTimer$1;->this$0:Lcom/acloud/AndroidTimer;

    # getter for: Lcom/acloud/AndroidTimer;->mTimerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/acloud/AndroidTimer;->access$1(Lcom/acloud/AndroidTimer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    iget-object v0, p0, Lcom/acloud/AndroidTimer$1;->this$0:Lcom/acloud/AndroidTimer;

    # getter for: Lcom/acloud/AndroidTimer;->mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;
    invoke-static {v0}, Lcom/acloud/AndroidTimer;->access$2(Lcom/acloud/AndroidTimer;)Lcom/acloud/AndroidTimer$TimerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/acloud/AndroidTimer$1;->this$0:Lcom/acloud/AndroidTimer;

    # getter for: Lcom/acloud/AndroidTimer;->mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;
    invoke-static {v0}, Lcom/acloud/AndroidTimer;->access$2(Lcom/acloud/AndroidTimer;)Lcom/acloud/AndroidTimer$TimerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/AndroidTimer$TimerCallback;->timeout()V

    .line 64
    :cond_0
    return-void
.end method
