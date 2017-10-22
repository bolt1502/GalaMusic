.class Lcom/acloud/network/http/HttpTask$1;
.super Landroid/os/Handler;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/network/http/HttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/network/http/HttpTask;


# direct methods
.method constructor <init>(Lcom/acloud/network/http/HttpTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/network/http/HttpTask$1;->this$0:Lcom/acloud/network/http/HttpTask;

    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 78
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/acloud/network/http/HttpTask$StHttpContent;

    .line 68
    .local v0, "stHttpContent":Lcom/acloud/network/http/HttpTask$StHttpContent;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/acloud/network/http/HttpTask$1;->this$0:Lcom/acloud/network/http/HttpTask;

    # getter for: Lcom/acloud/network/http/HttpTask;->mHttpResultCallback:Lcom/acloud/network/http/HttpTask$HttpResultCallback;
    invoke-static {v1}, Lcom/acloud/network/http/HttpTask;->access$2(Lcom/acloud/network/http/HttpTask;)Lcom/acloud/network/http/HttpTask$HttpResultCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/acloud/network/http/HttpTask$1;->this$0:Lcom/acloud/network/http/HttpTask;

    # getter for: Lcom/acloud/network/http/HttpTask;->mHttpResultCallback:Lcom/acloud/network/http/HttpTask$HttpResultCallback;
    invoke-static {v1}, Lcom/acloud/network/http/HttpTask;->access$2(Lcom/acloud/network/http/HttpTask;)Lcom/acloud/network/http/HttpTask$HttpResultCallback;

    move-result-object v1

    iget-object v2, v0, Lcom/acloud/network/http/HttpTask$StHttpContent;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/acloud/network/http/HttpTask$StHttpContent;->result:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/acloud/network/http/HttpTask$HttpResultCallback;->sendHttpResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
