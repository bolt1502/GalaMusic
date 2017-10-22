.class Lcom/acloud/jni/HttpJni$1;
.super Landroid/os/Handler;
.source "HttpJni.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/jni/HttpJni;->initRequest(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/jni/HttpJni;


# direct methods
.method constructor <init>(Lcom/acloud/jni/HttpJni;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/jni/HttpJni$1;->this$0:Lcom/acloud/jni/HttpJni;

    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$1;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mHttpDownloadCallback:Lcom/acloud/jni/HttpJniCallback;
    invoke-static {v0}, Lcom/acloud/jni/HttpJni;->access$0(Lcom/acloud/jni/HttpJni;)Lcom/acloud/jni/HttpJniCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/acloud/jni/HttpJni$1;->this$0:Lcom/acloud/jni/HttpJni;

    # getter for: Lcom/acloud/jni/HttpJni;->mHttpDownloadCallback:Lcom/acloud/jni/HttpJniCallback;
    invoke-static {v0}, Lcom/acloud/jni/HttpJni;->access$0(Lcom/acloud/jni/HttpJni;)Lcom/acloud/jni/HttpJniCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/acloud/jni/HttpJniCallback;->initFinish()V

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 82
    return-void
.end method
