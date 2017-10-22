.class Lcom/acloud/AndroidTimer$2;
.super Landroid/os/Handler;
.source "AndroidTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/AndroidTimer;->init(Lcom/acloud/AndroidTimer$TimerCallback;Z)V
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
    iput-object p1, p0, Lcom/acloud/AndroidTimer$2;->this$0:Lcom/acloud/AndroidTimer;

    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/acloud/AndroidTimer$2;->this$0:Lcom/acloud/AndroidTimer;

    # getter for: Lcom/acloud/AndroidTimer;->mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;
    invoke-static {v0}, Lcom/acloud/AndroidTimer;->access$2(Lcom/acloud/AndroidTimer;)Lcom/acloud/AndroidTimer$TimerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/acloud/AndroidTimer$2;->this$0:Lcom/acloud/AndroidTimer;

    # getter for: Lcom/acloud/AndroidTimer;->mTimerCallback:Lcom/acloud/AndroidTimer$TimerCallback;
    invoke-static {v0}, Lcom/acloud/AndroidTimer;->access$2(Lcom/acloud/AndroidTimer;)Lcom/acloud/AndroidTimer$TimerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/AndroidTimer$TimerCallback;->timeout()V

    .line 96
    :cond_0
    return-void
.end method
