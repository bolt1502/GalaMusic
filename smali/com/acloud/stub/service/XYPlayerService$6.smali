.class Lcom/acloud/stub/service/XYPlayerService$6;
.super Ljava/lang/Object;
.source "XYPlayerService.java"

# interfaces
.implements Lcom/acloud/AndroidTimer$TimerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/service/XYPlayerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/service/XYPlayerService;


# direct methods
.method constructor <init>(Lcom/acloud/stub/service/XYPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$6;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public timeout()V
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$6;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCallback:Lcom/acloud/stub/service/aidl/IPlayServiceCallback;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$19(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/stub/service/aidl/IPlayServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$6;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$6;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mCurrectTime:J
    invoke-static {v2}, Lcom/acloud/stub/service/XYPlayerService;->access$23(Lcom/acloud/stub/service/XYPlayerService;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/acloud/stub/service/XYPlayerService$6;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mTotalTime:J
    invoke-static {v2}, Lcom/acloud/stub/service/XYPlayerService;->access$24(Lcom/acloud/stub/service/XYPlayerService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/acloud/stub/utils/MusicConfigData;->setMusicMemmoryData(Landroid/content/Context;Ljava/lang/String;)V

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$6;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mMemmoryTimer:Lcom/acloud/AndroidTimer;
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$25(Lcom/acloud/stub/service/XYPlayerService;)Lcom/acloud/AndroidTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acloud/AndroidTimer;->stop()V

    goto :goto_0
.end method
