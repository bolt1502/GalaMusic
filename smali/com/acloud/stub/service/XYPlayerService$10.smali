.class Lcom/acloud/stub/service/XYPlayerService$10;
.super Ljava/lang/Object;
.source "XYPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/service/XYPlayerService;->initVtmPlayer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/service/XYPlayerService;

.field private final synthetic val$isPlay:Z


# direct methods
.method constructor <init>(Lcom/acloud/stub/service/XYPlayerService;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$10;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    iput-boolean p2, p0, Lcom/acloud/stub/service/XYPlayerService$10;->val$isPlay:Z

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 960
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$10;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v1}, Lcom/acloud/stub/service/XYPlayerService;->init()V

    .line 962
    # getter for: Lcom/acloud/stub/service/XYPlayerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/acloud/stub/service/XYPlayerService;->access$12()Ljava/lang/String;

    move-result-object v1

    const-string v2, "player init success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-boolean v1, p0, Lcom/acloud/stub/service/XYPlayerService$10;->val$isPlay:Z

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$10;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$27(Lcom/acloud/stub/service/XYPlayerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 966
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4009

    iput v1, v0, Landroid/os/Message;->what:I

    .line 967
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$10;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$27(Lcom/acloud/stub/service/XYPlayerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 969
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
