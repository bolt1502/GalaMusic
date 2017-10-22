.class Lcom/acloud/stub/service/XYPlayerService$1;
.super Landroid/os/Handler;
.source "XYPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/service/XYPlayerService;
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
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$1;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 171
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 175
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x4008

    if-ne v1, v4, :cond_1

    .line 176
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$1;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->setProgress()I
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$0(Lcom/acloud/stub/service/XYPlayerService;)I

    move-result v1

    int-to-long v2, v1

    .line 177
    .local v2, "pos":J
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$1;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const-wide/16 v4, 0x3e8

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->progressRefresh(J)V
    invoke-static {v1, v4, v5}, Lcom/acloud/stub/service/XYPlayerService;->access$1(Lcom/acloud/stub/service/XYPlayerService;J)V

    .line 185
    .end local v2    # "pos":J
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x4009

    if-ne v1, v4, :cond_0

    .line 180
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$1;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/acloud/stub/service/XYPlayerService;->access$2(Lcom/acloud/stub/service/XYPlayerService;Z)V

    .line 182
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$1;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # getter for: Lcom/acloud/stub/service/XYPlayerService;->mPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/acloud/stub/service/XYPlayerService;->access$3(Lcom/acloud/stub/service/XYPlayerService;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/acloud/stub/service/XYPlayerService$1;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    const/4 v4, 0x1

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->playMusic(Ljava/lang/String;I)V
    invoke-static {v1, v0, v4}, Lcom/acloud/stub/service/XYPlayerService;->access$4(Lcom/acloud/stub/service/XYPlayerService;Ljava/lang/String;I)V

    goto :goto_0
.end method
