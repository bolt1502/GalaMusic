.class public Lio/vov/vitamio/NativeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NativeReceiver.java"


# static fields
.field private static final ACTION_POST_MSG:Ljava/lang/String; = "io.vov.vitamio.action.POST"

.field private static final EXTRA_MSG:Ljava/lang/String; = "io.vov.vitamio.extra.MSG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "io.vov.vitamio.action.POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "io.vov.vitamio.extra.MSG"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "RECEIVED %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lio/vov/utils/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method
