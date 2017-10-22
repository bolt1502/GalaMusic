.class Lcom/acloud/network/socket/TcpSocket$1;
.super Landroid/os/Handler;
.source "TcpSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/network/socket/TcpSocket;->initRunnabler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/network/socket/TcpSocket;


# direct methods
.method constructor <init>(Lcom/acloud/network/socket/TcpSocket;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/network/socket/TcpSocket$1;->this$0:Lcom/acloud/network/socket/TcpSocket;

    .line 208
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 223
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/acloud/network/socket/TcpSocket$1;->this$0:Lcom/acloud/network/socket/TcpSocket;

    # getter for: Lcom/acloud/network/socket/TcpSocket;->mTcpSocketCallback:Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;
    invoke-static {v0}, Lcom/acloud/network/socket/TcpSocket;->access$0(Lcom/acloud/network/socket/TcpSocket;)Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/acloud/network/socket/TcpSocket$1;->this$0:Lcom/acloud/network/socket/TcpSocket;

    # getter for: Lcom/acloud/network/socket/TcpSocket;->mTcpSocketCallback:Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;
    invoke-static {v0}, Lcom/acloud/network/socket/TcpSocket;->access$0(Lcom/acloud/network/socket/TcpSocket;)Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/acloud/network/socket/TcpSocket$TcpSocketCallback;->readyRead(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
